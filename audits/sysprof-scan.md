# Sysprof UI Scan Report

**Scanned:** 38 `.ui` files, 0 `.blp` files in `sources/sysprof/`

---

## 1. Widget Inventory

### Adwaita (Adw*) Widgets

| Widget | File (relative to `sources/sysprof/src/sysprof/`) | Approx. Lines |
|---|---|---|
| `AdwApplicationWindow` | `sysprof-window.ui` | 10 |
| `AdwComboRow` | `sysprof-greeter.ui` | 104, 379 |
| `AdwEntryRow` | `sysprof-greeter.ui` | 203, 208 |
| `AdwExpanderRow` | `sysprof-greeter.ui` | 89 |
| `AdwHeaderBar` | `sysprof-dbus-utility.ui` | 11; `sysprof-greeter.ui` | 44; `sysprof-memory-section.ui` | 193; `sysprof-process-dialog.ui` | 8; `sysprof-recording-pad.ui` | 14; `sysprof-samples-section.ui` | 194; `sysprof-window.ui` | 48, 115 |
| `AdwNavigationPage` | `sysprof-window.ui` | 95, 104 |
| `AdwOverlaySplitView` | `sysprof-window.ui` | 91, 105 |
| `AdwPreferencesGroup` | `sysprof-greeter.ui` | 68, 131, 145, 156; 163, 194, 201, 224, 251, 258, 272, 283, 294, 302, 310, 320, 343, 356, 375, 388, 402 |
| `AdwPreferencesPage` | `sysprof-greeter.ui` | 65, 192, 223, 250, 271, 341, 355 |
| `AdwShortcutsDialog` | `gtk/shortcuts-dialog.ui` | 3 |
| `AdwShortcutsItem` | `gtk/shortcuts-dialog.ui` | 8 |
| `AdwShortcutsSection` | `gtk/shortcuts-dialog.ui` | 5 |
| `AdwSpinner` | `sysprof-window.ui` | 188 |
| `AdwSwitchRow` | `sysprof-greeter.ui` | 72, 133, 147, 169, 185, 235, 244, 254 |
| `AdwToolbarView` | `sysprof-dbus-utility.ui` | 6; `sysprof-greeter.ui` | 42; `sysprof-memory-section.ui` | 187; `sysprof-process-dialog.ui` | 7; `sysprof-recording-pad.ui` | 13; `sysprof-samples-section.ui` | 187; `sysprof-window.ui` | 99, 109 |
| `AdwViewStack` | `sysprof-counters-section.ui` | 30; `sysprof-cpu-section.ui` | 89; `sysprof-dbus-section.ui` | 55; `sysprof-energy-section.ui` | 105; `sysprof-graphics-section.ui` | 58; `sysprof-greeter.ui` | 59; `sysprof-marks-section.ui` | 80; `sysprof-memory-section.ui` | 114; `sysprof-network-section.ui` | 56; `sysprof-process-dialog.ui` | 29; `sysprof-processes-section.ui` | 72; `sysprof-samples-section.ui` | 100; `sysprof-storage-section.ui` | 55; `sysprof-window.ui` | 135 |
| `AdwViewStackPage` | (same files as AdwViewStack) | throughout |
| `AdwViewSwitcher` | `sysprof-greeter.ui` | 46 |
| `AdwViewSwitcherBar` | `sysprof-counters-section.ui` | 47; `sysprof-cpu-section.ui` | 268; `sysprof-dbus-section.ui` | 258; `sysprof-energy-section.ui` | 226; `sysprof-graphics-section.ui` | 188; `sysprof-marks-section.ui` | 160; `sysprof-memory-section.ui` | 177; `sysprof-network-section.ui` | 200; `sysprof-process-dialog.ui` | 96; `sysprof-processes-section.ui` | 246; `sysprof-samples-section.ui` | 178; `sysprof-storage-section.ui` | 192 |
| `AdwWindow` | `sysprof-greeter.ui` | 5; `sysprof-process-dialog.ui` | 3; `sysprof-recording-pad.ui` | 3 |
| `AdwWindowTitle` | `sysprof-dbus-utility.ui` | 13; `sysprof-memory-section.ui` | 196; `sysprof-process-dialog.ui` | 10; `sysprof-recording-pad.ui` | 17; `sysprof-samples-section.ui` | 197; `sysprof-window.ui` | 102, 120 |
| `AdwActionRow` | `sysprof-greeter.ui` | 262, 274, 284, 296, 312, 322, 345, 363, 383, 404 |

