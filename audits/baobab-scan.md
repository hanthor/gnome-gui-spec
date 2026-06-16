# gnome-baobab (Disk Usage Analyzer) GUI Widget Audit

Scanned 17 files: `data/ui/*.ui` (16) + `data/gtk/menus.ui` (1). No `.blp` files.

---

## 1. Widget Inventory

### Adw (libadwaita) Widgets

| Widget | File | Line |
|--------|------|------|
| **AdwApplicationWindow** | `baobab-main-window.ui` | 3 (template parent) |
| **AdwToastOverlay** | `baobab-main-window.ui` | 8 |
| **AdwNavigationView** | `baobab-main-window.ui` | 11 |
| **AdwNavigationPage** | `baobab-main-window.ui` | 13, 49 |
| **AdwToolbarView** | `baobab-main-window.ui` | 17, 53, 162 |
| **AdwHeaderBar** | `baobab-main-window.ui` | 19, 56 |
| **AdwBanner** | `baobab-main-window.ui` | 80 |
| **AdwOverlaySplitView** | `baobab-main-window.ui` | 84 |
| **AdwBreakpointBin** | `baobab-main-window.ui` | 157 |
| **AdwBreakpoint** | `baobab-main-window.ui` | 197 |
| **AdwViewStack** | `baobab-main-window.ui` | 176 |
| **AdwViewStackPage** | `baobab-main-window.ui` | 178, 192 |
| **AdwSpinner** | `baobab-main-window.ui` | 213 |
| **AdwViewSwitcher** | `baobab-main-window.ui` | 219 |
| **AdwPreferencesDialog** | `baobab-preferences-dialog.ui` | 4 (template parent) |
| **AdwPreferencesPage** | `baobab-preferences-dialog.ui` | 7 |
| | `baobab-location-list.ui` | 3 (template parent) |
| **AdwPreferencesGroup** | `baobab-preferences-dialog.ui` | 9 |
| | `baobab-location-list.ui` | 5, 16 |
| **AdwActionRow** | `baobab-excluded-row.ui` | 3 (template parent) |
| **AdwBin** | `baobab-folder-display.ui` | 5 (template parent) |
| **AdwShortcutsDialog** | `shortcuts-dialog.ui` | 3 |
| **AdwShortcutsSection** | `shortcuts-dialog.ui` | 5, 47 |
| **AdwShortcutsItem** | `shortcuts-dialog.ui` | 8, 14, 20, 26, 32, 53, 59 |

### Gtk Containers

| Widget | File | Line |
|--------|------|------|
| **GtkBox** | `baobab-main-window.ui` | 75, 86, 88 |
| | `baobab-location-row.ui` | 5 |
| | `baobab-pathbar.ui` | 3 (template parent), 17 |
| | `baobab-pathbutton.ui` | 5 |
| | `baobab-folder-cell.ui` | 5 |
| | `baobab-file-cell.ui` | 10 |
| **GtkGrid** | `baobab-location-row.ui` | 9 |
| **GtkActionBar** | `baobab-main-window.ui` | 217 |
| **GtkSeparator** | `baobab-main-window.ui` | 152 |
| **GtkStack** | `baobab-main-window.ui` | 174 |
| **GtkScrolledWindow** | `baobab-main-window.ui` | 93 |
| | `baobab-pathbar.ui` | 7 |

### Gtk Controls

| Widget | File | Line |
|--------|------|------|
| **GtkMenuButton** | `baobab-main-window.ui` | 22 |
| **GtkButton** | `baobab-main-window.ui` | 65 |
| | `baobab-excluded-row.ui` | 6 |
| | `baobab-pathbutton.ui` | 3 (template parent) |
| **GtkImage** | `baobab-location-row.ui` | 12, 91 |
| | `baobab-pathbutton.ui` | 8 |
| | `baobab-folder-cell.ui` | 8 |
| **GtkLabel** | `baobab-location-row.ui` | 21, 33, 45, 51 |
| | `baobab-pathbutton.ui` | 11 |
| | `baobab-contents-cell.ui` | 5 |
| | `baobab-name-cell.ui` | 5 |
| | `baobab-size-cell.ui` | 5 |
| | `baobab-time-modified-cell.ui` | 5 |
| **GtkLevelBar** | `baobab-location-row.ui` | 65 |
| **GtkTreeExpander** | `baobab-file-cell.ui` | 5 |

