# GNOME Connections — GUI Widget & Pattern Audit

**Source:** `sources/gnome-connections/src/ui/` (15 .ui/.blp files)
**Libs:** GTK+ 3.x + libhandy (Hdy)
**Date:** 2026-06-16

---

## (1) Widget Inventory

### Gtk (GTK+ 3.x)

| Widget | Files (representative) |
|---|---|
| **GtkApplicationWindow** | `window.ui:3` |
| **GtkPopover** | `assistant.ui:3` |
| **GtkPopoverMenu** | `topbar.ui:175` |
| **GtkBox** | omnipresent — `assistant.ui:7`, `collection-view-child.ui:4`, `collection-view.ui:8`, `dialog.ui:11`, `display-view.ui:4`, `notification.ui:9`, `onboarding-dialog-page.ui:3`, `onboarding-dialog.ui:11`, `window.ui:17` |
| **GtkGrid** | `auth-notification.ui:13`, `dialog.ui:60`, `notification.ui:12` |
| **GtkOverlay** | `display-view.ui:28`, `onboarding-dialog.ui:28`, `window.ui:31` |
| **GtkStack** | `dialog.ui:23`, `display-view.ui:10`, `topbar.ui:4`, `window.ui:41` |
| **GtkHeaderBar** | `topbar.ui:107` |
| **GtkSearchBar** | `collection-view.ui:19`, `window.ui:26` |
| **GtkSearchEntry** | `collection-view.ui:24` |
| **GtkScrolledWindow** | `collection-view.ui:4`, `display-view.ui:64` |
| **GtkFlowBox** | `collection-view.ui:32` |
| **GtkRevealer** | `auth-notification.ui:4`, `notification.ui:4` |
| **GtkButton** | `assistant.ui:74`, `auth-notification.ui:85`, `dialog.ui:26`, `display-view.ui:45`, `notification.ui:33`, `onboarding-dialog.ui:69`, `topbar.ui:111` |
| **GtkToggleButton** | `topbar.ui:66` |
| **GtkMenuButton** | `dialog.ui:110`, `topbar.ui:12` |
| **GtkModelButton** | `topbar.ui:180` |
| **GtkRadioButton** | `assistant.ui:53` |
| **GtkLabel** | `assistant.ui:18`, `auth-notification.ui:18`, `collection-view-child.ui:25`, `dialog.ui:75`, `display-view.ui:38`, `notification.ui:26`, `onboarding-dialog-page.ui:16`, `rdp-preferences.ui:25`, etc. |
| **GtkEntry** | `assistant.ui:31`, `auth-notification.ui:43`, `dialog.ui:187`, `rdp-preferences.ui:35`, `spice-preferences.ui:35`, `vnc-preferences.ui:35` |
| **GtkEntryCompletion** | `assistant.ui:109` |
| **GtkComboBoxText** | `rdp-preferences.ui:42`, `spice-preferences.ui:49`, `vnc-preferences.ui:76` |
| **GtkSwitch** | `dialog.ui:156` |
| **GtkImage** | `collection-view-child.ui:9`, `dialog.ui:39`, `display-view.ui:56`, `notification.ui:42`, `onboarding-dialog.ui:70`, `topbar.ui` (multiple) |
| **GtkSpinner** | `display-view.ui:17`, `window.ui:61` |
| **GtkEventBox** | `display-view.ui:70` |
| **GtkListStore** | `assistant.ui:115` |
| **GtkSizeGroup** | `assistant.ui:132`, `onboarding-dialog.ui:170` |
| **GtkShortcutsWindow** | `kbd-shortcuts-window.ui:4` |
| **GtkShortcutsSection** | `kbd-shortcuts-window.ui:8` |
| **GtkShortcutsGroup** | `kbd-shortcuts-window.ui:15` |
| **GtkShortcutsShortcut** | `kbd-shortcuts-window.ui:20` |
| **AtkObject** | `dialog.ui:31`, `topbar.ui:22` _(accessibility child)_ |

### Hdy (libhandy)

| Widget | Files (representative) |
|---|---|
| **HdyWindow** | `dialog.ui:7`, `onboarding-dialog.ui:3` |
| **HdyHeaderBar** | `dialog.ui:14`, `topbar.ui:7` |
| **HdyWindowHandle** | `dialog.ui:166` |
| **HdyPreferencesPage** | `dialog.ui:151`, `dialog.ui:185`, `rdp-preferences.ui:11`, `spice-preferences.ui:11`, `vnc-preferences.ui:11` |
| **HdyPreferencesGroup** | `dialog.ui:153`, `dialog.ui:187`, `rdp-preferences.ui:14`, `spice-preferences.ui:14`, `vnc-preferences.ui:14` |
| **HdyActionRow** | `dialog.ui:156`, `dialog.ui:189`, `rdp-preferences.ui:17`, `spice-preferences.ui:17`, `vnc-preferences.ui:17` |
| **HdyCarousel** | `onboarding-dialog.ui:37` |
| **HdyCarouselIndicatorDots** | `onboarding-dialog.ui:148` |
| **HdyStatusPage** | `window.ui:51` |