### GTK (Gtk*) Widgets

| Widget | File(s) | Approx. Lines |
|---|---|---|
| `GtkAnyFilter` | `sysprof-dbus-section.ui` | 82; `sysprof-energy-section.ui` | 249; `sysprof-graphics-section.ui` | 204 |
| `GtkBox` | (nearly every file) | throughout |
| `GtkBuilderListItemFactory` | (many files) | throughout |
| `GtkButton` | `sysprof-entry-popover.ui` | 41; `sysprof-greeter.ui` | 387, 424, 431, 438; `sysprof-mark-chart.ui` | 65; `sysprof-recording-pad.ui` | 60; `sysprof-session-filters-widget.ui` | 100; `sysprof-sidebar.ui` | 26, 34, 42, 50, 58; `sysprof-task-row.ui` | 40; `sysprof-time-scrubber.ui` | 25; `sysprof-window.ui` | 128, 131, 137, etc. |
| `GtkCenterBox` | `sysprof-window.ui` | 118 |
| `GtkColumnView` | `sysprof-callgraph-view.ui` | 24, 75, 107; `sysprof-counters-section.ui` | 41; `sysprof-cpu-section.ui` | 139, 208; `sysprof-dbus-section.ui` | 60; `sysprof-energy-section.ui` | 161; `sysprof-files-section.ui` | 10; `sysprof-graphics-section.ui` | 103; `sysprof-logs-section.ui` | 60; `sysprof-mark-table.ui` | 11; `sysprof-marks-section.ui` | 133; `sysprof-memory-callgraph-view.ui` | 5, 50, 107; `sysprof-memory-section.ui` | 220; `sysprof-metadata-section.ui` | 10; `sysprof-network-section.ui` | 99; `sysprof-process-dialog.ui` | 35, 133, 231; `sysprof-processes-section.ui` | 117; `sysprof-storage-section.ui` | 95; `sysprof-traceables-utility.ui` | 7, 119; `sysprof-weighted-callgraph-view.ui` | 5, 50, 107 |
| `GtkColumnViewColumn` | (same files as GtkColumnView) | throughout |
| `GtkCustomSorter` | `sysprof-callgraph-view.ui` | 28; `sysprof-memory-callgraph-view.ui` | 35, 48, 93, 106, 153, 166; `sysprof-weighted-callgraph-view.ui` | 35, 48, 93, 106, 153, 166 |
| `GtkEntry` | `sysprof-entry-popover.ui` | 34 |
| `GtkEventControllerMotion` | `sysprof-time-scrubber.ui` | 8 |
| `GtkFilterListModel` | (many files) | throughout |
| `GtkFlattenListModel` | `sysprof-cpu-section.ui` | 140; `sysprof-energy-section.ui` | 178; `sysprof-graphics-section.ui` | 115; `sysprof-marks-section.ui` | 140; `sysprof-network-section.ui` | 116; `sysprof-storage-section.ui` | 110 |
| `GtkGestureClick` | `sysprof-mark-chart-row.ui` | 22 |
| `GtkGestureDrag` | `sysprof-time-scrubber.ui` | 15 |
| `GtkGrid` | `sysprof-frame-utility.ui` | 8 |
| `GtkImage` | `sysprof-files-section.ui` | 86; `sysprof-process-dialog.ui` | 222, 249; `sysprof-session-filters-widget.ui` | 55 |
| `GtkInscription` | `sysprof-callgraph-view.ui` | 35, 78; `sysprof-cpu-section.ui` | 206, 218; `sysprof-energy-section.ui` | 210, 222; `sysprof-graphics-section.ui` | 140, 152; `sysprof-logs-section.ui` | 110, 125; `sysprof-mark-chart-row.ui` | 44; `sysprof-mark-chart.ui` | 54; `sysprof-memory-section.ui` | 259; `sysprof-network-section.ui` | 77; `sysprof-process-dialog.ui` | 280; `sysprof-storage-section.ui` | 73; `sysprof-traceables-utility.ui` | 130 |
| `GtkLabel` | (nearly every file) | throughout |
| `GtkListBox` | `sysprof-greeter.ui` | 55, 380; `sysprof-sidebar.ui` | 11 |
| `GtkListHeader` | `sysprof-cpu-section.ui` | 108; `sysprof-energy-section.ui` | 117; `sysprof-graphics-section.ui` | 69; `sysprof-mark-chart.ui` | 48 |
| `GtkListItem` | (many files — inline factories) | throughout (hundreds of occurrences as factory templates) |
| `GtkListView` | `sysprof-counters-section.ui` | 35; `sysprof-cpu-section.ui` | 93; `sysprof-energy-section.ui` | 109; `sysprof-graphics-section.ui` | 63; `sysprof-mark-chart.ui` | 12; `sysprof-marks-section.ui` | 95; `sysprof-memory-section.ui` | 219; `sysprof-network-section.ui` | 69; `sysprof-processes-section.ui` | 78; `sysprof-samples-section.ui` | 216; `sysprof-session-filters-widget.ui` | 45; `sysprof-storage-section.ui` | 60; `sysprof-window.ui` | 206 |
| `GtkMapListModel` | `sysprof-mark-chart.ui` | 23 |
| `GtkMenuButton` | `sysprof-greeter.ui` | 49, 407; `sysprof-window.ui` | 163, 172, 182, 185 |
| `GtkMultiFilter` | `sysprof-window.ui` | 162 |
| `GtkMultiSelection` | `sysprof-cpu-section.ui` | 220; `sysprof-process-dialog.ui` | 40, 138, 236 |
| `GtkNoSelection` | (many files) | throughout |
| `GtkNumericSorter` | (many files — column views) | throughout |
| `GtkOverlay` | `sysprof-window.ui` | 224 |
| `GtkPaned` | `sysprof-traceables-utility.ui` | 5 |
| `GtkPopover` | `sysprof-entry-popover.ui` | 4; `sysprof-window.ui` | 170, 199 |
| `GtkProgressBar` | `sysprof-task-row.ui` | 50; `sysprof-window.ui` | 227 |
| `GtkScrolledWindow` | (nearly every section) | throughout |
| `GtkSearchEntry` | `sysprof-callgraph-view.ui` | 60; `sysprof-dbus-section.ui` | 263; `sysprof-files-section.ui` | 19 |
| `GtkSeparator` | (many section files) | throughout |
| `GtkShortcutController` | `sysprof-callgraph-view.ui` | 116; `sysprof-greeter.ui` | 8; `sysprof-window.ui` | 12 |
| `GtkShortcut` | (same as GtkShortcutController) | |
| `GtkSingleSelection` | `sysprof-dbus-section.ui` | 63; `sysprof-files-section.ui` | 14; `sysprof-logs-section.ui` | 65; `sysprof-mark-table.ui` | 25; `sysprof-metadata-section.ui` | 18; `sysprof-processes-section.ui` | 80; `sysprof-traceables-utility.ui` | 11 |
| `GtkSortListModel` | (many files) | throughout |
| `GtkStack` | `sysprof-window.ui` | 232 |
| `GtkStringFilter` | `sysprof-callgraph-view.ui` | 84; `sysprof-cpu-section.ui` | 24; `sysprof-dbus-section.ui` | 87; `sysprof-energy-section.ui` | 20; `sysprof-files-section.ui` | 29; `sysprof-graphics-section.ui` | 22; `sysprof-network-section.ui` | 21; `sysprof-storage-section.ui` | 22 |
| `GtkStringList` | `sysprof-greeter.ui` | 453 |
| `GtkStringSorter` | (many files — column views) | throughout |
| `GtkSwitch` | `sysprof-greeter.ui` | 93, 266, 277, 289, 305, 316, 349, 367, 393, 400 |
| `GtkTextBuffer` | `sysprof-dbus-utility.ui` | 30 |
| `GtkTextView` | `sysprof-dbus-utility.ui` | 23 |
| `GtkToggleButton` | `sysprof-window.ui` | 123, 179 |
| `GtkWindowHandle` | `sysprof-recording-pad.ui` | 12 |