### Gtk List/Column Models & Views

| Widget | File | Line |
|--------|------|------|
| **GtkColumnView** | `baobab-main-window.ui` | 97 |
| | `baobab-folder-display.ui` | 7 |
| **GtkColumnViewColumn** | `baobab-main-window.ui` | 110, 125, 140, 155 |
| | `baobab-folder-display.ui` | 34, 73, 98, 119 |
| **GtkSignalListItemFactory** | `baobab-main-window.ui` | 113, 128, 143, 158 |
| | `baobab-folder-display.ui` | 62, 87, 107, 132 |
| **GtkSingleSelection** | `baobab-main-window.ui` | 103 |
| **GtkNoSelection** | `baobab-folder-display.ui` | 18 |
| **GtkSortListModel** | `baobab-main-window.ui` | 105 |
| | `baobab-folder-display.ui` | 20 |
| **GtkStringSorter** | `baobab-folder-display.ui` | 48 |
| **GtkNumericSorter** | `baobab-folder-display.ui` | 84, 104, 125 |
| **GtkListBox** | `baobab-preferences-dialog.ui` | 11 |
| | `baobab-location-list.ui` | 8, 19 |
| **GtkListBoxRow** | `baobab-location-row.ui` | 3 (template parent) |

### Gtk Popovers, Gestures & Controllers

| Widget | File | Line |
|--------|------|------|
| **GtkPopoverMenu** | `baobab-main-window.ui` | 108 |
| **GtkGestureClick** | `baobab-main-window.ui` | 180 |
| **GtkShortcutController** | `baobab-main-window.ui` | 186 |
| **GtkShortcut** | `baobab-main-window.ui` | 189, 195, 201, 207 |
| **GtkEventControllerFocus** | `baobab-main-window.ui` | 241 |
| **GtkDropTarget** | `baobab-main-window.ui` | 244 |
| **GtkAdjustment** | `baobab-pathbar.ui` | 12 |

### Custom Composite Widgets (template classes)

| Widget | File | Line |
|--------|------|------|
| **BaobabWindow** | `baobab-main-window.ui` | 3 |
| **BaobabLocationList** | `baobab-location-list.ui` | 3 |
| **BaobabLocationRow** | `baobab-location-row.ui` | 3 |
| **BaobabPreferencesDialog** | `baobab-preferences-dialog.ui` | 4 |
| **BaobabFolderDisplay** | `baobab-folder-display.ui` | 5 |
| **BaobabPathbar** | `baobab-pathbar.ui` | 3 |
| **BaobabPathButton** | `baobab-pathbutton.ui` | 3 |
| **BaobabFileCell** | `baobab-file-cell.ui` | 3 |
| **BaobabFolderCell** | `baobab-folder-cell.ui` | 3 |
| **BaobabNameCell** | `baobab-name-cell.ui` | 3 |
| **BaobabSizeCell** | `baobab-size-cell.ui` | 3 |
| **BaobabContentsCell** | `baobab-contents-cell.ui` | 3 |
| **BaobabTimeModifiedCell** | `baobab-time-modified-cell.ui` | 3 |
| **BaobabExcludedRow** | `baobab-excluded-row.ui` | 3 |
| **BaobabProgressCell** | `baobab-file-cell.ui` | 17 (child object, no .ui) |
| **BaobabRingschart** | `baobab-main-window.ui` | 184 |
| **BaobabTreemap** | `baobab-main-window.ui` | 200 |
| **BaobabTreeListRowSorter** | `baobab-folder-display.ui` | 38, 77, 102, 123 |

**Total unique Gtk/Libadwaita widget classes: 37** (22 Adw, 15 Gtk)

---

## 2. Patterns Demonstrated

### A. `AdwApplicationWindow` as top-level template with composite children
- `baobab-main-window.ui:3-247` — Template parent `AdwApplicationWindow`, contains `AdwToastOverlay` > `AdwNavigationView` with 2 `AdwNavigationPage`s (home/results). Standard modern GNOME app shell.

### B. `AdwNavigationView` + `AdwNavigationPage` for full-screen push navigation
- `baobab-main-window.ui:11-49` — Two navigation pages with `tag="home"` and `tag="results"`. Programmatic push/pop between device list and scan results. Landmark pattern for multi-view apps.

