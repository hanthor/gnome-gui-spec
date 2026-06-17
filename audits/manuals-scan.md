# GNOME Manuals — UI Definition Scan Report

**Repo:** `sources/manuals/` (GNOME Manuals, version 50.2)
**Generated:** 2026-06-17

---

## 1. File Count

| Extension | Count |
|-----------|-------|
| `.ui`     | 7     |
| `.blp`    | 0     |
| `.xml` (widget-definition) | 0     |

The two `.xml` files found (`data/org.gnome.Manuals.gschema.xml`, `src/manuals.gresource.xml`) are GSettings schema and GResource manifest files — not widget definitions — and are excluded from the widget inventory.

### UI Files Found (all relative to `sources/manuals/`)

1. `src/manuals-bundle-dialog.ui`
2. `src/manuals-install-button.ui`
3. `src/manuals-path-bar.ui`
4. `src/manuals-path-button.ui`
5. `src/manuals-search-entry.ui`
6. `src/manuals-tab.ui`
7. `src/manuals-window.ui`

---

## 2. Widget Inventory

### 2.1 Adwaita (Adw*) Widgets

| Widget | File(s) | Approx. Line(s) |
|--------|---------|------------------|
| `AdwApplicationWindow` | `manuals-window.ui` | 5 |
| `AdwBreakpoint` | `manuals-window.ui` | 14 |
| `AdwHeaderBar` | `manuals-bundle-dialog.ui` | 10 |
| `AdwHeaderBar` | `manuals-window.ui` | 273, 351, 374 |
| `AdwLayout` | `manuals-window.ui` | 262, 340 |
| `AdwLayoutSlot` | `manuals-window.ui` | 329, 336, 364, 371, 380, 400 |
| `AdwMultiLayoutView` | `manuals-window.ui` | 63 |
| `AdwNavigationPage` | `manuals-window.ui` | 349, 363 |
| `AdwNavigationSplitView` | `manuals-window.ui` | 347 |
| `AdwPreferencesDialog` | `manuals-bundle-dialog.ui` | 3 (template parent) |
| `AdwPreferencesGroup` | `manuals-bundle-dialog.ui` | 50, 63, 76 |
| `AdwPreferencesPage` | `manuals-bundle-dialog.ui` | 48 |
| `AdwSpinnerPaintable` | `manuals-bundle-dialog.ui` | 22 |
| `AdwSpinnerPaintable` | `manuals-window.ui` | 83 |
| `AdwStatusPage` | `manuals-bundle-dialog.ui` | 20, 37 |
| `AdwStatusPage` | `manuals-window.ui` | 81, 107 |
| `AdwTabBar` | `manuals-window.ui` | 324 |
| `AdwTabButton` | `manuals-window.ui` | 394 |
| `AdwTabOverview` | `manuals-window.ui` | 344 |
| `AdwTabView` | `manuals-window.ui` | 137 |
| `AdwToolbarView` | `manuals-bundle-dialog.ui` | 8 |
| `AdwToolbarView` | `manuals-window.ui` | 349, 358, 368 |
| `AdwWindowTitle` | `manuals-window.ui` | 278, 355 |

### 2.2 GTK (Gtk*) Widgets