---

## 2. Patterns Demonstrated

### Application Shell Patterns

| Pattern | Where Used | Description |
|---|---|---|
| `AdwApplicationWindow` | `sysprof-window.ui:10` | Main app window subclassing AdwApplicationWindow |
| `AdwToolbarView` | `sysprof-window.ui:109`, greet/process/recording pad | Primary content container with header-bar top slot and optional bottom bar |
| `AdwOverlaySplitView` (×2 nested) | `sysprof-window.ui:91,105` | Two nested OverlaySplitViews for left sidebar + right utility panel |
| `AdwNavigationPage` | `sysprof-window.ui:95,104` | Wraps child content within OverlaySplitView for navigation stack support |
| `AdwHeaderBar` | `sysprof-window.ui:115` + 6 others | Multiple HeaderBars in different windows/utilities |
| `AdwWindowTitle` | 6 files | Window title widget with title/subtitle binding |
| `AdwViewSwitcher` (inline header bar) | `sysprof-greeter.ui:46` | Switcher between Profiler/App/Counters/D-Bus/Graphics/System tabs embedded in HeaderBar |
| `AdwViewSwitcherBar` (bottom bar) | 12 section files | Inline view switcher bar for chart/table toggle |
| `AdwWindow` | `sysprof-greeter.ui:5`, `sysprof-process-dialog.ui:3`, `sysprof-recording-pad.ui:3` | Subclassed for non-main windows (greeter, process dialog, recording pad) |
| `GtkShortcutController` | 3 files | Declarative keyboard shortcuts (Ctrl+N, F9, Escape, etc.) |
| `GtkStack` | `sysprof-window.ui:232` | Master stack holding all section pages |
| `GtkMenuButton` + GMenu | 4 files | Popover menus from header bar buttons (primary_menu, view_menu) |
| `GtkToggleButton` for sidebar toggle | `sysprof-window.ui:123,179` | Icon-only toggle buttons bound to OverlaySplitView show-sidebar |

