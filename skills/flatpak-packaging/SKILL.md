---
name: gnome-flatpak-packaging
description: Package a GNOME app as a Flatpak — manifest for the GNOME runtime, sandbox permissions, build/run/test loop, and Flathub submission checklist. Use when packaging, distributing, or preparing a GNOME app for Flathub.
---

# Skill: Flatpak Packaging

## Manifest (org.example.MyApp.json, repo root)

```json
{
  "id": "org.example.MyApp",
  "runtime": "org.gnome.Platform",
  "runtime-version": "48",
  "sdk": "org.gnome.Sdk",
  "command": "myapp",
  "finish-args": [
    "--share=ipc",
    "--socket=fallback-x11",
    "--socket=wayland",
    "--device=dri"
  ],
  "cleanup": ["/include", "/lib/pkgconfig", "*.la", "*.a"],
  "modules": [
    {
      "name": "blueprint-compiler",
      "buildsystem": "meson",
      "cleanup": ["*"],
      "sources": [{
        "type": "git",
        "url": "https://gitlab.gnome.org/GNOME/blueprint-compiler.git",
        "tag": "v0.18.0"
      }]
    },
    {
      "name": "myapp",
      "buildsystem": "meson",
      "sources": [{ "type": "dir", "path": "." }]
    }
  ]
}
```

Rust apps add `"build-options": {"append-path": "/usr/lib/sdk/rust-stable/bin"}`
and sdk-extension `org.freedesktop.Sdk.Extension.rust-stable`; use
`flatpak-cargo-generator` for offline crate sources on Flathub.

## Permissions — request the minimum

| Need | finish-arg |
|------|-----------|
| GUI (always) | `--share=ipc --socket=fallback-x11 --socket=wayland --device=dri` |
| Network | `--share=network` |
| User files (avoid — prefer FileChooser portal, which needs nothing) | `--filesystem=home` (Flathub will question it) |
| Specific dir | `--filesystem=xdg-music:ro` |
| Sound | `--socket=pulseaudio` |
| Notifications, opening URIs, screenshots… | nothing — use portals |

Settings persist automatically (GSettings works in the sandbox via dconf portal).

## Build & run loop

```bash
flatpak install -y flathub org.gnome.Platform//48 org.gnome.Sdk//48
flatpak-builder --user --install --force-clean build-dir org.example.MyApp.json
flatpak run org.example.MyApp
# Poke inside the sandbox:
flatpak run --command=sh --devel org.example.MyApp
```

## Flathub submission checklist

- [ ] App ID matches a domain you control (or `io.github.<user>.<repo>`)
- [ ] Metainfo passes `appstreamcli validate` and `flatpak run --command=flatpak-builder-lint org.flatpak.Builder manifest <file>`
- [ ] Screenshots (16:9-ish, light theme) + `<content_rating>` in metainfo
- [ ] Icon: SVG at 128px nominal, plus symbolic
- [ ] Desktop file: `Exec`, `Icon=<app-id>`, `Categories`, `StartupNotify=true`
- [ ] No broad `--filesystem` unless genuinely required (justify in PR)
- [ ] Sources pinned (tags/commits, not branches)
- [ ] Fork flathub/flathub, add manifest, open PR against `new-pr` branch

Related: `skills/language-quickstart/SKILL.md` (per-language manifests),
`skills/about-dialog/SKILL.md` (metainfo).