| Widget | File(s) | Approx. Line(s) |
|--------|---------|------------------|
| `GtkBoolFilter` | `manuals-bundle-dialog.ui` | 113, 122, 129, 136 |
| `GtkBox` | `manuals-path-bar.ui` | 6, 14 |
| `GtkBox` | `manuals-path-button.ui` | 34 (inline), 72 (label), 82 |
| `GtkBox` | `manuals-tab.ui` | 15, 45, 55, 67 |
| `GtkBox` | `manuals-window.ui` | 112, 145, 270, 280, 293, 333, 392 |
| `GtkBuilderListItemFactory` | `manuals-path-button.ui` | 26 |
| `GtkBuilderListItemFactory` | `manuals-window.ui` | 183, 205, 227 |
| `GtkButton` | `manuals-bundle-dialog.ui` | 79, 91 |
| `GtkButton` | `manuals-install-button.ui` | 12, 20 |
| `GtkButton` | `manuals-tab.ui` | 69, 75, 82 |
| `GtkButton` | `manuals-window.ui` | 121, 295, 301, 316, 387, 389 |
| `GtkCssProvider` | `manuals-install-button.ui` | 32 |
| `GtkEventControllerKey` | `manuals-window.ui` | 158 |
| `GtkEveryFilter` | `manuals-bundle-dialog.ui` | 121, 140 |
| `GtkFilterListModel` | `manuals-bundle-dialog.ui` | 111, 118 |
| `GtkGestureClick` | `manuals-path-button.ui` | 89, 97 |
| `GtkGestureClick` | `manuals-window.ui` | 22 |
| `GtkImage` | `manuals-path-button.ui` | 37 (inline), 114 |
| `GtkImage` | `manuals-search-entry.ui` | 6 |
| `GtkImage` | `manuals-window.ui` | 244, 250 (inline) |
| `GtkLabel` | `manuals-path-button.ui` | 45 (inline), 72, 126 |
| `GtkLabel` | `manuals-search-entry.ui` | 21 |
| `GtkLabel` | `manuals-window.ui` | 115, 217 (inline), 254 (inline), 391 |
| `GtkListBox` | `manuals-bundle-dialog.ui` | 53, 66 |
| `GtkListHeader` | `manuals-window.ui` | 211 (inline) |
| `GtkListItem` | `manuals-path-button.ui` | 31 (inline) |
| `GtkListItem` | `manuals-window.ui` | 186 (inline), 232 (inline) |
| `GtkListView` | `manuals-path-button.ui` | 17 |
| `GtkListView` | `manuals-window.ui` | 171, 195 |
| `GtkMenuButton` | `manuals-window.ui` | 307, 359, 375 |
| `GtkNoSelection` | `manuals-path-button.ui` | 22 |
| `GtkNoSelection` | `manuals-window.ui` | 178 |
| `GtkPopover` | `manuals-path-button.ui` | 6 |
| `GtkProgressBar` | `manuals-window.ui` | 91 |
| `GtkRevealer` | `manuals-tab.ui` | 46 |
| `GtkScrolledWindow` | `manuals-path-bar.ui` | 8 |
| `GtkScrolledWindow` | `manuals-path-button.ui` | 11 |
| `GtkScrolledWindow` | `manuals-window.ui` | 167, 175 |
| `GtkSearchEntry` | `manuals-window.ui` | 149 |
| `GtkSeparator` | `manuals-tab.ui` | 52 |
| `GtkShortcut` | `manuals-tab.ui` | 8, 14, 20, 23, 41 |
| `GtkShortcut` | `manuals-window.ui` | 30, 34, 38, 42, 46, 50, 54, 58 |
| `GtkShortcutController` | `manuals-tab.ui` | 6, 19, 37 |
| `GtkShortcutController` | `manuals-window.ui` | 28 |
| `GtkSingleSelection` | `manuals-window.ui` | 199 |
| `GtkStack` | `manuals-bundle-dialog.ui` | 13 |
| `GtkStack` | `manuals-install-button.ui` | 5 |
| `GtkStack` | `manuals-window.ui` | 77, 163 |
| `GtkStackPage` | `manuals-bundle-dialog.ui` | 18, 33, 46 |
| `GtkStackPage` | `manuals-install-button.ui` | 10, 18 |
| `GtkStackPage` | `manuals-window.ui` | 79, 105, 133, 164, 174 |
| `GtkText` | `manuals-search-entry.ui` | 10 |
| `GtkViewport` | `manuals-path-bar.ui` | 12 |
| `GtkWidget` | `manuals-install-button.ui` | 3 (template parent) |
| `GtkWidget` | `manuals-path-bar.ui` | 3 (template parent) |
| `GtkWidget` | `manuals-path-button.ui` | 3 (template parent) |
| `GtkWidget` | `manuals-search-entry.ui` | 4 (template parent) |
| `GtkWidget` | `manuals-tab.ui` | 4 (template parent) |
| `GtkProgressBar` | `manuals-window.ui` | 91 |

### 2.3 Non-GTK Widgets (External Libraries)

