# GNOME Boxes — UI Definition File Scan Report

**Project:** GNOME Boxes v50.0  
**Date:** 2025-06-17  
**Repo root:** `sources/boxes/`

---

## 5. File Counts

| Extension | Count |
|-----------|-------|
| `.ui`     | **43** |
| `.blp`    | **0**  |
| **Total** | **43** |

All UI files reside under `data/ui/`. No Blueprint (`.blp`) files are used. The `.xml` files found (`gnome-boxes.gresource.xml`, `org.gnome.boxes.gschema.xml`, `recommended-downloads.xml`, osinfo XMLs) are resource manifests, schemas, and metadata — not widget-layout definitions.

---

## 3. Framework

| Property       | Value |
|----------------|-------|
| **Language**   | Vala + C |
| **GUI Toolkit**| GTK **3** (not GTK 4) |
| **Adaptive Lib** | **libhandy 1** (≥ 1.5.0), *not* libadwaita |
| **Build System**| Meson |
| **UI Templates**| GtkBuilder `.ui` XML loaded via GResource |
| **Widget Prefix** | `Hdy*` (libhandy, the GTK3 predecessor of libadwaita) |

> **Important note:** GNOME Boxes uses `Hdy*` (libhandy) widgets — the GTK 3 analogue of modern `Adw*` widgets. There are **zero `Adw*` widgets** in this codebase. These are functionally equivalent patterns:
> - `HdyApplicationWindow` ≈ `AdwApplicationWindow`
> - `HdyPreferencesWindow` ≈ `AdwPreferencesWindow`
> - `HdyStatusPage` ≈ `AdwStatusPage`
> - `HdyClamp` ≈ `AdwClamp`
> - `HdyCarousel` ≈ `AdwCarousel`
> - `HdyHeaderBar` ≈ `AdwHeaderBar`
> - `HdyActionRow` ≈ `AdwActionRow`
> - `HdyExpanderRow` ≈ `AdwExpanderRow`

---

## 1. Widget Inventory

### Hdy* (libhandy) Widgets

| Widget | File | ~Line |
|--------|------|-------|
| `HdyActionRow` | `data/ui/assistant/express-install-row.ui` | 15, 25, 37 |
| `HdyActionRow` | `data/ui/assistant/firmware-row.ui` | 3 |
| `HdyActionRow` | `data/ui/assistant/media-entry.ui` | 4 |
| `HdyActionRow` | `data/ui/collection-toolbar.ui` | 119, 132 |
| `HdyActionRow` | `data/ui/list-view-row.ui` | 3 |
| `HdyActionRow` | `data/ui/preferences/cdrom-row.ui` | 3 |
| `HdyActionRow` | `data/ui/preferences/device-list-row.ui` | 3 |
| `HdyActionRow` | `data/ui/preferences/memory-row.ui` | 3 |
| `HdyActionRow` | `data/ui/preferences/shared-folder-row.ui` | 3 |
| `HdyActionRow` | `data/ui/preferences/snapshot-list-row.ui` | 3 |
| `HdyActionRow` | `data/ui/preferences/resources-page.ui` | 30, 46, 57, 69, 90, 102, 111, 124 |
| `HdyApplicationWindow` | `data/ui/app-window.ui` | 3 |
| `HdyCarousel` | `data/ui/welcome-tutorial.ui` | 29 |
| `HdyCarouselIndicatorDots` | `data/ui/welcome-tutorial.ui` | 104 |
| `HdyClamp` | `data/ui/list-view.ui` | 16 |
| `HdyExpanderRow` | `data/ui/assistant/express-install-row.ui` | 3 |
| `HdyExpanderRow` | `data/ui/assistant/os-chooser-row.ui` | 3 |
| `HdyHeaderBar` | `data/ui/assistant/assistant.ui` | 52 |
| `HdyHeaderBar` | `data/ui/collection-toolbar.ui` | 3 |
| `HdyHeaderBar` | `data/ui/display-toolbar.ui` | 4 |
| `HdyPreferencesGroup` | `data/ui/assistant/assistant.ui` | 74, 90, 109 |
| `HdyPreferencesGroup` | `data/ui/assistant/os-downloader.ui` | 13, 20 |
| `HdyPreferencesGroup` | `data/ui/collection-toolbar.ui` | 114 |
| `HdyPreferencesGroup` | `data/ui/preferences/devices-page.ui` | 11, 28 |
| `HdyPreferencesGroup` | `data/ui/preferences/resources-page.ui` | 10, 22, 52, 88, 98, 139 |
| `HdyPreferencesGroup` | `data/ui/preferences/shared-folders-widget.ui` | 4 |
| `HdyPreferencesGroup` | `data/ui/preferences/snapshots-page.ui` | 9 |
| `HdyPreferencesPage` | `data/ui/assistant/assistant.ui` | 70 |
| `HdyPreferencesPage` | `data/ui/assistant/os-downloader.ui` | 8 |
| `HdyPreferencesPage` | `data/ui/preferences/devices-page.ui` | 5 |
| `HdyPreferencesPage` | `data/ui/preferences/resources-page.ui` | 4 |
| `HdyPreferencesPage` | `data/ui/preferences/snapshots-page.ui` | 4 |
| `HdyPreferencesRow` | `data/ui/vm-name-row.ui` | 3 |
| `HdyPreferencesWindow` | `data/ui/assistant/os-downloader.ui` | 3 |
| `HdyPreferencesWindow` | `data/ui/preferences/preferences-window.ui` | 3 |
| `HdyStatusPage` | `data/ui/app-window.ui` | 85 |
| `HdyStatusPage` | `data/ui/assistant/assistant.ui` | 124, 158 |
| `HdyWindow` | `data/ui/assistant/assistant.ui` | 3 |

