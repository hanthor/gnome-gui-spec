---
name: gnome-gui
description: Authoritative resource for building, auditing, and improving GNOME GTK4/libadwaita apps. Design tokens, 42-widget component library, 21 pattern skills, 47 mirrored HIG pages, 34 real-app audits, and lint scripts. Use when building a GNOME app, adding GNOME GUI features, auditing HIG compliance, packaging for Flatpak/Flathub, or when the user mentions GTK, libadwaita, Adw, Blueprint, or GNOME HIG.
---

# GNOME GUI — Router

Read ONLY the one or two files your task needs. Do not read INDEX.md or the
master guide unless routing below fails.

## Route by task

| Your task | Read this |
|-----------|-----------|
| New app, end-to-end (scaffold → Flatpak) | `QUICKSTART.md` (lanes for Python, Rust, C, GJS) |
| New app from scratch | `skills/quick-start/SKILL.md`, then `skills/language-quickstart/SKILL.md` for your language |
| CI / GitHub Actions / release automation | `skills/github-actions-ci/SKILL.md` |
| Audit / review / polish an existing app | `skills/hig-audit/SKILL.md` (quick automated pass: `scripts/lint-app.sh <dir>`) |
| Preferences/settings UI | `skills/preferences-dialog/SKILL.md` |
| Persist settings / window state | `skills/gsettings-backend/SKILL.md` |
| Delete/remove/clear actions | `skills/delete-with-undo/SKILL.md` |
| Tabs or views in header bar | `skills/view-switcher/SKILL.md` |
| Multi-document tabs | `skills/tabbed-documents/SKILL.md` |
| Sidebar / master-detail | `skills/sidebar-navigation/SKILL.md` |
| Phone/narrow-window support | `skills/adaptive-layout/SKILL.md` |
| Header bar design | `skills/header-bar/SKILL.md` |
| Empty/loading/error states | `skills/empty-state/SKILL.md` |
| Toasts / user feedback | `skills/toast-feedback/SKILL.md` |
| Search or filtering | `skills/search-pattern/SKILL.md` |
| Exclusive options (radio) | `skills/radio-group/SKILL.md` |
| Onboarding tour / wizard | `skills/carousel-tour/SKILL.md` or `skills/wizard-assistant/SKILL.md` |
| Keyboard shortcuts + help window | `skills/shortcuts-window/SKILL.md` |
| About dialog / app metadata | `skills/about-dialog/SKILL.md` |
| Accessibility | `skills/accessibility/SKILL.md` |
| Flatpak / Flathub | `skills/flatpak-packaging/SKILL.md` |

## Route by lookup

| You need | Read this |
|----------|-----------|
| A specific widget's Blueprint/XML API | `components/<widget>.md` (36 files, kebab-case names; index in `COMPONENT-LIBRARY.md`) |
| Spacing/margin values | `tokens/spacing.md` |
| Window sizes, sidebar widths, breakpoints | `tokens/sizing.md` |
| Font classes, capitalization | `tokens/typography.md` |
| Window structure / which navigation pattern | `reference/app-architecture.md` |
| App skeleton to copy | `reference/layout-recipes.md` or `reference/app-templates.md` |
| What NOT to do + release checklist | `reference/anti-patterns.md` |
| CSS style classes | `tokens/style-classes.md` |
| Valid icon name | grep `reference/icons.md` (645 icons); validate with `scripts/check-icons.sh` |
| "How does app X do Y?" | `INTENT-MAP.md` (intent → app → file:line, 34 apps) |
| Official HIG wording on a topic | `reference/hig/<topic>.md` (47 pages) |
| How a real GNOME app is built | `audits/<app>.md` (34 pattern audits) |

## Non-negotiable defaults (memorize, don't re-read)

- libadwaita widgets over raw GTK: `AdwApplicationWindow`, `AdwHeaderBar`,
  `AdwToolbarView`, `AdwDialog`/`AdwAlertDialog` (never GtkDialog/MessageDialog).
- Spacing on the 6/12/18/24 scale; window `width-request: 360` minimum.
- All user-visible strings in `_()`; ellipsis is `…` not `...`.
- Icon-only buttons always get `tooltip-text`.
- Undo toasts instead of confirmation dialogs for reversible destructive actions.
- Buttons/rows/tabs/groups: Header Case. Descriptions/subtitles/menus-that-describe: sentence case.
- Icons: `-symbolic` variants, names verified against the catalog.