### Preferences / Settings Patterns

| Pattern | Where Used | Description |
|---|---|---|
| `AdwPreferencesPage` | `sysprof-greeter.ui:65,192,223,250,271,341,355` | Multiple preference pages inside ViewStack for recording configuration |
| `AdwPreferencesGroup` | `sysprof-greeter.ui` (~26 groups) | Grouped rows within preference pages with titles |
| `AdwSwitchRow` | `sysprof-greeter.ui` (~8 rows) | Preference toggles with title/subtitle |
| `AdwActionRow` + GtkSwitch (suffix child) | `sysprof-greeter.ui` (~10 rows) | Action rows with embedded switch as suffix child (activatable-widget pattern) |
| `AdwExpanderRow` | `sysprof-greeter.ui:89` | Expandable preferences row with nested child (stack size selector) |
| `AdwComboRow` | `sysprof-greeter.ui:104,379` | Dropdown selector rows (stack size, power profile) |
| `AdwEntryRow` | `sysprof-greeter.ui:203,208` | Text entry rows for command line and working directory |
| `GtkListBox` with `navigation-sidebar` CSS | `sysprof-greeter.ui:55`, `sysprof-sidebar.ui:11` | Custom navigation sidebar via GtkListBox |
| `GListStore` (object model) | `sysprof-greeter.ui:459` | Inline definition of stack size options |
| `GtkEntry` + `GtkButton` in popover | `sysprof-entry-popover.ui` | Custom entry popover with suggested-action button |
| CSS classes: `caption`, `dim-label`, `boxed-list`, `large-button`, `pill`, `suggested-action` | greeter | Rich CSS styling on various elements |

### View Switching / Tab Navigation

| Pattern | Where Used | Description |
|---|---|---|
| `AdwViewStack` + `AdwViewStackPage` | 14 files | Multi-page content switching in every section, each with icon-name and translatable title |
| `AdwViewSwitcherBar` auto-bound to stack | 12 files | Bottom inline switcher bar with `reveal=true`, `stack` property bound to AdwViewStack |
| `AdwViewSwitcher` (header bar) | `sysprof-greeter.ui:46` | Header-bar tab switcher for top-level pages |

### Data Tables (Column Views)

