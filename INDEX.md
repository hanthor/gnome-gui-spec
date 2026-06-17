# GNOME Agent Library — Index

> Each skill folder contains a self-contained `SKILL.md`. Read them individually as needed.

## Master Reference
- **[GNOME-AGENT-GUIDE.md](GNOME-AGENT-GUIDE.md)** — Complete 12-section specification (v1.1.0)
- **[COMPONENT-LIBRARY.md](COMPONENT-LIBRARY.md)** — 42-component catalog with Blueprint/XML examples (v0.2.0)
- **[INTENT-MAP.md](INTENT-MAP.md)** — Intent → pattern → code example lookup (34 apps)

## Skills (How-To Guides)
Each folder teaches one specific GNOME pattern.

| # | Folder | What You'll Learn |
|---|--------|-------------------|
| 1 | [preferences-dialog](skills/preferences-dialog/SKILL.md) | Add Preferences dialog + Ctrl+comma + GSettings |
| 2 | [delete-with-undo](skills/delete-with-undo/SKILL.md) | 4-tier destructive action system + undo toasts |
| 3 | [view-switcher](skills/view-switcher/SKILL.md) | Flat page switching with 3-5 tabs |
| 4 | [adaptive-layout](skills/adaptive-layout/SKILL.md) | Breakpoints, responsive design, BottomSheet |
| 5 | [header-bar](skills/header-bar/SKILL.md) | Header bar layout, buttons, tooltips |
| 6 | [empty-state](skills/empty-state/SKILL.md) | Loading spinners, empty states, StatusPages |
| 7 | [toast-feedback](skills/toast-feedback/SKILL.md) | Toasts, undo buttons, banners vs dialogs |
| 8 | [radio-group](skills/radio-group/SKILL.md) | CheckButton radio groups in preferences |
| 9 | [sidebar-navigation](skills/sidebar-navigation/SKILL.md) | OverlaySplitView, NavigationSplitView, Flap |
| 10 | [tabbed-documents](skills/tabbed-documents/SKILL.md) | AdwTabView multi-document support |
| 11 | [gsettings-backend](skills/gsettings-backend/SKILL.md) | GSettings schema, binding, window state |
| 12 | [wizard-assistant](skills/wizard-assistant/SKILL.md) | Sequential setup flow, Back/Forward nav |
| 13 | [carousel-tour](skills/carousel-tour/SKILL.md) | AdwCarousel onboarding with nav dots |
| 14 | [quick-start](skills/quick-start/SKILL.md) | Minimal GNOME app from scratch in one file |
| 15 | [language-quickstart](skills/language-quickstart/SKILL.md) | Build setup: Python, Rust, C, Vala, GJS + Flatpak |

## Components (Widget Reference)
Each has Blueprint + XML + code examples.

| # | File | Widget |
|---|------|--------|
| 1 | [application-window.md](components/application-window.md) | `AdwApplicationWindow` |
| 2 | [header-bar.md](components/header-bar.md) | `AdwHeaderBar` |
| 3 | [toolbar-view.md](components/toolbar-view.md) | `AdwToolbarView` |
| 4 | [preferences-group.md](components/preferences-group.md) | `AdwPreferencesPage` + `AdwPreferencesGroup` |
| 5 | [switch-row.md](components/switch-row.md) | `AdwSwitchRow` |
| 6 | [action-row.md](components/action-row.md) | `AdwActionRow` (Switch, Scale, Radio) |
| 7 | [combo-row.md](components/combo-row.md) | `AdwComboRow` |
| 8 | [spin-row.md](components/spin-row.md) | `AdwSpinRow` |
| 9 | [button-row.md](components/button-row.md) | `AdwButtonRow` |
| 10 | [expander-row.md](components/expander-row.md) | `AdwExpanderRow` |
| 11 | [view-stack.md](components/view-stack.md) | `AdwViewStack` + `AdwViewSwitcher` |
| 12 | [breakpoint.md](components/breakpoint.md) | `AdwBreakpoint` + `AdwBreakpointBin` |
| 13 | [status-page.md](components/status-page.md) | `AdwStatusPage` |
| 14 | [toast.md](components/toast.md) | `AdwToast` + `AdwToastOverlay` |
| 15 | [button.md](components/button.md) | `GtkButton` style reference |
| 16 | [menu.md](components/menu.md) | `GtkMenuButton` + Menu models |
| 17 | [clamp.md](components/clamp.md) | `AdwClamp` |

## Design Tokens (Reference Values)

| # | File | Contents |
|---|------|----------|
| 1 | [spacing.md](tokens/spacing.md) | Margin, padding, spacing scale |
| 2 | [typography.md](tokens/typography.md) | Font classes, capitalization rules |
| 3 | [style-classes.md](tokens/style-classes.md) | CSS class reference + compound patterns |
| 4 | [icons.md](tokens/icons.md) | Symbolic icon reference by category |

## App Audits
Individual audit reports for 28 GNOME Core apps + 6 Dev Tool scans in [audits/](audits/).

**Dev Tool scans** (Builder, D-Spy, Sysprof, Manuals, Boxes, Dconf Editor) — included in the component library, intent map, and agent guide.

## HIG Reference
16 official GNOME HIG pages extracted to markdown in [reference/hig/](reference/hig/).

---

**Quick Start for Agents**: Read `skills/quick-start/SKILL.md` + `tokens/typography.md` + `tokens/spacing.md`.
