# Quickstart: Zero → GNOME App → Flatpak

For humans and agents. Pick a lane, follow it top to bottom; every lane ends
with the app running as a Flatpak. Details live in three skills you'll dip
into — don't read them all up front:

- **Scaffold** (UI + schema + desktop file): [skills/quick-start/SKILL.md](skills/quick-start/SKILL.md)
- **Your language's files** (meson/cargo + manifest): [skills/language-quickstart/SKILL.md](skills/language-quickstart/SKILL.md)
- **Flatpak & Flathub**: [skills/flatpak-packaging/SKILL.md](skills/flatpak-packaging/SKILL.md)

## Step 0 — Everyone: pick a name, install the toolchain

```bash
# Fedora
sudo dnf install flatpak flatpak-builder meson blueprint-compiler gtk4-devel libadwaita-devel
# Ubuntu/Debian
sudo apt install flatpak flatpak-builder meson blueprint-compiler libgtk-4-dev libadwaita-1-dev
# Everyone: the GNOME runtime the Flatpak will use
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.gnome.Platform//48 org.gnome.Sdk//48
```

Decide your **app ID** now — it names everything: `org.example.MyApp`, or
`io.github.<user>.<repo>` if you'll publish via GitHub. Then create the
shared scaffold from [skills/quick-start/SKILL.md](skills/quick-start/SKILL.md):
`window.blp`, `preferences.blp`, the gschema, the desktop entry, and
`data/` layout are identical in every lane.

Humans who prefer an IDE: **GNOME Builder** (`flatpak install org.gnome.Builder`)
has New Project templates for every lane below and builds Flatpaks with one
click — you can follow this guide inside it.

## Lane: Python

Best for: fast iteration, scripting-sized apps. No compile step.

1. Copy the Python sections of [language-quickstart](skills/language-quickstart/SKILL.md)
   (§ *Python + PyGObject*): root `meson.build`, `src/meson.build`, `src/main.py`.
2. Run it directly while iterating:
   ```bash
   meson setup build && meson compile -C build
   meson devenv -C build python3 ../src/main.py   # or: ninja -C build run if defined
   ```
3. Flatpak: copy the *Flatpak manifest (Python)* from the same skill into
   `org.example.MyApp.json`, then:
   ```bash
   flatpak-builder --user --install --force-clean build-flatpak org.example.MyApp.json
   flatpak run org.example.MyApp
   ```

## Lane: Rust

Best for: production apps, performance, type safety. Loupe's stack.

1. Copy the Rust sections of [language-quickstart](skills/language-quickstart/SKILL.md)
   (§ *Rust + gtk4-rs*): `Cargo.toml`, `build.rs` (compiles `.blp`),
   `src/main.rs`, `src/window.rs`.
2. Iterate natively — fastest loop:
   ```bash
   cargo run
   ```
3. Flatpak: copy *Flatpak manifest (Rust)* (uses the rust-stable SDK extension):
   ```bash
   flatpak install -y flathub org.freedesktop.Sdk.Extension.rust-stable//24.08
   flatpak-builder --user --install --force-clean build-flatpak org.example.MyApp.json
   flatpak run org.example.MyApp
   ```
   For Flathub (offline builds), generate pinned crate sources:
   `flatpak-cargo-generator Cargo.lock -o cargo-sources.json`.

## Lane: C

Best for: matching upstream GNOME core apps; best docs and examples.

1. Copy the C sections of [language-quickstart](skills/language-quickstart/SKILL.md)
   (§ *C + GTK4 + libadwaita*): `meson.build`, `src/meson.build`,
   `src/main.c`, `src/window.{c,h}`.
2. Iterate:
   ```bash
   meson setup build && meson compile -C build && ./build/src/myapp
   ```
3. Flatpak: copy *Flatpak manifest (C)*, then the same
   `flatpak-builder --user --install --force-clean …` as above.

## Lane: JavaScript (GJS)

Best for: web developers; GNOME Weather's stack. No compile step.

1. Copy the GJS sections of [language-quickstart](skills/language-quickstart/SKILL.md)
   (§ *JavaScript + GJS*): meson files + `src/main.js`.
2. Iterate:
   ```bash
   meson setup build && meson compile -C build
   gjs -m src/main.js        # quick runs; resources need the meson build
   ```
3. Flatpak: copy *Flatpak manifest (GJS)*, then the same `flatpak-builder` loop.

(Vala lane: same shape — see § *Vala* in language-quickstart.)

## Everyone: verify before calling it done

```bash
# From a gnome-gui-spec checkout — automated HIG checks:
scripts/lint-app.sh /path/to/your-app
# Metainfo (needed for Flathub, About dialog, software centers):
appstreamcli validate data/*.metainfo.xml*
```

- [ ] App launches via `flatpak run <app-id>`
- [ ] Window resizes down to 360px without breakage ([skills/adaptive-layout](skills/adaptive-layout/SKILL.md))
- [ ] Ctrl+comma opens Preferences, Ctrl+? shortcuts, About in menu
- [ ] `lint-app.sh` is clean; deeper pass: [skills/hig-audit/SKILL.md](skills/hig-audit/SKILL.md)

## Everyone: CI from day one

Copy the workflows from [skills/github-actions-ci/SKILL.md](skills/github-actions-ci/SKILL.md)
(distilled from a production GNOME suite):

- `ci.yml` — build + test on every push (Ubuntu 24.04 ships GTK 4.14/libadwaita 1.5)
- `flatpak.yml` — prove the manifest builds on PRs; attach `.flatpak` bundles to tagged releases
- optional GUI smoke tests under Xvfb/AT-SPI, and OCI publishing to GHCR

## Ship it

Flathub submission checklist: [skills/flatpak-packaging/SKILL.md](skills/flatpak-packaging/SKILL.md)
— metainfo + screenshots, icon, pinned sources, minimal permissions, PR
against `flathub/flathub`. Or distribute the CI-built `.flatpak` bundles /
GHCR OCI images directly.