| Pattern | Where Used | Description |
|---|---|---|
| `GtkColumnView` | 19+ files | Modern list-view-based column tables, used pervasively |
| `GtkColumnViewColumn` | (same as ColumnView) | Column definitions with title, sorter, factory |
| `GtkBuilderListItemFactory` with inline `GtkListItem` templates | (dozens of instances) | Inline XML template for each column's cell rendering |
| `GtkStringSorter` | many column views | Sortable columns by string expression |
| `GtkNumericSorter` | many column views | Sortable columns by numeric expression |
| `GtkCustomSorter` | `sysprof-callgraph-view.ui`, memory/weighted callgraph | Application-defined sort ordering |
| `GtkSortListModel` | many files | Wrapping models with sorters wired to column_view |
| `GtkFilterListModel` + `GtkStringFilter` | many files | Substring/prefix/exact text filtering |
| `GtkAnyFilter` (multi-field search) | `sysprof-dbus-section.ui:82`, `sysprof-energy-section.ui:249`, `sysprof-graphics-section.ui:204` | OR-filter across multiple fields (sender/dest/path/interface/member) |
| `GtkFlattenListModel` | 6 files | Flatten nested lists from grouped counter data |
| `GtkNoSelection` | many files | Disable selection for display-only lists |
| `GtkSingleSelection` | 7 files | Single row selection with binding to utility/detail pane |
| `GtkMultiSelection` | `sysprof-cpu-section.ui:220`, `sysprof-process-dialog.ui` | Multi-row selection for bulk operations |
| CSS class `data-table` | 12 files | Style class applied to column views for consistent data table look |
| `GtkSearchEntry` for filtering | `sysprof-callgraph-view.ui:60`, dbus-section, files-section | Live search filter bound to GtkStringFilter |

### List Views (GtkListView)

| Pattern | Where Used | Description |
|---|---|---|
| `GtkListView` | 13 files | List model rendering with factory pattern |
| `GtkListHeader` (header-factory) | `sysprof-cpu-section.ui:108`, energy, graphics, mark-chart | Custom section headers in ListViews |
| `GtkMapListModel` | `sysprof-mark-chart.ui:23` | Transforms model items via a map function |

### Time Scrubbing / Chart Patterns

| Pattern | Where Used | Description |
|---|---|---|
| `SysprofTimeScrubber` (custom widget) | 11 section files | Custom time axis with ruler, drag gestures, zoom controls |
| `SysprofChart` (custom widget) | 12 section files | Custom chart rendering widget used for overview and inline sparklines |
| `SysprofLineLayer` (custom) | counter section UI files | Line chart layer with spline/fill/dashed options |
| `SysprofTimeSpanLayer` (custom) | marks, processes, dbus, logs, network, storage sections | Time-span bar chart layer for duration events |
| `SysprofColumnLayer` (custom) | `sysprof-memory-section.ui:11`, `sysprof-samples-section.ui:17` | Column chart layer for stack traces |
| `SysprofDuplexLayer` (custom) | `sysprof-network-section.ui:92`, `sysprof-storage-section.ui:88` | Dual (upper/lower) mirrored layer for read/write or tx/rx pairs |
| `SysprofValueAxis` (custom) | many section-counter files | Y-axis with min/max value definition |
| `SysprofXYSeries` / `SysprofTimeSeries` (custom) | many files | Data series bound via expressions to model fields |
| `SysprofTimeFilterModel` (custom) | many files | Time-range filtering model tied to session time selection |
| `SysprofSampledModel` (custom) | marks, memory, samples sections | Sub-sampling model for large datasets |
| `SysprofSingleModel` (custom) | several files | Single-item wrapper model for inline charts |
| `SysprofTimeLabel` (custom widget) | 9+ files | Formatted time display cell in column views |
| `SysprofChartLayerFactory` (custom) | cpu, energy, graphics sections | Factory that creates chart layers from resource templates |
| Zoom/seek controls | `sysprof-sidebar.ui:26-58`, `sysprof-window.ui:131-161` | Flat icon buttons for seek-backward/forward, zoom-in/out/reset |

### Callgraph / Flamegraph Patterns

| Pattern | Where Used | Description |
|---|---|---|
| `SysprofCallgraphView` (custom, GtkWidget subclass) | `sysprof-callgraph-view.ui:3` | Three-pane callgraph: functions → callers → descendants |
| `SysprofWeightedCallgraphView` (extends CallgraphView) | `sysprof-weighted-callgraph-view.ui:3` | Adds Self/Total/Hits columns via `internal-child` overrides |
| `SysprofMemoryCallgraphView` (extends CallgraphView) | `sysprof-memory-callgraph-view.ui:3` | Adds Self/Total/Size columns; wraps CallgraphView for memory profiling |
| `SysprofTreeExpander` (custom) | `sysprof-callgraph-view.ui:113` | Expandable tree rows with keyboard navigation (Right/Left/Space) |
| `SysprofSymbolLabel` (custom) | `sysprof-callgraph-view.ui:145` | Symbol name label with styling |
| `SysprofCategoryIcon` (custom) | `sysprof-callgraph-view.ui:172`, memory-section, samples-section | Category color icon |
| `SysprofProgressCell` (custom) | memory/weighted callgraph views | Progress bar cell for fraction visualization |
| `SysprofFlameGraph` (custom widget) | `sysprof-samples-section.ui:139` | Flamegraph visualization bound to callgraph |
| Right-click context menu (GMenu) | `sysprof-callgraph-view.ui` (via binding from descendant_menu) | Context menu on tree rows for Make Function Root and callgraph options |
| `GtkCustomSorter` | callgraph views | Custom sort ordering for self/total columns |
| `PanelPaned` (custom, from libpanel) | `sysprof-callgraph-view.ui:6,10` | Resizable panes for three-panel callgraph layout |

