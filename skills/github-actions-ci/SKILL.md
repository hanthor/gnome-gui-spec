---
name: gnome-github-actions-ci
description: GitHub Actions CI/CD for GNOME apps — build+test with GTK4/libadwaita on runners, Flatpak builds via flatpak-github-actions, attaching .flatpak bundles to releases, optional OCI publishing to GHCR, and headless GUI smoke tests with Xvfb/AT-SPI. Use when setting up CI, release automation, or GUI testing for a GTK app.
---

# Skill: GitHub Actions for GNOME Apps

Patterns distilled from a production suite
([tuna-os/gtk-office-suite](https://github.com/tuna-os/gtk-office-suite)
`.github/workflows/`) — check there for complete living examples.

## 1. Build + test on every push (`ci.yml`)

Ubuntu 24.04 has GTK 4.14 + libadwaita 1.5 in apt — no container needed for
compile/unit tests.

```yaml
name: CI
on: [push, pull_request]
concurrency:            # newer commits supersede queued CI for the same ref
  group: ci-${{ github.ref }}
  cancel-in-progress: true

jobs:
  test:
    runs-on: ubuntu-24.04
    steps:
      - uses: actions/checkout@v4
      - name: Install GTK4 + libadwaita dev libraries
        run: |
          sudo apt-get update -qq
          sudo apt-get install -y -qq libgtk-4-dev libadwaita-1-dev
      # Rust lane:
      - uses: dtolnay/rust-toolchain@stable
      - uses: Swatinem/rust-cache@v2
      - run: cargo clippy --workspace -- -D warnings
      - run: cargo test --workspace
      # Meson lanes (Python/C/Vala/GJS) instead:
      # - run: sudo apt-get install -y -qq meson blueprint-compiler
      # - run: meson setup build && meson compile -C build && meson test -C build
```

Tip from the reference repo: keep pure-logic code in core crates/modules
with no GTK dependency — they test fast anywhere and can gate with
`-D warnings` while UI crates stay lenient.

## 2. Flatpak build (PRs) and publish (tags)

Use the official action inside the Flathub builder container:

```yaml
name: Flatpak
on:
  push: { tags: ['v*'] }
  pull_request:          # build-only on PRs proves the manifest stays green
  workflow_dispatch:
permissions: { contents: write }

jobs:
  flatpak:
    runs-on: ubuntu-latest
    container:
      image: ghcr.io/flathub-infra/flatpak-github-actions:gnome-48
      options: --privileged
    steps:
      - uses: actions/checkout@v4
      - uses: flatpak/flatpak-github-actions/flatpak-builder@v6
        with:
          manifest-path: org.example.MyApp.json
          cache-key: flatpak-${{ github.sha }}
          bundle: myapp.flatpak
      - name: Attach bundle to release
        if: startsWith(github.ref, 'refs/tags/')
        env: { GH_TOKEN: ${{ secrets.GITHUB_TOKEN }} }
        run: gh release upload "${GITHUB_REF_NAME}" myapp.flatpak --clobber --repo "${GITHUB_REPOSITORY}"
```

- Container tag = GNOME runtime version in your manifest (`gnome-48`, `gnome-50`, …).
- Users install a bundle with `flatpak install myapp.flatpak`.
- Matrix over apps if the repo ships several (see reference repo's
  `publish-flatpak.yml`).

### Optional: publish OCI images to GHCR (tuna-os convention)

The reference repo additionally exports each Flatpak as an OCI image, pushes
to GHCR with skopeo, and updates a central Flatpak index so
`flatpak install <remote> <app-id>` serves current builds:

```yaml
- run: flatpak build-bundle --oci --arch=x86_64 repo app.oci org.example.MyApp
- run: |
    echo "${{ secrets.GITHUB_TOKEN }}" | skopeo login ghcr.io -u "${{ github.actor }}" --password-stdin
    skopeo copy oci:app.oci docker://ghcr.io/<org>/<app>:latest
```

Serialize index updates (`max-parallel: 1`) when a matrix races a shared git
push. For public distribution, Flathub
(`skills/flatpak-packaging/SKILL.md`) is the normal path instead.

## 3. Headless GUI smoke tests (`gui-tests.yml`)

Launch the real app under Xvfb and drive it over AT-SPI (dogtail). These
GATE — if they fail, the app doesn't launch or basic input is broken:

```yaml
  smoke:
    runs-on: ubuntu-24.04
    steps:
      - uses: actions/checkout@v4
      - run: |
          sudo apt-get update -qq
          sudo apt-get install -y -qq libgtk-4-dev libadwaita-1-dev \
            xvfb dbus at-spi2-core python3-dogtail python3-pytest
      - run: cargo build --bin myapp     # or meson compile
      - run: xvfb-run -a dbus-run-session -- pytest tests/gui/test_smoke.py
```

Inside the test: enable a11y (`GTK_A11Y=atspi`), launch the binary, assert
the window appears in the AT-SPI tree, click a button, type text, screenshot
on failure. GTK apps need `GSETTINGS_SCHEMA_DIR` pointed at compiled schemas.

Optional layer from the reference repo: a scheduled, **non-gating**
(`continue-on-error: true`) VLM visual audit that screenshots each app and
has a vision model judge HIG compliance — informs, never blocks.

## 4. Lint gate with this repo

```yaml
      - uses: actions/checkout@v4
        with: { repository: hanthor/gnome-gui-spec, path: gnome-gui-spec }
      - run: gnome-gui-spec/scripts/lint-app.sh .
```

Related: `skills/flatpak-packaging/SKILL.md` (manifests, Flathub),
`skills/hig-audit/SKILL.md` (the deep audit CI can't automate).