| Widget | Library | File(s) | Approx. Line(s) |
|--------|---------|---------|------------------|
| `WebKitWebView` | WebKitGTK 6.0 | `manuals-tab.ui` | 30 |
| `PanelStatusbar` | libpanel 1.x | `manuals-window.ui` | 65 |
| `ManualsPathBar` | (app custom) | `manuals-window.ui` | 67 |
| `PanelDock` | libpanel 1.x | `manuals-window.ui` | 265 |
| `PanelDockChild` | libpanel 1.x | `manuals-window.ui` | 267 |
| `PanelToggleButton` | libpanel 1.x | `manuals-window.ui` | 288 |
| `ManualsTreeExpander` | (app custom) | `manuals-window.ui` | 187 (inline) |
| `GThemedIcon` | GLib | `manuals-window.ui` | 189 (inline) |
| `ManualsSearchRow` | (app custom) | `manuals-window.ui` | 236 (inline) |
| `ManualsTag` | (app custom) | `manuals-window.ui` | 262 (inline) |
| `ManualsSearchEntry` | (app custom) | `manuals-tab.ui` | 61 |
| `GSettings` | GIO | `manuals-window.ui` | 409 |
| **Custom composite widgets** | | `manuals-bundle-dialog.ui` (ManualsBundleDialog), `manuals-install-button.ui` (ManualsInstallButton), `manuals-path-bar.ui` (ManualsPathBar), `manuals-path-button.ui` (ManualsPathButton), `manuals-search-entry.ui` (ManualsSearchEntry), `manuals-tab.ui` (ManualsTab) | |

---

## 3. Patterns Demonstrated

A comprehensive catalog of every GNOME platform pattern found across all UI files:

### Adwaita Patterns

| Pattern | File | Lines | Description |
|---------|------|-------|-------------|
| **AdwApplicationWindow** | `manuals-window.ui` | 5 | Top-level application window with integrated adaptive layout support |
| **AdwBreakpoint** | `manuals-window.ui` | 14 | Responsive design breakpoint: switches layout to "narrow" when width ≤ 600sp |
| **AdwHeaderBar** | `manuals-window.ui` | 273, 351, 374 | Custom header bars with title widgets, start/end children, and flat styling |
| **AdwLayout** | `manuals-window.ui` | 262, 340 | Named adaptive layouts ("wide", "narrow") inside AdwMultiLayoutView |
| **AdwLayoutSlot** | `manuals-window.ui` | 329, 336, 364, 371, 380, 400 | Slot-based content placement within AdwLayout — IDs: "statusbar", "stack", "sidebar_contents" |
| **AdwMultiLayoutView** | `manuals-window.ui` | 63 | Adaptive container switching between "wide" and "narrow" layouts based on breakpoints |
| **AdwNavigationPage** | `manuals-window.ui` | 349, 363 | Navigation pages for sidebar and content in narrow/split-view layout |
| **AdwNavigationSplitView** | `manuals-window.ui` | 347 | Split-view navigation with collapsible sidebar for narrow layouts |
| **AdwPreferencesDialog** | `manuals-bundle-dialog.ui` | 3 | Preferences-style dialog for SDK/documentation management |
| **AdwPreferencesGroup** | `manuals-bundle-dialog.ui` | 50, 63, 76 | Grouped preference rows with titles ("Installed SDKs", "Available SDKs") |
| **AdwPreferencesPage** | `manuals-bundle-dialog.ui` | 48 | Preferences page containing grouped list boxes for SDK selection |
| **AdwSpinnerPaintable** | `manuals-bundle-dialog.ui`, `manuals-window.ui` | 22, 83 | Animated spinner inside AdwStatusPage for loading states |
| **AdwStatusPage** | `manuals-bundle-dialog.ui` | 20, 37 | Status pages for "loading" (spinner), "empty" (sad-face icon + message) states |
| **AdwStatusPage** | `manuals-window.ui` | 81, 107 | Status pages for "loading" (with progress bar child), "empty" (browse documentation hint) |
| **AdwTabBar** | `manuals-window.ui` | 324 | Tab bar linked to AdwTabView for browser-style tab management |
| **AdwTabButton** | `manuals-window.ui` | 394 | Button in narrow-layout toolbar to open the AdwTabOverview |
| **AdwTabOverview** | `manuals-window.ui` | 344 | Overview mode showing all open tabs (narrow layout) |
| **AdwTabView** | `manuals-window.ui` | 137 | Tab container with close-page signal handler |
| **AdwToolbarView** | `manuals-window.ui` | 349, 358, 368 | Toolbar view with top header bar, content area, and bottom slot — used in both sidebar and content |
| **AdwWindowTitle** | `manuals-window.ui` | 278, 355 | Window title widget dynamically bound to tab title, shown in header bars |

### GTK Patterns