### Gtk* (GTK 3) Widgets

| Widget | File(s) | Key Lines |
|--------|---------|-----------|
| `GtkBox` | Nearly all .ui files | Ubiquitous container |
| `GtkButton` | `app-window.ui`, `assistant/assistant.ui`, `collection-toolbar.ui`, `display-toolbar.ui`, `display-page.ui`, `downloads-hub-row.ui`, `icon-view-child.ui`, `list-view-row.ui`, `preferences/cdrom-row.ui`, `preferences/resources-page.ui`, `preferences/shared-folder-popover.ui`, `preferences/shared-folder-row.ui`, `preferences/snapshot-list-row.ui`, `shared-folder-popover.ui`, `toast.ui`, `transfer-info-row.ui`, `vm-name-row.ui`, `welcome-tutorial.ui` | — |
| `GtkDialog` | `assistant/rhel-download-dialog.ui`, `welcome-tutorial.ui` | 3 / 3 |
| `GtkDrawingArea` | `collection-toolbar.ui`, `display-toolbar.ui` | ~115 / ~60 |
| `GtkEntry` | `assistant/express-install-row.ui`, `preferences/shared-folder-popover.ui`, `shared-folder-popover.ui`, `vm-name-row.ui`, `preferences/snapshot-list-row.ui` | 19, 31 / 42 / 42 / 10 / 65 |
| `GtkEventBox` | `display-page.ui` | 83, 105 |
| `GtkFileChooserButton` | `preferences/shared-folder-popover.ui`, `shared-folder-popover.ui` | 37 / 37 |
| `GtkFileFilter` | `properties-window.ui` | 79 |
| `GtkFlowBox` | `icon-view.ui` | 13 |
| `GtkGrid` | `display-page.ui`, `downloads-hub-row.ui`, `troubleshoot-view.ui`, `transfer-info-row.ui` | 44 / 9 / 21 / 3 |
| `GtkImage` | Nearly all .ui files | Ubiquitous |
| `GtkLabel` | Nearly all .ui files | Ubiquitous |
| `GtkListBox` | `assistant/express-install-row.ui`, `assistant/os-chooser-row.ui`, `downloads-hub.ui`, `list-view.ui`, `preferences/devices-page.ui`, `preferences/shared-folders-widget.ui`, `preferences/snapshots-page.ui` | 11 / 26 / 7 / 22 / 16 / 13 / 19 |
| `GtkListBoxRow` | `downloads-hub-row.ui` | 3 |
| `GtkMenuButton` | `collection-toolbar.ui`, `display-toolbar.ui` | 11, 39 / 25, 41 |
| `GtkOverlay` | `assistant/rhel-download-dialog.ui`, `display-page.ui`, `properties-window.ui`, `vm-name-row.ui`, `welcome-tutorial.ui` | 11 / 46 / 20 / 4 / 20 |
| `GtkPopover` | `collection-toolbar.ui`, `downloads-hub.ui`, `preferences/shared-folder-popover.ui`, `shared-folder-popover.ui`, `transfer-popover.ui` | 112 / 3 / 3 / 3 / 3 |
| `GtkProgressBar` | `assistant/assistant.ui`, `assistant/rhel-download-dialog.ui`, `downloads-hub-row.ui`, `transfer-info-row.ui` | 166 / 16 / 42 / 14 |
| `GtkRadioButton` | `assistant/firmware-row.ui` | 15, 22 |
| `GtkScrolledWindow` | `icon-view.ui`, `list-view.ui`, `troubleshoot-log.ui`, `transfer-popover.ui` | 3 / 3 / 4 / 5 |
| `GtkSearchBar` | `searchbar.ui` | 3 |
| `GtkSearchEntry` | `assistant/os-chooser-row.ui`, `searchbar.ui` | 17 / 7 |
| `GtkShortcutsWindow` | `kbd-shortcuts-window.ui` | 5 |
| `GtkShortcutsSection` | `kbd-shortcuts-window.ui` | 8 |
| `GtkShortcutsGroup` | `kbd-shortcuts-window.ui` | 15, 65, 103 |
| `GtkShortcutsShortcut` | `kbd-shortcuts-window.ui` | 20, 26, 32, 38, 44, 50, 56, 74, 80, 86, 92, 111, 117, 123, 129, 135 |
| `GtkSizeGroup` | `welcome-tutorial.ui` | 120 |
| `GtkSpinner` | `app-window.ui`, `assistant/assistant.ui`, `thumbnail.ui`, `preferences/snapshots-page.ui` | 56 / 35 / 11 / 36 |
| `GtkSpinButton` | `preferences/memory-row.ui`, `preferences/resources-page.ui` | 11 / 50 |
| `GtkStack` | `app-window.ui`, `assistant/assistant.ui`, `downloads-hub-row.ui`, `preferences/cdrom-row.ui`, `preferences/memory-row.ui`, `preferences/snapshot-list-row.ui`, `preferences/snapshots-page.ui`, `properties-window.ui`, `preferences/shared-folders-widget.ui`, `thumbnail.ui`, `topbar.ui`, `troubleshoot-view.ui` | — |
| `GtkSwitch` | `preferences/device-list-row.ui`, `preferences/resources-page.ui` | 7 / 62, 93 |
| `GtkTextView` | `troubleshoot-log.ui` | 10 |
| `GtkToggleButton` | `collection-toolbar.ui` | 85 |
| `GtkWindow` | `properties-window.ui` | 2 |