### Custom composite widgets (Connections-specific)

| Class | Defined in | Parent |
|---|---|---|
| `ConnectionsWindow` | `window.ui:3` | GtkApplicationWindow |
| `ConnectionsTopbar` | `topbar.ui:4` | GtkStack |
| `ConnectionsAssistant` | `assistant.ui:3` | GtkPopover |
| `ConnectionsCollectionView` | `collection-view.ui:4` | GtkScrolledWindow |
| `ConnectionsCollectionViewChild` | `collection-view-child.ui:4` | GtkBox |
| `ConnectionsDisplayView` | `display-view.ui:4` | GtkBox |
| `ConnectionsNotification` | `notification.ui:4` | GtkRevealer |
| `ConnectionsAuthNotification` | `auth-notification.ui:4` | GtkRevealer |
| `ConnectionsDialogsWindow` | `dialog.ui:7` | HdyWindow |
| `ConnectionsOnboardingDialog` | `onboarding-dialog.ui:3` | HdyWindow |
| `ConnectionsOnboardingDialogPage` | `onboarding-dialog-page.ui:3` | GtkBox |
| `ConnectionsRdpPreferencesWindow` | `rdp-preferences.ui:3` | ConnectionsPreferencesWindow |
| `ConnectionsSpicePreferencesWindow` | `spice-preferences.ui:3` | ConnectionsPreferencesWindow |
| `ConnectionsVncPreferencesWindow` | `vnc-preferences.ui:3` | ConnectionsPreferencesWindow |
| `ConnectionsBooleanProperty` | `spice-preferences.ui:40` | _(custom)_ |
| `ConnectionsNotificationsBar` | `window.ui:36` | _(custom)_ |

---

## (2) Patterns Demonstrated

### A. Stack-based navigation
`window.ui:41` — A `GtkStack` with named children (`collection_view`, `display_view`, `empty_view`, `loading_view`) acts as the app root. Switching pages drives the full navigation model. The topbar (`topbar.ui:4`) is *also* a `GtkStack` with two headerbar variants (`collection_toolbar` / `display_toolbar`), synced to view state.

### B. Composite template widget hierarchy
Every major screen is a `<template class="…" parent="…">` with its own .ui file. This yields a clean 1-file-per-screen architecture: `ConnectionsCollectionView`, `ConnectionsDisplayView`, `ConnectionsOnboardingDialog`, etc.

### C. Popover-based "new connection" assistant
`topbar.ui:12` — MenuButton with `popover="assistant"` pointing to a `ConnectionsAssistant` (GtkPopover). The assistant itself (`assistant.ui`) contains RadioButtons for protocol selection and an Entry with GtkEntryCompletion for URL suggestions.

### D. Preferences via HdyPreferencesPage + HdyPreferencesGroup + HdyActionRow
`rdp-preferences.ui`, `spice-preferences.ui`, `vnc-preferences.ui` — Each protocol's preferences dialog is a `ConnectionsPreferencesWindow` containing `HdyPreferencesPage` → `HdyPreferencesGroup` → `HdyActionRow` chains. This is the canonical libhandy preferences pattern: ActionRow wraps a GtkEntry, GtkComboBoxText, or custom `ConnectionsBooleanProperty` child.

### E. Inline revealer notifications
`notification.ui:4` — `ConnectionsNotification` extends `GtkRevealer` with an `app-notification` CSS class banner (Grid with Label + dismiss Button). `auth-notification.ui:4` uses the same pattern for inline credential entry (username + password fields) revealed inside the displayed session.

### F. Full-screen overlay controls
`display-view.ui:28` — A `GtkOverlay` stacks the remote desktop surface with floating UI: a `GtkLabel` (size/resolution indicator) and a `GtkButton` to exit fullscreen, both styled with `app-notification` class.

### G. Onboarding carousel
`onboarding-dialog.ui:37` — `HdyCarousel` with multiple `ConnectionsOnboardingDialogPage` children, animated at 400ms. Navigation uses `GtkOverlay` with `pass-through` back/next circular buttons overlaid, plus `HdyCarouselIndicatorDots` for position feedback.

### H. Search with GtkSearchBar + GtkSearchEntry
`collection-view.ui:19` — `GtkSearchBar` wrapping `GtkSearchEntry` (width-chars=40, hexpand). The search button in the headerbar toggles the bar. A `GtkFlowBox` below displays filtered collection cards.