| Pattern | File | Lines | Description |
|---------|------|-------|-------------|
| **GtkStack + GtkStackPage** | `manuals-bundle-dialog.ui` | 13–108 | Stack-based page switching (loading / empty / list states) |
| **GtkStack + GtkStackPage** | `manuals-install-button.ui` | 5–28 | Two-page stack for Install ↔ Cancel button toggle with crossfade transition |
| **GtkStack + GtkStackPage** | `manuals-window.ui` | 77–143 | Three-page stack (loading / empty / tabs) for main content area |
| **GtkStack + GtkStackPage** | `manuals-window.ui` | 163–178 | Sidebar stack (browse / search modes) |
| **GtkRevealer** | `manuals-tab.ui` | 46 | Slide-up reveal animation for in-page search bar |
| **GtkSearchEntry** | `manuals-window.ui` | 149 | Sidebar search/filter entry with 100ms search delay |
| **GtkListView + GtkBuilderListItemFactory** | `manuals-path-button.ui` | 17–26 | List view with inline XML template factory for path navigation menus |
| **GtkListView + GtkBuilderListItemFactory** | `manuals-window.ui` | 171–262 | List views for sidebar browse (GtkNoSelection) and search (GtkSingleSelection), both with inline factory templates |
| **GtkListBox** | `manuals-bundle-dialog.ui` | 53, 66 | Traditional list boxes inside preference groups with `card` CSS class |
| **GtkPopover** | `manuals-path-button.ui` | 6 | Popover menu for path button navigation dropdown |
| **GtkGestureClick** | `manuals-path-button.ui` | 89, 97 | Click gestures for primary (button 1) and context (button 3) mouse actions |
| **GtkGestureClick** | `manuals-window.ui` | 22 | Capture-phase click gesture for global mouse button handling |
| **GtkShortcutController** | `manuals-tab.ui` | 6, 19, 37 | Keyboard shortcut controllers for zoom (Ctrl+/Ctrl-/Ctrl+0), search (slash, Escape), and tab management |
| **GtkShortcutController** | `manuals-window.ui` | 28 | Global keyboard shortcuts: Ctrl+K (sidebar search), Ctrl+F (tab search), Ctrl+W (close tab), Ctrl+T (new tab), Ctrl+N (new window), Alt+Left/Right (back/forward) |
| **GtkProgressBar** | `manuals-window.ui` | 91 | Progress bar embedded inside loading AdwStatusPage for SDK discovery progress |
| **GtkScrolledWindow + GtkViewport** | `manuals-path-bar.ui` | 8–13 | Horizontally scrollable path bar with external scrollbar policy |
| **GtkCssProvider** | `manuals-install-button.ui` | 32 | Named CSS provider object referenced in code |
| **GtkFilterListModel** | `manuals-bundle-dialog.ui` | 111, 118 | Data filtering: separates installed vs available SDKs |
| **GtkBoolFilter + GtkEveryFilter** | `manuals-bundle-dialog.ui` | 113–148 | Compound boolean filters for SDK list filtering (installed, EOL, inverted conditions) |
| **GtkSingleSelection** | `manuals-window.ui` | 199 | Single-selection model for search results list |
| **GtkNoSelection** | `manuals-path-button.ui` | 22 | No-selection model for path navigation (activate via click) |
| **GtkNoSelection** | `manuals-window.ui` | 178 | No-selection model for browse sidebar |
| **GtkListHeader** | `manuals-window.ui` | 211 (inline) | Sticky section headers in search results grouped by category |
| **GtkEventControllerKey** | `manuals-window.ui` | 158 | Capture-phase key controller on search entry |
| **GtkMenuButton** | `manuals-window.ui` | 307, 359, 375 | Hamburger menu buttons with menu-model references to GMenu |
| **GtkText** | `manuals-search-entry.ui` | 10 | Simple text entry (non-editable-looking search input) with placeholder |
| **GtkSeparator** | `manuals-tab.ui` | 52 | Divider between content and revealed search bar |
| **GtkBox** | multiple | — | Standard layout containers used extensively throughout in all orientations |
| **GtkButton** | multiple | — | Buttons with icon-name, label, action-name, various CSS classes (flat, circular, pill, text-button, small-button, large-button) |

### libpanel Patterns

| Pattern | File | Lines | Description |
|---------|------|-------|-------------|
| **PanelDock** | `manuals-window.ui` | 265 | Dock container with resizable start sidebar, center content, reveal behavior |
| **PanelDockChild** | `manuals-window.ui` | 267 | Child widget in dock with top-edge (header bar + tab bar), bottom-edge (statusbar), and center content |
| **PanelStatusbar** | `manuals-window.ui` | 65 | Status bar at bottom of window; contains prefix child (ManualsPathBar) |
| **PanelToggleButton** | `manuals-window.ui` | 288 | Toggle button linked to dock's start area visibility |

### Data Binding Patterns