### Non-GTK Widget

| Widget | File | ~Line |
|--------|------|-------|
| `WebKitWebView` | `data/ui/assistant/rhel-download-dialog.ui` | 32 |

### Custom Boxes-Specific Widgets (used as `<template>` classes)

| Custom Class | Defined In | Parent Class |
|-------------|------------|-------------|
| `BoxesAppWindow` | `app-window.ui` | `HdyApplicationWindow` |
| `BoxesAssistant` | `assistant/assistant.ui` | `HdyWindow` |
| `BoxesAssistantMediaEntry` | `assistant/media-entry.ui` | `HdyActionRow` |
| `BoxesCdromRow` | `preferences/cdrom-row.ui` | `HdyActionRow` |
| `BoxesCollectionToolbar` | `collection-toolbar.ui` | `HdyHeaderBar` |
| `BoxesDeviceListRow` | `preferences/device-list-row.ui` | `HdyActionRow` |
| `BoxesDevicesPage` | `preferences/devices-page.ui` | `HdyPreferencesPage` |
| `BoxesDisplayPage` | `display-page.ui` | `GtkBox` |
| `BoxesDisplayToolbar` | `display-toolbar.ui` | `HdyHeaderBar` |
| `BoxesDownloadsHub` | `downloads-hub.ui` | `GtkPopover` |
| `BoxesDownloadsHubRow` | `downloads-hub-row.ui` | `GtkListBoxRow` |
| `BoxesExpressInstallRow` | `assistant/express-install-row.ui` | `HdyExpanderRow` |
| `BoxesFirmwareRow` | `assistant/firmware-row.ui` | `HdyActionRow` |
| `BoxesIconView` | `icon-view.ui` | `GtkScrolledWindow` |
| `BoxesIconViewChild` | `icon-view-child.ui` | `GtkBox` |
| `BoxesListView` | `list-view.ui` | `GtkScrolledWindow` |
| `BoxesListViewRow` | `list-view-row.ui` | `HdyActionRow` |
| `BoxesMemoryRow` | `preferences/memory-row.ui` | `HdyActionRow` |
| `BoxesOsChooserRow` | `assistant/os-chooser-row.ui` | `HdyExpanderRow` |
| `BoxesOsDownloader` | `assistant/os-downloader.ui` | `HdyPreferencesWindow` |
| `BoxesPreferencesWindow` | `preferences/preferences-window.ui` | `HdyPreferencesWindow` |
| `BoxesPropertiesWindow` | `properties-window.ui` | `GtkWindow` |
| `BoxesRamRow` | (referenced in assistant.ui, resources-page.ui) | `HdyActionRow` |
| `BoxesResourcesPage` | `preferences/resources-page.ui` | `HdyPreferencesPage` |
| `BoxesRHELDownloadDialog` | `assistant/rhel-download-dialog.ui` | `GtkDialog` |
| `BoxesSearchbar` | `searchbar.ui` | `GtkSearchBar` |
| `BoxesSharedFolderPopover` | `preferences/shared-folder-popover.ui`, `shared-folder-popover.ui` | `GtkPopover` |
| `BoxesSharedFolderRow` | `preferences/shared-folder-row.ui` | `HdyActionRow` |
| `BoxesSharedFoldersWidget` | `preferences/shared-folders-widget.ui` | `HdyPreferencesGroup` |
| `BoxesSnapshotListRow` | `preferences/snapshot-list-row.ui` | `HdyActionRow` |
| `BoxesSnapshotsPage` | `preferences/snapshots-page.ui` | `HdyPreferencesPage` |
| `BoxesStorageRow` | (referenced in resources-page.ui) | `HdyActionRow` |
| `BoxesThumbnail` | `thumbnail.ui` | `GtkBox` |
| `BoxesToast` | `toast.ui` | `GtkBox` |
| `BoxesToastOverlay` | (defined in `src/ui/toast-overlay.vala`) | Custom overlay |
| `BoxesTopbar` | `topbar.ui` | `GtkStack` |
| `BoxesTransferInfoRow` | `transfer-info-row.ui` | `GtkGrid` |
| `BoxesTransferPopover` | `transfer-popover.ui` | `GtkPopover` |
| `BoxesTroubleshootLog` | `troubleshoot-log.ui` | `GtkScrolledWindow` |
| `BoxesTroubleshootView` | `troubleshoot-view.ui` | `GtkStack` |
| `BoxesVMNameRow` | `vm-name-row.ui` | `HdyPreferencesRow` |
| `BoxesWelcomeTutorial` | `welcome-tutorial.ui` | `GtkDialog` |
| `BoxesWelcomeTutorialPage` | `welcome-tutorial-page.ui` | `GtkBox` |