### Popover Patterns

| Pattern | Where Used | Description |
|---|---|---|
| `GtkPopover` with inline `GtkBox` content | `sysprof-entry-popover.ui:4` | Custom entry popover for adding environment variables |
| `GtkPopover` from `GtkMenuButton` | `sysprof-window.ui:170,199` | Filters popover and tasks popover with scrolled content |
| CSS class `menu` on popover | `sysprof-window.ui:171` | Style class for menu-like popover appearance |

### Progress / Task Patterns

| Pattern | Where Used | Description |
|---|---|---|
| `AdwSpinner` as child of `GtkMenuButton` | `sysprof-window.ui:188` | Spinner inside menu button for background task indicator |
| `SysprofTaskRow` (custom) | `sysprof-task-row.ui:3` | Task row with heading/caption/progress bar/cancel button |
| `GtkProgressBar` with `osd` CSS | `sysprof-task-row.ui:50`, `sysprof-window.ui:227` | Progress bar for document loading |
| CSS class `tasks` on popover | `sysprof-window.ui:200` | Styling for tasks popover |

### Dialog / Window Patterns

| Pattern | Where Used | Description |
|---|---|---|
| `GtkWindowHandle` | `sysprof-recording-pad.ui:12` | Draggable window handle for recording pad (floating window) |
| CSS class `messagedialog` | `sysprof-recording-pad.ui:6` | Message-dialog styling on recording pad window |
| CSS class `response-area` | `sysprof-recording-pad.ui:57` | Dialog button area styling |
| CSS class `destructive-action` | `sysprof-recording-pad.ui:63` | Destructive stop-recording button |

### Keyboard Shortcuts Dialog

| Pattern | Where Used | Description |
|---|---|---|
| `AdwShortcutsDialog` | `gtk/shortcuts-dialog.ui:3` | Standard GNOME shortcuts window |
| `AdwShortcutsSection` | `gtk/shortcuts-dialog.ui:5` | Grouped sections (Recording View, General) |
| `AdwShortcutsItem` with accelerator | `gtk/shortcuts-dialog.ui:8` | Individual shortcut entries with keybindings |

### Model/Data Binding Patterns

| Pattern | Where Used | Description |
|---|---|---|
| `<binding name="..."><lookup name="...">` chains | (pervasive — all files) | Deep property binding chains through model hierarchies |
| `<closure>` elements | many files | C function callbacks for formatting/transformation (e.g., `format_size`, `format_time`, `format_number`) |
| `GtkStringFilter` with expression lookups | many files | Filter by matching string property |
| `GtkAnyFilter` (multi-field OR) | dbus/energy/graphics sections | Complex filter across multiple data fields |
| `GtkFilterListModel.set_incremental(True)` | `sysprof-dbus-section.ui:79` | Incremental filtering for large datasets |
| Bidirectional bindings (`bind-flags="bidirectional|sync-create"`) | `sysprof-greeter.ui` (many) | Two-way property binding from UI to recording template |

### Notifications / Overlays

| Pattern | Where Used | Description |
|---|---|---|
| `GtkOverlay` | `sysprof-window.ui:224` | Overlay widget (progress bar on top of content) |
| `GtkProgressBar` with `osd` style | `sysprof-window.ui:227` | Overlay-style progress bar for document loading |

### Sidebar / Navigation Patterns