| Pattern | File | Lines | Description |
|---------|------|-------|-------------|
| `GtkListItem` bindings | `manuals-path-button.ui` | 37–50, 100–128 | Extensive use of `<binding name="property"><lookup name="model-prop" type="TypeName">...</lookup></binding>` chaining |
| `GtkListHeader` bindings | `manuals-window.ui` | 216–222 | Section header bound to FoundryDocumentation item |
| `AdwWindowTitle` bindings | `manuals-window.ui` | 279–283 | Title dynamically bound to active tab's title property |
| `GtkBoolFilter` expressions | `manuals-bundle-dialog.ui` | 114–116 | `<lookup>` expression referencing GObject properties for filtering |
| `bind-source`/`bind-property` | `manuals-bundle-dialog.ui` | 80, 92 | Property bindings with `sync-create` and `invert-boolean` flags for toggle visibility |
| `bind-source`/`bind-property` | `manuals-window.ui` | 286, 312, 322 | Property bindings between PanelDock reveal state and header bar button visibility |
| Closure bindings | `manuals-path-button.ui` | 74–80 | `<closure function="invert_boolean" type="gboolean">` for boolean inversion |

---

## 4. Framework

**Language:** C (GNU11, compiled with GCC)

**Dependencies (from `meson.build`):**
| Library | Minimum Version |
|---------|-----------------|
| GTK 4 | 4.14 |
| libadwaita 1 (Adw) | 1.7 |
| libpanel 1 | 1.6 |
| WebKitGTK 6.0 | 2.42 |
| libdex 1 | 0.4 |
| libfoundry 1 | 1.1 |
| Flatpak | 1.0 |
| GLib 2.0 | 2.78 |
| Gom 1.0 | 0.4 |

**UI Definition Format:** GTK Builder XML (`.ui` files compiled into GResource bundle)

**Additional Runtime Content:**
- `src/manuals-tab.js` — injected into WebKitWebView to add scroll overshoot overlays (CSS-based edge-fade effects)
- `src/manuals-tab.css` — CSS style overrides for the WebKit content (dark mode support, `.devhelp-hidden` class, overshoot overlay layers)
- `src/style.css` — Application-wide CSS stylesheet loaded via GTK's CSS provider

**License:** GPL-3.0-or-later

---

## 5. Notable Design Elements

### 5.1 Adaptive Layout Strategy

The app employs a sophisticated dual-layout adaptive design:
- **Wide layout** (default): Uses `PanelDock` with a resizable sidebar (300px default), `AdwHeaderBar` with navigation buttons, `AdwTabBar` for tabs, and a `PanelStatusbar` at the bottom.
- **Narrow layout** (width ≤ 600sp): Switches via `AdwBreakpoint` to an `AdwNavigationSplitView` with collapsed sidebar, `AdwTabOverview` for tab management, and a bottom toolbar with back/forward/tab-overview buttons.
- The transition is handled by `AdwMultiLayoutView` with two named `AdwLayout` children and `AdwLayoutSlot` IDs for content routing.

### 5.2 Custom CSS Classes

| CSS Class | File | Purpose |
|-----------|------|---------|
| `view` | `manuals-window.ui` | Applied to `AdwApplicationWindow` root |
| `card` | `manuals-bundle-dialog.ui` | Rounded card-style list boxes with `12px` border-radius on first/last rows, separators |
| `pill` | `manuals-bundle-dialog.ui`, `manuals-window.ui` | Pill-shaped buttons |
| `large-button` | `manuals-bundle-dialog.ui` | Extra-large button variant |
| `text-button` | `manuals-install-button.ui` | Text-styled button |
| `install-progress` | `manuals-install-button.ui` | Linear-gradient progress indicator at button bottom, animated via `background-size` |
| `flat` | `manuals-path-button.ui`, `manuals-tab.ui`, `manuals-window.ui` | Flat-style buttons and header bars (no border/shadow) |
| `circular` | `manuals-tab.ui` | Circular (round) button for close/search-dismiss |
| `small-button` | `manuals-tab.ui` | Small circular close button in search bar |
| `dim-label` | `manuals-path-button.ui` | Dimmed text for path separators |
| `menu` | `manuals-path-button.ui` | Popover styled as menu |
| `navigation-sidebar` | `manuals-window.ui` | Navigation sidebar list styling |
| `toolbar` | `manuals-window.ui` | Bottom toolbar styling in narrow layout |
| `since` | `manuals-window.ui` (inline) | Tag styled with blue background for "since version" badges |
| `deprecated` | `src/style.css` | Red tag styling for deprecated API indicators |
| `stability` | `src/style.css` | Amber tag styling for stability level indicators |
| `installation`, `language` | `src/style.css` | Alpha-tinted tags for installation/language metadata |