---

## 2. Patterns Demonstrated

### Window & Navigation Architecture

| Pattern | Description |
|---------|-------------|
| **`HdyApplicationWindow`** (≈ AdwApplicationWindow) | Primary app window with header bar, search bar, and content area |
| **`HdyWindow`** (≈ AdwWindow) | Modal assistant window for VM creation wizard |
| **`GtkStack` as page router** | `app-window.ui`: transitions between connecting-page, empty-boxes, troubleshoot-view, icon-view, list-view, display-page using crossfade animation |
| **`GtkStack` for state-driven UIs** | Topbar swaps between collection and display toolbars; Snapshots page toggles list/activity states |
| **`GtkStack` for toolbar swapping** | `topbar.ui` swaps between `BoxesCollectionToolbar` and `BoxesDisplayToolbar` |
| **`HdyHeaderBar` with packed children** | Collection toolbar and display toolbar both use header bars with start/end packed children |
| **Back-button navigation** | `collection-toolbar.ui` and `display-toolbar.ui` both have "Back" buttons with `go-previous-symbolic` icons |
| **`HdyStatusPage` for empty/error states** | Empty-boxes welcome page, error page, creating/progress page in assistant |
| **Titlebar-as-child pattern** | `properties-window.ui` uses `<child type="titlebar">` to embed a custom toolbar |
| **GtkShortcutsWindow** | `kbd-shortcuts-window.ui` uses `GtkShortcutsWindow` with `GtkShortcutsSection`, `GtkShortcutsGroup`, and `GtkShortcutsShortcut` with RTL-aware direction attributes |