### C. `AdwToolbarView` with distinct top-bar styles
- `baobab-main-window.ui:17,53` — Two `AdwToolbarView` instances, one per page. Results page uses `top-bar-style="raised"` (line 54) for visual separation. Each contains an `AdwHeaderBar`.

### D. `AdwHeaderBar` with `title-widget` and `end` children
- `baobab-main-window.ui:19-33` — Home page HeaderBar: `child type="end"` with `GtkMenuButton` (primary hamburger menu).
- `baobab-main-window.ui:56-70` — Results page HeaderBar: `title-widget` set to `BaobabPathbar` (breadcrumb), `end` child with reload `GtkButton`.

### E. `AdwBanner` for in-page warnings
- `baobab-main-window.ui:80-82` — Banner with `title="Files may take more space than shown"` as first child of the content GtkBox. Shows above the split view.

### F. `AdwOverlaySplitView` for adaptive sidebar + content
- `baobab-main-window.ui:84-157` — Config: `sidebar-width-fraction="0.5"`, `max-sidebar-width="99999"`. Sidebar contains folder display + column view. Content contains chart visualization. Draggable divider between folder list and charts.

### G. `AdwBreakpointBin` + `AdwBreakpoint` for responsive UI
- `baobab-main-window.ui:157-199` — `AdwBreakpoint` with condition `max-width: 500sp` changes `AdwViewSwitcher` policy from `wide` to `narrow`. Used for chart view switcher to collapse to icon-only on narrow widths.

### H. `AdwViewStack` + `AdwViewStackPage` for tab-like views
- `baobab-main-window.ui:176-212` — ViewStack with 2 pages, "rings" and "treemap", each having `icon_name` and `use-underline="True"` (mnemonics). Paired with `AdwViewSwitcher` for toggle buttons.

### I. `AdwViewSwitcher` for chart type selection
- `baobab-main-window.ui:219-222` — Bound to `chart_stack` via `property name="stack"`. Uses `policy="wide"` for labeled buttons; swaps to `narrow` at 500sp. Placed inside `GtkActionBar` at bottom of content.

### J. `GtkStack` for loading state (spinner vs content)
- `baobab-main-window.ui:174-215` — Outer `GtkStack` (`spinner_stack`) holds the `AdwViewStack` chart area and an `AdwSpinner`. Switches between scanning spinner and results.

### K. `GtkColumnView` + `GtkColumnViewColumn` + `GtkSignalListItemFactory` (modern list)
- `baobab-main-window.ui:97-185` — ColumnView with 4 columns (Folder, Size, Contents, Modified). Each column uses `GtkSignalListItemFactory` with `setup`, `bind`, `unbind`, `teardown` signal handlers. Model chain: `GtkSortListModel` > `GtkSingleSelection`.
- `baobab-folder-display.ui:7-140` — Second ColumnView in folder display area. Uses `GtkNoSelection` + `GtkSortListModel`. Each column has an explicit `sorter` property with `GtkStringSorter` / `GtkNumericSorter` + expression lookups (`lookup name="display_name"`, `lookup name="size"`, etc.). Demonstrates proper column sorting wiring.

### L. `GtkTreeExpander` for tree-list expand/collapse
- `baobab-file-cell.ui:5-24` — `GtkTreeExpander` binds `list-row` and `hide-expander` (via expression lookup). Wraps `BaobabProgressCell` + `BaobabNameCell`. Used in the ring-chart file list.

### M. `GtkListBox` + `GtkListBoxRow` for settings lists
- `baobab-location-list.ui:8-21` — Two ListBoxes (`local_list_box`, `remote_list_box`) inside `AdwPreferencesGroup`s. Uses `selection-mode="none"`, CSS class `boxed-list`. Custom `BaobabLocationRow` template rows.
- `baobab-preferences-dialog.ui:11-13` — ListBox for excluded folders in preferences.

### N. `GtkListBoxRow` with grid-based two-column layout
- `baobab-location-row.ui:3-95` — Rich row template: `GtkGrid` with icon (col 0, rowspan 3), name label + path label (col 1), total/available labels (col 2), `GtkLevelBar` for usage (col 1-2, row 2). Followed by chevron arrow. Classic modern list row.