### 5.3 WebView Content Styling

- `manuals-tab.css` injects `.devhelp-hidden` (display:none) — compatibility with Devhelp documentation format
- Dark mode support via `@media (prefers-color-scheme: dark)` with custom `--body-bg` variable
- Overshoot overlay system (`manuals-tab.js`): Creates fixed-position gradient overlays at top and bottom of scroll viewport to indicate scrollable content, matching modern mobile/desktop UX patterns
- Shadow suppression on `#main` element

### 5.4 Accessibility & Usability

- **Keyboard shortcuts** are declared in both `manuals-tab.ui` (zoom, search) and `manuals-window.ui` (global navigation) using `GtkShortcutController` + `GtkShortcut`
- **Tooltip text** on all toolbar buttons: "Toggle Sidebar", "Main Menu", "Search"
- **Translator comments** in UI strings: e.g., `comments="Translators: This is a verb, not a noun"` on "Filter…" and "Toggle Sidebar"
- **Search delay** of 100ms on sidebar filter entry to avoid excessive filtering during typing
- **Accessible labels** via `use-underline` on buttons (e.g., `_Install`, `_Cancel`)
- **Placeholder text** on search entries
- `show-end-title-buttons` set to `false` on sidebar header bar

### 5.5 Unusual / Sophisticated Configurations

1. **Inline GtkBuilderListItemFactory templates**: Both `manuals-path-button.ui` and `manuals-window.ui` embed complete `<interface>` templates as CDATA bytes inside `GtkBuilderListItemFactory`. The sidebar search results list factory uses a `GtkListHeader` for sectioned results with `FoundryDocumentation` header groups.

2. **Crossfade button transition**: `manuals-install-button.ui` uses `GtkStack` with `transition-type: crossfade` to smoothly animate between Install and Cancel buttons.

3. **Progress bar inside AdwStatusPage**: The loading status page in `manuals-window.ui` embeds a `GtkProgressBar` as a child widget (normally not seen in status pages).

4. **GtkBoolFilter expression chaining**: Complex filter chains using `GtkEveryFilter` with `GtkBoolFilter` children, `<lookup>` expressions referencing GObject types, and `invert` flags. Filters use the custom `FoundryDocumentationBundle` GObject type.

5. **GSettings directly in UI file**: A `GSettings` object (`org.gnome.Manuals`) is declared inside `manuals-window.ui`, bound to runtime settings.

6. **Two identical `primary_menu` GMenu definitions**: `manuals-window.ui` contains the `<menu id="primary_menu">` definition duplicated twice.

7. **GtkGestureClick propagation-phase="capture"**: Used on the window root to intercept all mouse clicks before child widgets, bound to a C handler.

8. **GtkText widget for search**: The custom `ManualsSearchEntry` uses a `GtkText` widget rather than `GtkEntry` or `GtkSearchEntry`, combined with a leading `GtkImage` icon and a trailing `GtkLabel` info/status indicator with monospace tabular-nums font feature (`tnum`) and translucent alpha.

9. **Pango attributes in UI**: `manuals-search-entry.ui` uses `<attributes>` with `foreground-alpha` and `font-features="tnum"` on the info label for search match counts.

10. **scroll-to-focus disabled**: `manuals-path-bar.ui` sets `scroll-to-focus: false` on `GtkViewport` to prevent automatic scrolling when path elements gain focus.

---

## 6. Summary Statistics

| Metric | Count |
|--------|-------|
| `.ui` files | 7 |
| `.blp` files | 0 |
| Unique Adw* widget types | 16 |
| Unique Gtk* widget types | 35 |
| Custom widget classes | 9 (ManualsBundleDialog, ManualsInstallButton, ManualsPathBar, ManualsPathButton, ManualsSearchEntry, ManualsTab, ManualsSearchRow, ManualsTreeExpander, ManualsTag) |
| libpanel widget types | 4 (PanelDock, PanelDockChild, PanelStatusbar, PanelToggleButton) |
| Inline list factory templates | 4 |
| GMenu definitions | 2 (duplicated primary_menu) |
| GtkShortcutController instances | 4 |
| GtkStack pages total | 8 |
| AdwStatusPage instances | 4 |
| Adaptive layout configurations | 2 (wide/narrow) |