### Preferences / Settings

| Pattern | Description |
|---------|-------------|
| **`HdyPreferencesWindow`** (≈ AdwPreferencesWindow) | VM preferences window with `can-swipe-back` support |
| **`HdyPreferencesPage`** (≈ AdwPreferencesPage) | Tab-style pages: Resources, Devices & Shares, Snapshots |
| **`HdyPreferencesGroup`** (≈ AdwPreferencesGroup) | Logical grouping of related settings rows |
| **`HdyActionRow` with GtkSwitch** | Toggle settings like "3D acceleration" and "Allow running in background" |
| **`HdyActionRow` with GtkSpinButton** | Numeric settings like CPU count, memory allocation |
| **`HdyActionRow` as clickable row** | "Install from File", "Download OS" rows with `go-next-symbolic` icon |
| **`HdyExpanderRow`** (≈ AdwExpanderRow) | Collapsible rows for Express Installation credentials and OS chooser |
| **`HdyExpanderRow` with enable-switch** | Express Install row with `show-enable-switch` toggle |
| **`HdyPreferencesRow`** (≈ AdwPreferencesRow) | Custom name-entry row with overlay edit button |

### Search & Filtering

| Pattern | Description |
|---------|-------------|
| **`GtkSearchBar`** (not Gtk4 SearchBar) | Top-level search bar revealed by toggle button in toolbar, with `notify::search-mode-enabled` signal |
| **`GtkSearchEntry`** | Search text entry with placeholder "Search for a virtual machine…" and `search-changed` signal |
| **`GtkSearchEntry` in expander** | OS chooser uses a search entry inside `HdyExpanderRow` with list filtering |

### Collection Views

| Pattern | Description |
|---------|-------------|
| **`GtkFlowBox` icon grid view** | `icon-view.ui`: homogeneous flowbox with `selection-mode=none`, `child-activated` signal, keyboard nav |
| **`GtkListBox` list view** | `list-view.ui`: plain listbox with `selection-mode=none`, `row-activated` signal |
| **`HdyClamp` for responsive width** | List view wraps content in `HdyClamp` with `maximum-size=900` for readable line length |
| **Dual view toggle (icon/list)** | `collection-toolbar.ui`: grid_btn and list_btn toggle between icon-view and list-view |

### Popovers & Menus

| Pattern | Description |
|---------|-------------|
| **`GtkPopover` for action menus** | Downloads hub, new-VM popover, shared-folder popover, transfer popover |
| **`GtkMenuButton` linked to popover** | Toolbar buttons connect to popovers via `popover` property |
| **`GtkPopover` with `HdyPreferencesGroup`** | New VM popover uses `HdyPreferencesGroup` and `HdyActionRow` rows inside a popover |
| **`GtkMenuButton` with hamburger menu** | Application menu button ("open-menu-symbolic") packed at `end` position |
| **Actions-popover pattern** | `display-toolbar.ui` menu_button provides action menu for each VM |

### Wizard / Assistant