### O. `GtkLevelBar` for disk usage visualization
- `baobab-location-row.ui:65-73` — `GtkLevelBar` with `visible="False"` (shown when scan has results). Spans 2 columns at bottom of the grid. Visual indicator of used disk space.

### P. `AdwPreferencesDialog` + `AdwPreferencesPage` + `AdwPreferencesGroup`
- `baobab-preferences-dialog.ui:4-17` — Preferences dialog with one page, one group ("Locations to Ignore"), containing a `GtkListBox`. Clean, standard preferences pattern.

### Q. `AdwActionRow` as excluded-folder row template
- `baobab-excluded-row.ui:3-14` — Template parent `AdwActionRow`, contains `GtkButton` with `icon-name="edit-delete-symbolic"` in `suffix` position using CSS class `flat`.

### R. `AdwShortcutsDialog` + `AdwShortcutsSection` + `AdwShortcutsItem`
- `shortcuts-dialog.ui:3-67` — Two sections ("General", "Scanning") with shortcut items bound to GActions (`win.*`, `app.*`).

### S. `GtkMenuButton` with inline menu model
- `baobab-main-window.ui:22-28` — `GtkMenuButton` referencing `primarymenu` menu model (defined at top of file). Icon-only hamburger button with `primary="true"`.

### T. Inline GMenu models for popovers
- `baobab-main-window.ui:1-35` — `<menu id="primarymenu">` model with sections for Scan, Preferences, Help, About.
- `baobab-treeview-menu.ui:1-12` — `<menu id="treeview_menu">` for right-click context menu with Open, Copy Path, Move to Trash actions.
- `menus.ui:1-31` — `<menu id="chartmenu">` for chart right-click context menu with Open, Copy, Trash, Go to Parent, Zoom In/Out.

### U. `GtkPopoverMenu` for context menus
- `baobab-main-window.ui:108-110` — `GtkPopoverMenu` child of ColumnView with `position="bottom"`. Programmatically set menu model and opened on right-click.

### V. `GtkGestureClick` for right-click detection
- `baobab-main-window.ui:180-183` — `GtkGestureClick` with `button="3"` (right-click). Signal `pressed` triggers `treeview_right_click_gesture_pressed` handler.

### W. `GtkShortcutController` with inline shortcuts
- `baobab-main-window.ui:186-212` — Four shortcuts defined inline: Menu key (show popover), Right arrow (expand row), Left arrow (collapse), `Alt+Up` (go to parent). Uses `propagation-phase="capture"`.

### X. Expression-based data binding with `<binding>`, `<lookup>`, `<closure>`
- `baobab-folder-display.ui:21-26` — `GtkSortListModel` binds `sorter` via `<lookup name="sorter">` on the ColumnView.
- `baobab-file-cell.ui:7-15` — `GtkTreeExpander` binds `list-row` and `hide-expander` via expression lookups on `BaobabScannerResults`.
- `baobab-size-cell.ui:9-13` — Data binding via `<closure>` that calls `format_size_cb` with a size expression.
- `baobab-contents-cell.ui:9-13` — Similar closure binding for `format_items_cb`.
- `baobab-name-cell.ui:9-12` — Direct `<lookup name="display_name">` binding.
- `baobab-time-modified-cell.ui:9-13` — Closure binding for `format_time_approximate_cb`.

### Y. Custom sorters: `BaobabTreeListRowSorter`
- `baobab-folder-display.ui:38-53` — Custom sorter class extending `GtkSorter`, used for tree-aware column sorting. Binds `sort-order` via expression lookup on `GtkColumnViewSorter`. Contains inner `GtkStringSorter`/`GtkNumericSorter` with expression lookups on model data.

### Z. `GtkDropTarget` for drag-and-drop
- `baobab-main-window.ui:244-246` — `GtkDropTarget` with `actions="copy"` as child of window template. Allows dropping folders to scan.

### AA. `GtkImage` with symbolic-circular CSS class
- `baobab-location-row.ui:12-18` — Location icon with `style class="symbolic-circular"`. Circular background for symbolic icons.

### BB. CSS style classes on widgets
- `.boxed-list` (list boxes), `.dim-label` + `.subtitle` (location path/total labels), `.numeric` (size/contents number labels), `.baobab-cell-box` (file/folder cell layouts), `.undershoot-top` (scrolled window), `.flat` (delete button), `.symbolic-circular` (location icons), `.pathbar` (path bar), `.contents` (navigation view).