| Pattern | Where Used | Description |
|---|---|---|
| `navigation-sidebar` CSS class | `sysprof-greeter.ui:57`, `sysprof-sidebar.ui:14` | Standard GNOME sidebar styling |
| `SysprofSection` (custom) | 13 section files | Base class for side-chain sections with `category` grouping |
| `SysprofSidebar` (custom) | `sysprof-sidebar.ui:3` | Section list with zoom/seek controls |
| Category grouping | `sysprof-window.ui` | Sections grouped as "callgraph", "processes", "counters", "auxiliary" |
| Indicator badge | logs/marks/memory/processes/dbus sections | Live badge count via `<binding name="indicator">` with `format_number` closure |

### Spinner / Loading Patterns

| Pattern | Where Used | Description |
|---|---|---|
| `AdwSpinner` inside menu button | `sysprof-window.ui:188` | Loading indicator for document operations |
| `GtkProgressBar` overlay | `sysprof-window.ui:227` | Overlay progress bar during document loading |

### Resize / Pane Patterns

| Pattern | Where Used | Description |
|---|---|---|
| `PanelPaned` (libpanel) | `sysprof-callgraph-view.ui:6,10` | Custom paned widget from libpanel for callgraph three-pane layout |
| `GtkPaned` | `sysprof-traceables-utility.ui:5` | Vertical split between traceables list and stack trace detail |

### Utility Sidebar Patterns

| Pattern | Where Used | Description |
|---|---|---|
| Right sidebar bound to section's `utility` property | `sysprof-window.ui:241` (binding to `utility` of visible child) | Dynamic right sidebar showing section-specific detail |
| `AdwToolbarView` with `utility` CSS class | dbus-utility, memory-section, samples-section | Utility pane with its own toolbar |
| `SysprofTraceablesUtility` | `sysprof-samples-section.ui:214`, memory-section | Traceable list view with symbol resolution |
| `SysprofFrameUtility` | `sysprof-frame-utility.ui:4` | Detail panel for a single frame/event (Type, Time, CPU, PID) |
| `SysprofDBusUtility` | `sysprof-dbus-utility.ui:4` | D-Bus message detail viewer with monospace TextView |

### Misc Patterns

| Pattern | Where Used | Description |
|---|---|---|
| `<requires lib="gtk" version="4.0"/>` | multiple files | Declares GTK4 dependency |
| `<requires lib="Adw" version="1.0"/>` | multiple files | Declares libadwaita 1.x dependency |
| `<requires lib="Panel" version="1.0"/>` | `sysprof-window.ui:4` | Declares libpanel 1.x dependency |
| `translatable="yes"` context | many files | Full i18n support with context annotations |
| `<signal name="..." handler="..." swapped="true"/>` | many files | Signal handlers with `swapped` (self/user_data swap) |
| `monospace` on `GtkTextView` | `sysprof-dbus-utility.ui:24` | Monospace font for D-Bus message display |
| Tabular number features (`'tnum'`) | recording-pad, process-dialog | OpenType tabular numbers for aligned numeric display |
| Bold/monospace Pango attributes | several files | Inline font styling via `<attributes>` element |
| `GtkImage` as boolean indicator | files-section (compressed), process-dialog (main-thread) | Icon visibility bound to boolean data property |

---

## 3. Framework

| Aspect | Detail |
|---|---|
| **Language** | C (with some C++) — project defined as `project('sysprof', 'c', 'cpp')` in meson.build |
| **UI Framework** | GTK 4 + libadwaita 1.x + libpanel 1.x |
| **UI Definition** | GtkBuilder XML `.ui` files (compiled into GResource bundles) |
| **Build System** | Meson |
| **Resource Handling** | GResource XML manifests (sysprof.gresource.xml, libsysprof.gresource.xml) |
| **i18n** | gettext via `translatable="yes"` in UI files + XML preprocessing (`xml-stripblanks`) |

---

## 4. Notable Design Elements

### CSS Classes
- **`data-table`** — Applied to nearly all `GtkColumnView` instances (12+ files). Provides consistent table styling.
- **`navigation-sidebar`** — Applied to `GtkListBox` in sidebar and greeter for GNOME-standard sidebar look.
- **`utility`** — Applied to `AdwToolbarView` in right-sidebar utility panes.
- **`dim-label`** — Used extensively for secondary text (labels, frame-utility fields).
- **`caption`** — Applied to descriptive labels below preferences rows and in task rows.
- **`heading`** — Used on task row title labels.
- **`boxed-list`** — Applied to environment variable and debug directory list boxes in greeter.
- **`suggested-action`** — Used on primary buttons (Record to Memory, entry popover button).
- **`destructive-action`** — Used on the Stop Recording button in the recording pad.
- **`flat`**, **`circular`** — Applied to icon-only buttons (sidebar controls, mark chart toggle, filter close).
- **`pill`**, **`large-button`** — Used on the "Add Directory" button in system preferences.
- **`osd`** — Applied to overlay progress bars.
- **`messagedialog`** — Styling for the recording pad floating window.
- **`response-area`** — Dialog button layout area in recording pad.
- **`tasks`**, **`menu`** — Popover-specific styling.