| Pattern | Description |
|---------|-------------|
| **Multi-page assistant** | `assistant.ui`: `GtkStack` with loading_file_page, editing_page, error_page, creating_page |
| **`HdyPreferencesPage` inside assistant** | Editing page uses `HdyPreferencesPage` with grouped rows for name, OS, and resources |
| **Flat close button in corner** | Each assistant page has a `flat`-style window-close button in the top-right corner |
| **Suggested-action button** | Create button uses `suggested-action` style class |

### Carousel / Onboarding

| Pattern | Description |
|---------|-------------|
| **`HdyCarousel`** (≈ AdwCarousel) | Welcome tutorial carousel with 4 pages |
| **`HdyCarouselIndicatorDots`** (≈ AdwCarouselIndicatorDots) | Dot indicators linked to carousel via `carousel` property |
| **Carousel navigation with overlay buttons** | Back/Next `circular` buttons overlaid on carousel with `pass-through=True` |
| **`GtkSizeGroup` for consistent sizing** | Tutorial indicator spacer and indicator share a vertical size group |

### Notifications & Feedback

| Pattern | Description |
|---------|-------------|
| **Custom Toast overlay** | `BoxesToastOverlay` (implemented in Vala, not `GtkOverlay`) wraps main content stack |
| **`GtkBox`-based toast widget** | `toast.ui`: styled as `app-notification` and `boxes-toast` with label, undo button, and circular close button |
| **Progress bar in status page** | `assistant.ui`: `GtkProgressBar` child of `HdyStatusPage` during VM creation |
| **Overlay progress bar (OSD)** | `rhel-download-dialog.ui`: progress bar with `osd` style class overlaid on WebKitWebView |
| **`GtkOverlay` for notification bar** | `properties-window.ui`: notification bar overlaying the properties stack |
| **Overlaid transfer message box** | `display-page.ui`: file-transfer ready message box with `app-notification` and `overlay-box` classes |
| **Spinner as loading state** | Initial connecting-page in app-window.ui, loading_file_page in assistant, thumbnail spinner, snapshot loading |

### File Transfer UI

| Pattern | Description |
|---------|-------------|
| **Transfer popover with scrollable list** | `transfer-popover.ui`: `GtkPopover` > `GtkScrolledWindow` > `GtkBox` container |
| **`GtkProgressBar` in transfer row** | `transfer-info-row.ui`: `GtkGrid` layout with label, progress bar, cancel button, and details label |
| **Circular cancel button** | Transfer row uses `nautilus-circular-button` style class |

### Custom Widgets with Template Binding

| Pattern | Description |
|---------|-------------|
| **Template-based composition** | Nearly every UI uses `<template class="..." parent="...">` for Vala class binding |
| **Property binding via `bind-source`/`bind-property`** | `app-window.ui`: topbar visible bound to `fullscreened` with `invert-boolean`; `vm-name-row.ui`: edit button visible bound to entry `has-focus` with invert |
| **`GtkOverlay` with focus-driven reveal** | `vm-name-row.ui`: edit-button overlay visible when entry lacks focus |
| **`GtkStack` with `slide-left-right` animation** | `properties-window.ui`: main/troubleshoot_log/file_chooser pages transition with slide |
| **`GtkStack` with `crossfade` animation** | `app-window.ui`, `topbar.ui`, `troubleshoot-view.ui` use smooth 400ms crossfade transitions |
| **`GtkStack` with `slide-up-down` animation** | `snapshot-list-row.ui`: show-name / edit-name mode toggle |
| **WebView in a dialog** | `rhel-download-dialog.ui`: `WebKitWebView` for RHEL download authentication flow inside `GtkDialog` |
| **`HdyCarousel` with `animation-duration`** | Welcome tutorial carousel uses 400ms animation duration |
| **`GtkFileChooserButton` in popover** | Shared-folder popover uses `GtkFileChooserButton` with `action=select-folder` |
| **Linked button groups** | `firmware-row.ui`, `snapshot-list-row.ui`: buttons in a `.linked` style group |
| **`GtkEventBox` for input capture** | `display-page.ui`: event box wraps display for mouse/keyboard event handling |
| **`GtkDrawingArea` for custom rendering** | Downloads hub button and transfers button use `GtkDrawingArea` for custom status indicators |
| **`GtkToggleButton` for search toggle** | `collection-toolbar.ui`: search button toggles to reveal/hide search bar |
| **Menu model via GMenu** | `menus.ui` defines an app-menu with Keyboard Shortcuts, Help, and About Boxes actions |