### I. FlowBox card grid
`collection-view.ui:32` — `GtkFlowBox` with `homogeneous=True`, `selection-mode=none`. Each child is a `ConnectionsCollectionViewChild` (thumbnail GtkImage + ellipsized multi-line GtkLabel). Activated via `child-activated` signal.

### J. Dialog stack for certificate verification & authentication
`dialog.ui:23` — `GtkStack` inside a dialog `HdyWindow` holding pages: `certificate-verification`, `certificate-change-verification`, `authentication`. The headerbar has its own `GtkStack` (`header_stack`) to switch between Verify/Connect buttons.

### K. Keyboard shortcuts window
`kbd-shortcuts-window.ui:4` — Standard `GtkShortcutsWindow` → `GtkShortcutsSection` → `GtkShortcutsGroup` → `GtkShortcutsShortcut` with accelerators like `F1`, `<Ctrl>f`, `<Ctrl>q`, `F11`.

### L. Menu models for headerbar menus
`topbar.ui:153` — XML `<menu>` blocks define `main_menu_model` and `display_menu_model` using `win.*` and `app.*` GAction references. A `GtkPopoverMenu` (`topbar.ui:175`) contains `GtkModelButton` children with `action-name` for keyboard shortcut injection.

### M. Mnenomic + accessible labelling
`auth-notification.ui:26` — `GtkLabel` with `use-underline=True` + `mnemonic-widget=username_entry`. Throughout, buttons embed `AtkObject` internal children with `accessible-name` for accessible tooltips (`dialog.ui:31`, `topbar.ui:22`).

### N. CSS class styling
CSS classes peppered throughout: `suggested-action` (primary buttons), `image-button`, `flat`, `circular`, `app-notification`, `titlebar`, `onboarding-dialog-page`, `thumbnail`, `view`, `title-1`. No inline CSS; all are class-name references for external stylesheets.

### O. GtkSizeGroup for button width alignment
`assistant.ui:132` — `GtkSizeGroup` groups Help/Connect buttons. `onboarding-dialog.ui:170` — groups the `indicator-spacer` and `indicator` dots vertically so they share the same allocation height.

---

## (3) Best Code Examples (file + line)

| Pattern | Best file + line |
|---|---|
| **Stack-based app root with named pages** | `window.ui:41` (GtkStack `id="stack"`) |
| **Headerbar stack synced to view** | `topbar.ui:4-107` (GtkStack with two headerbar variants) |
| **Popover assistant with radio group** | `assistant.ui:3-53` (template class GtkPopover, GtkRadioButton group) |
| **Entry with GtkEntryCompletion** | `assistant.ui:31 + 109` (entry + completion + model) |
| **Preferences page (HdyPreferencesPage→Group→ActionRow)** | `vnc-preferences.ui:11-49` or `rdp-preferences.ui:11-45` |
| **ActionRow with embedded GtkEntry** | `rdp-preferences.ui:33-38` (activatable-widget + child GtkEntry) |
| **ActionRow with GtkComboBoxText** | `spice-preferences.ui:49-59` |
| **Revealer inline notification banner** | `notification.ui:4-50` |
| **GtkOverlay with floating controls** | `display-view.ui:28-62` |
| **Onboarding carousel with overlay buttons** | `onboarding-dialog.ui:37-115` (HdyCarousel + pass-through overlay) |
| **FlowBox card grid** | `collection-view.ui:32-42` (GtkFlowBox homogeneous, child-activated) |
| **Card child template (thumbnail + label)** | `collection-view-child.ui:4-42` |
| **SearchBar + SearchEntry + FlowBox** | `collection-view.ui:19-42` |
| **Multi-page dialog stack** | `dialog.ui:48-260` (GtkStack with certificate/authentication pages) |
| **Headerbar button stack (swappable actions)** | `dialog.ui:23-57` (GtkStack for Verify/Connect) |
| **Keyboard shortcuts window** | `kbd-shortcuts-window.ui:4-46` |
| **Menu model (GAction + XML menu)** | `topbar.ui:153-167` |
| **PopoverMenu with GtkModelButton** | `topbar.ui:175-210` |
| **MenuButton + popover (headerbar)** | `topbar.ui:12-29` |
| **GtkSizeGroup for button alignment** | `assistant.ui:132-136` |
| **Mnemonic label + linked entry** | `auth-notification.ui:26-43` (use-underline + mnemonic-widget) |
| **AtkObject accessible-name on buttons** | `topbar.ui:22-27` |
| **HdyWindow + HdyWindowHandle for draggable dialogs** | `dialog.ui:166` |
| **HdyStatusPage for empty state** | `window.ui:51-54` |
| **Custom composite widget (BooleanProperty)** | `vnc-preferences.ui:54-57` (shows app-defined widget in ActionRow) |
| **GtkToggleButton for search toggle** | `topbar.ui:66-89` |
| **HdyCarouselIndicatorDots** | `onboarding-dialog.ui:148-151` |