### CC. `GtkAdjustment` with signal monitoring in scrolled pathbar
- `baobab-pathbar.ui:12-15` — Custom `GtkAdjustment` in `GtkScrolledWindow` with `hscrollbar-policy="external"`. Signals on `changed` and `notify::page-size` to auto-scroll and manage overflow buttons.

---

## 3. Best Code Examples

| Pattern | Best Example | Why |
|---------|-------------|-----|
| **AdwNavigationView push nav** | `baobab-main-window.ui:11-49` | Two named pages, tags, clean nav between home screen and results. Canonical example. |
| **AdwOverlaySplitView** | `baobab-main-window.ui:84-157` | Sidebar fraction, draggable divider, sidebar with column view, content with charts. |
| **AdwBreakpointBin responsive** | `baobab-main-window.ui:157-199` | Single breakpoint at 500sp toggling ViewSwitcher policy. Minimal, effective. |
| **AdwViewStack + AdwViewSwitcher** | `baobab-main-window.ui:176-222` | Two chart pages with icons, mnemonics, bound switcher in ActionBar. |
| **AdwToolbarView with raised bar** | `baobab-main-window.ui:53-55` | `top-bar-style="raised"` for visual separation in results page. |
| **AdwBanner** | `baobab-main-window.ui:80-82` | Simple warning banner about file size accuracy. |
| **GtkColumnView + GtkSignalListItemFactory** | `baobab-folder-display.ui:7-140` | Full column view with per-column sorters (StringSorter, NumericSorter), expression bindings, signal factories. Most complete example. |
| **GtkTreeExpander** | `baobab-file-cell.ui:5-24` | Binds list-row, hide-expander, wraps progress + name cells. |
| **Expression data binding** | `baobab-folder-display.ui:21-30` | `<binding>` + `<lookup>` pattern for model-sorter binding. |
| **Closure-based cell formatting** | `baobab-size-cell.ui:9-14` | `<closure>` calling `format_size_cb` with expression lookup. |
| **GtkListBoxRow grid layout** | `baobab-location-row.ui:3-95` | Two-column grid: icon (rowspan 3), name/path in col 1, size info in col 2, LevelBar below. Rich row layout. |
| **GtkLevelBar** | `baobab-location-row.ui:65-73` | Disk usage bar, hidden until data, spans 2 columns. |
| **AdwPreferencesDialog** | `baobab-preferences-dialog.ui:4-17` | Clean one-page dialog with group + ListBox. |
| **AdwActionRow suffix button** | `baobab-excluded-row.ui:3-14` | Flat icon-only delete button in suffix slot. |
| **AdwLocationList as AdwPreferencesPage** | `baobab-location-list.ui:3-22` | Page with two `AdwPreferencesGroup`s, each with `boxed-list` ListBox. |
| **AdwShortcutsDialog** | `shortcuts-dialog.ui:1-67` | Two sections, items bound to GActions. |
| **Inline GMenu model** | `baobab-main-window.ui:1-35` | Primary menu with 2 sections, section separator, GActions. |
| **GtkPopoverMenu context menu** | `baobab-main-window.ui:108-110` + `baobab-treeview-menu.ui` | PopoverMenu child of ColumnView, positioned `bottom`, programmatic menu model assignment. |
| **GtkGestureClick right-click** | `baobab-main-window.ui:180-183` | `button="3"` gesture for right-click context menu trigger. |
| **GtkShortcutController** | `baobab-main-window.ui:186-212` | Inline shortcuts for menu key, arrow navigation, Alt+Up. Capture phase. |
| **Custom sorter (BaobabTreeListRowSorter)** | `baobab-folder-display.ui:38-53` | Tree-aware sorter binding sort-order, wrapping inner sorter. |
| **GtkDropTarget** | `baobab-main-window.ui:244-246` | `actions="copy"`, child of window for folder drop. |
| **GtkStack loading state** | `baobab-main-window.ui:174-215` | Spinner/content swap. Clean pattern. |
| **CSS style classes** | `baobab-location-row.ui:39-41,58-59,67-68` | `.dim-label`, `.subtitle`, `.boxed-list`, `.numeric`, `.flat`, `.symbolic-circular`, `.baobab-cell-box`. |