---

## 4. Notable Design Elements

### CSS Classes

Defined in `data/gtk-style.css`:

| CSS Class | Purpose |
|-----------|---------|
| `.transparent-bg` | Transparent background for overlays |
| `.thumbnail` | VM preview card with border and base/fg colors |
| `.live-thumbnail` | Black background for live VM preview |
| `.index-stack` | Bottom border separator for index-based stacks |
| `.boxes-product-key-entry` | Monospace font for product key entry |
| `.boxes-toast` | 2em border-radius for custom toast notifications |
| `.flash` | Screenshot flash animation (150ms white flash with 0.2 opacity) |
| `.overlay-box` | 25px padding, 5px border-radius for overlay labels |
| `.tutorial-page` | Welcome tutorial background positioning (center 15%, 60% size) |
| `.welcome-tutorial`, `.welcome-tutorial-title-label`, `.welcome-tutorial-description-label` | White text color for tutorial overlay |
| `.boxes-vm-name-row` | 10px padding, 6px border-radius for VM name entry |

CSS classes used inline across UI files:

| Class | Where Used | Purpose |
|-------|-----------|---------|
| `.titlebar` | `collection-toolbar.ui`, `display-toolbar.ui` | Header bar theming |
| `.image-button` | `collection-toolbar.ui`, `display-toolbar.ui` | Icon-only toolbar buttons |
| `.flat` | `assistant/assistant.ui`, `list-view-row.ui`, `preferences/shared-folder-row.ui`, `toast.ui`, `vm-name-row.ui` | Flat (borderless) button style |
| `.suggested-action` | `assistant/assistant.ui`, `preferences/snapshot-list-row.ui` | Blue "action" button color |
| `.linked` | `assistant/firmware-row.ui`, `preferences/snapshot-list-row.ui` | Join adjacent buttons/widgets into a single visual group |
| `.content` | `assistant/os-chooser-row.ui`, `icon-view.ui`, `list-view.ui`, `preferences/devices-page.ui`, `preferences/shared-folders-widget.ui`, `preferences/snapshots-page.ui` | Content-area list styling (removes default listbox background) |
| `.dim-label` | `downloads-hub-row.ui`, `icon-view-child.ui`, `preferences/memory-row.ui`, `preferences/resources-page.ui`, `troubleshoot-view.ui`, `transfer-info-row.ui` | Secondary/dimmed text |
| `.heading` | `toast.ui` | Bold heading text for toast |
| `.circular` | `toast.ui`, `welcome-tutorial.ui` | Circular button shape |
| `.app-notification` | `display-page.ui`, `toast.ui` | Notification/banner styling |
| `.overlay-box` | `display-page.ui` | Semi-transparent overlay box styling |
| `.tooltip` | `display-page.ui` | Tooltip-style label in transfer message |
| `.content-bg` | `properties-window.ui` | Background color for content stack |
| `.nautilus-circular-button` | `transfer-info-row.ui` | Circular cancel button (Nautilus-styled) |
| `.osd` | `assistant/rhel-download-dialog.ui` | On-screen-display progress bar style |
| `.boxes-vm-name-row` | `vm-name-row.ui` | Padded entry for VM name |
| `.tutorial-page` | `welcome-tutorial-page.ui` | Tutorial page background styles |
| `.welcome-tutorial-title-label`, `.welcome-tutorial-description-label` | `welcome-tutorial-page.ui` | White text labels on tutorial |
| `.welcome-tutorial` | `welcome-tutorial.ui` | Dialog body styling |
| `.title` | `preferences/snapshot-list-row.ui` | Title text in snapshot name label |
| `.subtitle` | `preferences/snapshot-list-row.ui` | Subtitle text in snapshot description |

### Accessibility Annotations

