# GNOME GUI Spec Project

Systematic audit of GNOME official/certified apps to compile a comprehensive GUI specification and authoring guide for agents creating GNOME-compliant applications.

## Status

| Category | Total | Audited | Remaining |
|----------|-------|---------|-----------|
| Core Apps | 27 | 9 | 18 |
| Circle Apps | ~73 | 0 | ~73 |
| Dev Tools | 6 | 0 | 6 |

## Deliverables

- **[GNOME-GUI-SPEC.md](GNOME-GUI-SPEC.md)** — The comprehensive specification (v0.2.0)
  - Design principles, window architecture, navigation patterns
  - Container patterns, control patterns, feedback patterns
  - UI styling, adaptive design, settings architecture
  - Framework tips (Rust, Python, C, Vala, JavaScript/GJS, Blueprint)
  - App templates and anti-pattern checklists

- **[audits/](audits/)** — Per-app GUI audit reports
- **[hig/](hig/)** — Mirrored GNOME Human Interface Guidelines (55 pages)
- **[sources/](sources/)** — Cloned app repositories

## Audited Apps

| # | App | ID | Language | Key Patterns |
|---|-----|----|----------|--------------|
| 1 | Settings | org.gnome.Settings | C | PreferencesPage, BreakpointBin, ViewSwitcher, custom rows |
| 2 | Text Editor | org.gnome.TextEditor | C | MultiLayoutView, TabView, OverlaySplitView, BottomSheet |
| 3 | Files | org.gnome.Nautilus | C | PreferencesDialog, search-enabled, CheckButton radio groups |
| 4 | Calculator | org.gnome.Calculator | Vala | Menu mode switching, NavigationPage sub-pages, StringList |
| 5 | Clocks | org.gnome.clocks | C | NavigationView+ViewStack, breakpoints, Toast |
| 6 | Weather | org.gnome.Weather | GJS | StatusPage, Stack transitions, GtkRevealer, Popover |
| 7 | Image Viewer | org.gnome.Loupe | Rust | ShyBin fullscreen, AdwViewStack transitions, inline menu buttons |
| 8 | Software | org.gnome.Software | C | header-suffix info, content-width, carousel, tiles |
| 9 | Calendar | org.gnome.Calendar | C | ViewSwitcher+sidebar, AdwFlap |

## To Continue

Run the following to clone remaining core apps:

```bash
cd sources
for app in gnome-console gnome-maps gnome-music epiphany gnome-system-monitor \
  gnome-contacts gnome-logs gnome-characters gnome-font-viewer gnome-connections \
  gnome-baobab gnome-disk-utility simple-scan papers yelp; do
  git clone --depth 1 "https://gitlab.gnome.org/GNOME/$app.git" 2>&1 | tail -1 &
done
```

## Contributing

1. Pick an unaudited app from the list above
2. Clone its source into `sources/`
3. Find UI definitions: `find . -name "*.ui" -o -name "*.blp"`
4. Document the key patterns following the [audit template](#)
5. Update GNOME-GUI-SPEC.md with any new patterns discovered