### Custom CSS Names
- **`css-name="timecode"`** — Custom CSS node for the timecode label in the time scrubber.
- **`css-name="informative"`** — Custom CSS node for the informative label in the time scrubber.

### Accessibility / Typography
- **Tabular numbers**: `font-features="'tnum'"` on time displays and numeric labels (recording pad, process-dialog address columns, traceables utility).
- **Monospace font**: Used on `GtkTextView` for D-Bus messages, on `GtkLabel` for memory addresses with `family="monospace"`.
- **Bold weight**: Used on title labels in entry popover.
- **Font scale**: `scale="0.8333"` on binary-nick labels in callgraph, `scale="0.9"` on hit/size counts, `scale="4"` on the recording pad timer.

### Unusual Widget Configurations
- **`GtkInscription`** used as column-view cells instead of `GtkLabel` — for ellipsis control (`text-overflow="clip"`, `ellipsize-end`, `ellipsize-middle`) and character-based sizing (`nat-chars`, `min-chars`).
- **`GtkImage` as boolean indicator** — `GtkImage` with `visible` bound to `is-compressed` or `is-main-thread` properties, showing a checkmark icon when true.
- **`PanelPaned`** — Custom panel widget from *libpanel* (not GTK's `GtkPaned`), used for the callgraph three-pane layout. This is a distinct external library.
- **`SysprofTreeExpander`** — Custom tree expander widget with inline `GtkShortcutController` for keyboard navigation (Right/Left/Space to expand/collapse).
- **`GtkBuilderListItemFactory`** with `bytes` property containing CDATA-wrapped inline XML templates — this is a modern GTK4 pattern for defining list/column cell renderers directly in UI files.
- **`GListStore`** inline in UI file — defines a model directly in the UI XML rather than in C code (used for stack size options).
- **Two `GtkFilterListModel` objects filtered differently for the same data** — e.g., the CPU section has one filter for "CPU" prefix and another for "CPU " (with space), plus a `GtkFlattenListModel` for counter values.
- **Nested `AdwOverlaySplitView`** — Two OverlaySplitViews nested (left sidebar + right utility panel), each independently toggleable with dedicated keyboard shortcuts (F9 / Ctrl+F9).
- **`AdwActionRow` with `activatable-widget`** — Action rows in the greeter use `activatable-widget` property to make the entire row clickable, toggling the associated `GtkSwitch`.

---

## 5. File Count

| Type | Count |
|---|---|
| `.ui` files | **38** |
| `.blp` files | **0** |
| `.xml` files (total) | 8 (resource manifests, D-Bus interfaces, MIME info — not GUI defs) |
| GRE resource `.xml` files | 2 (`libsysprof.gresource.xml`, `sysprof.gresource.xml`) |
| Custom widget types in templates | ~15 (SysprofSection, SysprofCallgraphView, SysprofChart, SysprofLineLayer, SysprofTimeScrubber, SysprofTreeExpander, SysprofSymbolLabel, SysprofCategoryIcon, SysprofProgressCell, SysprofTimeLabel, SysprofFlameGraph, SysprofTaskRow, SysprofSidebar, SysprofTraceablesUtility, SysprofFrameUtility, SysprofDBusUtility, PanelPaned, SysprofEntryPopover, SysprofMarkChart, SysprofMarkTable, SysprofMarkChartRow, SysprofRecordingTemplate, SysprofStackSize, SysprofSessionFiltersWidget, SysprofTimeRuler, SysprofMarksSectionModel, SysprofTimeSpanLayer, SysprofColumnLayer, SysprofDuplexLayer, SysprofValueAxis, SysprofXYSeries, SysprofTimeSeries, SysprofTimeFilterModel, SysprofSampledModel, SysprofSingleModel, SysprofSessionModel, SysprofChartLayerFactory, SysprofChartLayerItem) |