| File | Element | Annotation |
|------|---------|-------------|
| `collection-toolbar.ui` | New button | `<child internal-child="accessible">` with `AtkObject` — `accessible-name="New"` |
| `collection-toolbar.ui` | Back button | `AtkObject` — `accessible-name="Back"` |
| `collection-toolbar.ui` | Hamburger menu | `AtkObject` — `accessible-name="Application Menu"` |
| `collection-toolbar.ui` | List view button | `AtkObject` — `accessible-name="List view"` |
| `collection-toolbar.ui` | Grid view button | `AtkObject` — `accessible-name="Grid view"` |
| `collection-toolbar.ui` | Search button | `AtkObject` — `accessible-name="Search"` |
| `collection-toolbar.ui` | Downloads button | `AtkObject` — `accessible-name="Downloads"` |
| `display-toolbar.ui` | Back button | `AtkObject` — `accessible-name="Back"` |
| `display-toolbar.ui` | Actions menu | `AtkObject` — `accessible-name="Actions"` |
| `display-toolbar.ui` | Keyboard shortcuts | `AtkObject` — `accessible-name="Keyboard shortcuts"` |
| `display-toolbar.ui` | Fullscreen button | `AtkObject` — `accessible-name="Fullscreen"` |

All accessibility annotations are translatable (`translatable="yes"`).

### Unusual Widget Configurations

1. **`GtkToggleButton` as search reveal trigger** — The search button in `collection-toolbar.ui` is a `GtkToggleButton`, not a `GtkMenuButton`. Toggling it reveals/hides the search bar via `notify::search-mode-enabled`.

2. **`GtkDrawingArea` for custom rendering** — Both the downloads hub button (`downloads_hub_btn`) and the transfers button (`transfers_button`) use `GtkDrawingArea` as their child widget, suggesting custom-drawn status/progress indicators.

3. **`GtkEventBox` for display input** — The display page uses a `GtkEventBox` with `above-child=True` to intercept mouse/keyboard events for the VM display, rather than handling them directly on the display widget.

4. **Dual toolbar system for fullscreen** — `display-page.ui` has *two* display toolbars: a normal `BoxesDisplayToolbar` at the top and an `overlay_toolbar` variant inside a `GtkEventBox`. The choice between them depends on whether mouse is server-side (grabable) or client-side.

5. **`WebKitWebView` in GTK dialog** — `rhel-download-dialog.ui` embeds a `WebKitWebView` (via `type-func="webkit_web_view_get_type"`) inside a `GtkDialog` for RHEL authentication flows, with an OSD-style progress bar overlaid.

6. **Two identical `shared-folder-popover.ui` files** — Both `data/ui/shared-folder-popover.ui` and `data/ui/preferences/shared-folder-popover.ui` exist with identical content (same `template class="BoxesSharedFolderPopover"`). This appears to be a duplication — only one is registered in the gresource manifest (`preferences/shared-folder-popover.ui`).

7. **Inline attribute markup** — `display-page.ui` and `troubleshoot-view.ui` use `<attributes>` with `<attribute name="weight" value="bold"/>` and `<attribute name="scale" value="1.2"/>` (Pango attributes), while `welcome-tutorial-page.ui` uses `scale=2.2`. These are embedded Pango markup rather than CSS.

8. **`GtkFileFilter` alongside templates** — `properties-window.ui` defines a `GtkFileFilter` object (`supported_files_filter`) for `.iso` and `.raw` disk images alongside the template definition.

9. **`GtkStack` as a mode-switcher** — `snapshot-list-row.ui` uses a `GtkStack` with `slide-up-down` transition to toggle between "show name" and "edit name" modes within a single row.

10. **`HdyActionRow` with `activatable-widget`** — Several rows use `activatable-widget` property to delegate activation to a child widget (e.g., `thumbnail` in list-view-row, `acceleration_3d_toggle` switch, `run_in_bg_toggle` switch).

11. **`GtkSpinButton` with custom input/output signals** — `preferences/memory-row.ui` uses `signal name="input"` and `signal name="output"` handlers on `GtkSpinButton` for custom memory-unit formatting.

12. **Overlay button with `bind-source`/`invert-boolean`** — `vm-name-row.ui` uses a property binding trick: the edit pencil button is only visible when the entry does *not* have focus (inverted), and clicking it calls `gtk_widget_grab_focus` on the entry.
