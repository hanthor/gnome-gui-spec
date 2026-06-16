# GNOME Agent Library — Index

> Read individual files as needed. Each file is self-contained.

## Master Reference
- **[GNOME-AGENT-GUIDE.md](GNOME-AGENT-GUIDE.md)** — Complete 12-section specification (v1.1.0)

## Skills (How-To Guides)
Each teaches one specific GNOME pattern.

| # | File | What You'll Learn |
|---|------|-------------------|
| 1 | [preferences-dialog.md](skills/preferences-dialog.md) | Add Preferences dialog + Ctrl+comma + GSettings |
| 2 | [delete-with-undo.md](skills/delete-with-undo.md) | 4-tier destructive action system + undo toasts |
| 3 | [view-switcher.md](skills/view-switcher.md) | Flat page switching with 3-5 tabs |
| 4 | [adaptive-layout.md](skills/adaptive-layout.md) | Breakpoints, responsive design, BottomSheet |
| 5 | [header-bar.md](skills/header-bar.md) | Header bar layout, buttons, tooltips |
| 6 | [empty-state.md](skills/empty-state.md) | Loading spinners, empty states, StatusPages |
| 7 | [toast-feedback.md](skills/toast-feedback.md) | Toasts, undo buttons, banners vs dialogs |
| 8 | [radio-group.md](skills/radio-group.md) | CheckButton radio groups in preferences |
| 9 | [sidebar-navigation.md](skills/sidebar-navigation.md) | OverlaySplitView, NavigationSplitView, Flap |
| 10 | [tabbed-documents.md](skills/tabbed-documents.md) | AdwTabView multi-document support |
| 11 | [gsettings-backend.md](skills/gsettings-backend.md) | GSettings schema, binding, window state |
| 12 | [wizard-assistant.md](skills/wizard-assistant.md) | Sequential setup flow, Back/Forward nav |
| 13 | [carousel-tour.md](skills/carousel-tour.md) | AdwCarousel onboarding with nav dots |

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
| 7 | [view-stack.md](components/view-stack.md) | `AdwViewStack` + `AdwViewSwitcher` |
| 8 | [breakpoint.md](components/breakpoint.md) | `AdwBreakpoint` + `AdwBreakpointBin` |
| 9 | [status-page.md](components/status-page.md) | `AdwStatusPage` |
| 10 | [toast.md](components/toast.md) | `AdwToast` + `AdwToastOverlay` |
| 11 | [button.md](components/button.md) | `GtkButton` style reference |
| 12 | [menu.md](components/menu.md) | `GtkMenuButton` + Menu models |

## Design Tokens (Reference Values)

| # | File | Contents |
|---|------|----------|
| 1 | [spacing.md](tokens/spacing.md) | Margin, padding, spacing scale |
| 2 | [typography.md](tokens/typography.md) | Font classes, capitalization rules |
| 3 | [style-classes.md](tokens/style-classes.md) | CSS class reference + compound patterns |
| 4 | [icons.md](tokens/icons.md) | Symbolic icon reference by category |

## App Audits
Individual audit reports for 12 GNOME apps in [audits/](audits/).

## Source Code
Cloned repositories of 12 GNOME apps in [sources/](sources/) for reference.

---

**Quick Start for Agents**: Read `skills/preferences-dialog.md` + `tokens/typography.md` + `tokens/spacing.md` as your minimum starting set.
