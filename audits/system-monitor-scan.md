# GNOME System Monitor — GUI Widget & Pattern Audit

**Source:** `sources/gnome-system-monitor/data/` (11 `.ui` files, 0 `.blp` files)
**Libraries:** GTK 4.0 + libadwaita 1.0

---

## 1. Widget Inventory (every Adw/Gtk class found)

### Adw (libadwaita) Widgets

| Widget | Files & Lines |
|---|---|
| `AdwActionRow` | `preferences.ui:24`; `procproperties.ui:22,37,57,72,93,109,124,140,148,155,162,169` |
| `AdwAlertDialog` | `renice.ui:3` |
| `AdwApplicationWindow` | `interface.ui:4` |
| `AdwBin` | `disks.ui:2` (template parent) |
| `AdwHeaderBar` | `interface.ui:11`; `lsof.ui:17`; `memmaps.ui:10`; `openfiles.ui:10`; `procproperties.ui:11`; `setaffinity.ui:11` |
| `AdwPreferencesDialog` | `preferences.ui:4` |
| `AdwPreferencesGroup` | `preferences.ui:13,50,59,69,81,117`; `procproperties.ui:19,54,90,143`; `setaffinity.ui:42` |
| `AdwPreferencesPage` | `preferences.ui:10,78,113`; `procproperties.ui:17`; `setaffinity.ui:40` |
| `AdwShortcutsDialog` | `shortcuts-dialog.ui:3` |
| `AdwShortcutsItem` | `shortcuts-dialog.ui:7,15,19,24,28,33,37,43,47,53,57,61,65,69,81,85,89,93,97` |
| `AdwShortcutsSection` | `shortcuts-dialog.ui:5,13,22,31,41,51,79` |
| `AdwSpinRow` | `preferences.ui:16,84` |
| `AdwSwitchRow` | `preferences.ui:35,52,61,71,86,89,92,95,119`; `setaffinity.ui:45,72` |
| `AdwToolbarView` | `interface.ui:8`; `lsof.ui:16`; `memmaps.ui:8`; `openfiles.ui:8`; `procproperties.ui:10`; `setaffinity.ui:8` |
| `AdwViewStack` | `interface.ui:48` |
| `AdwViewStackPage` | `interface.ui:51,83,206` |
| `AdwViewSwitcher` | `interface.ui:14` |
| `AdwWindow` | `lsof.ui:2`; `memmaps.ui:2`; `openfiles.ui:2`; `procproperties.ui:3`; `setaffinity.ui:3` |
| `AdwWindowTitle` | `memmaps.ui:11`; `openfiles.ui:12`; `setaffinity.ui:16` |

### Gtk (GTK4) Widgets

| Widget | Files & Lines |
|---|---|
| `GtkActionBar` | `interface.ui:131`; `procproperties.ui:101` |
| `GtkAdjustment` | `renice.ui:38` |
| `GtkBox` | `interface.ui:63,79,100,112,122,139,155,161,182,196,207,218`; `disks.ui:5`; `lsof.ui:37,49`; `memmaps.ui:16`; `openfiles.ui:16`; `procproperties.ui:107`; `renice.ui:17`; `setaffinity.ui:39` |
| `GtkButton` | `interface.ui:133,158`; `lsof.ui:24`; `procproperties.ui:109,114`; `setaffinity.ui:23,29` |
| `GtkCheckButton` | `lsof.ui:45` |
| `GtkColumnView` | `disks.ui:11`; `lsof.ui:54`; `memmaps.ui:20`; `openfiles.ui:21` |
| `GtkColumnViewColumn` | `disks.ui:27,74,99,124,152,180,208`; `lsof.ui:80,106,142`; `memmaps.ui:31,53,76,99,122,145,168,191,214,237,260`; `openfiles.ui:35,60,86` |
| `GtkExpander` | `interface.ui:77,102,133,164` |
| `GtkFilterListModel` | `lsof.ui:58` |
| `GtkGrid` | `interface.ui:87,114,145,176` |
| `GtkImage` | `disks.ui:41` (in CDATA template); `lsof.ui:77` (in CDATA template) |
| `GtkLabel` | `interface.ui:93,98,107,115,123,135,142,152,158,170,178,188,198,205,213,226`; `disks.ui:43,72,80,108,116,147,153,162,169` (in CDATA templates); `lsof:78,83,110,118,147,155` (in CDATA templates); `memmaps` (12 CDATA labels); `openfiles` (3 CDATA labels); `procproperties.ui:25,40,60,75,96,111,127,142,158,173`; `renice.ui:19,40` |
| `GtkLevelBar` | `disks.ui:171` (in CDATA template) |
| `GtkListBox` | `setaffinity.ui:44,67` |
| `GtkMenuButton` | `interface.ui:25`; `procproperties.ui:116` |
| `GtkRevealer` | `interface.ui:128` |
| `GtkScale` | `preferences.ui:27`; `renice.ui:33` |
| `GtkScrolledWindow` | `interface.ui:60,120`; `disks.ui:7`; `lsof.ui:52`; `memmaps.ui:18`; `openfiles.ui:18` |
| `GtkSearchBar` | `interface.ui:34`; `lsof.ui:30` |
| `GtkSearchEntry` | `interface.ui:41`; `lsof.ui:39` |
| `GtkShortcutController` | `interface.ui:138`; `lsof.ui:175`; `memmaps.ui:268`; `openfiles.ui:100`; `procproperties.ui:179`; `setaffinity.ui:86` |
| `GtkShortcut` | `interface.ui:141`; `lsof.ui:178,182`; `memmaps.ui:271`; `openfiles.ui:103`; `procproperties.ui:182`; `setaffinity.ui:89` |
| `GtkToggleButton` | `interface.ui:18`; `lsof.ui:19` |

### GTK Model/Sorter/Factory Classes

| Class | Files & Lines |
|---|---|
| `GListStore` | `disks.ui:19`; `lsof.ui:75`; `memmaps.ui:25`; `openfiles.ui:26` |
| `GtkBuilderListItemFactory` | `disks.ui:37,83,110,138,166,194`; `lsof.ui:91,129,165`; `memmaps.ui:44,66,89,112,134,158,181,204,227,250`; `openfiles.ui:44,70,95` |
| `GtkFilterListModel` | `lsof.ui:58` |
| `GtkListItem` | (inline CDATA templates in disks, lsof, memmaps, openfiles) |
| `GtkNoSelection` | `lsof.ui:57`; `memmaps.ui:22`; `openfiles.ui:23` |
| `GtkNumericSorter` | `disks.ui:128,156,184`; `lsof.ui:110`; `memmaps.ui:57,80,103,191,214,237`; `openfiles.ui:38` |
| `GtkSingleSelection` | `disks.ui:14` |
| `GtkSortListModel` | `disks.ui:17`; `lsof.ui:72`; `memmaps.ui:23`; `openfiles.ui:24` |
| `GtkStringFilter` | `lsof.ui:61` |
| `GtkStringSorter` | `disks.ui:31,78,106`; `lsof.ui:85,152`; `memmaps.ui:38,149,241`; `openfiles.ui:64,90` |

### Other

| Class | Files & Lines |
|---|---|
| `GSignalGroup` | `disks.ui:248,252` |
| `GsmColumnViewPersister` | `disks.ui:245` |
| `GsmDisksView` | `interface.ui:212`; `disks.ui:2` (template) |
| `GsmLsof` | `lsof.ui:2` (template) |
| `GsmMemMapsView` | `memmaps.ui:2` (template) |
| `GsmOpenFiles` | `openfiles.ui:2` (template) |

### GMenu Model Elements (menus.ui)

`<menu>` (3 menus: generic-window-menu, process-window-menu, process-popup-menu), `<section>`, `<item>`, `<submenu>`, `<attribute>`

---

## 2. Patterns Demonstrated

### Window & Layout Patterns

| # | Pattern | Files |
|---|---|---|
| P1 | **Main app window** — `AdwApplicationWindow` → `AdwToolbarView` → `AdwHeaderBar` + content | `interface.ui:4–8` |
| P2 | **View-switching tabs** — `AdwViewSwitcher` bound to `AdwViewStack` with `AdwViewStackPage` children | `interface.ui:14–48` |
| P3 | **Modal sub-window** — `AdwWindow` with `destroy-with-parent`, `modal`, `AdwToolbarView` + `AdwHeaderBar` | `lsof.ui:2–16` |
| P4 | **Sub-window with AdwWindowTitle** — `AdwHeaderBar` using `title-widget` → `AdwWindowTitle` | `memmaps.ui:11`, `openfiles.ui:12`, `setaffinity.ui:16` |
| P5 | **Preferences dialog** — `AdwPreferencesDialog` → `AdwPreferencesPage` → `AdwPreferencesGroup` | `preferences.ui:4–117` |

### Adw Row Widgets

| # | Pattern | Files |
|---|---|---|
| P6 | **Numeric preference** — `AdwSpinRow` with `climb-rate` and `digits` | `preferences.ui:16,84` |
| P7 | **Boolean toggle preference** — `AdwSwitchRow` with `use-underline` mnemonic | `preferences.ui:35,52,61,71,86,89,92,95,119` |
| P8 | **Read-only property row** — `AdwActionRow` + `GtkLabel` child with `selectable` and CSS class `numeric` | `procproperties.ui:22–28` |
| P9 | **Action row with subtitle-selectable** — `AdwActionRow` using `subtitle-selectable` + CSS class `property` | `procproperties.ui:148,155,162,169` |
| P10 | **Switch row in list box** — `GtkListBox` containing `AdwSwitchRow` children | `setaffinity.ui:44–45` |

### Data Display Patterns

| # | Pattern | Files |
|---|---|---|
| P11 | **ColumnView with sortable columns** — `GtkColumnView` + `GtkColumnViewColumn` with `GtkStringSorter`/`GtkNumericSorter` expressions, bound sorter via `<binding name="sorter">` | `disks.ui:11–33`, `memmaps.ui:20–38` |
| P12 | **ColumnView with GListStore + GtkSortListModel** — `GListStore` → `GtkSortListModel` (sorter bound to column_view) → selection model → column_view.model | `disks.ui:14–26` |
| P13 | **ColumnView with GtkBuilderListItemFactory inline templates** — `GtkBuilderListItemFactory` containing CDATA-wrapped `GtkListItem` template with `<binding>` using `<lookup>` expressions | `disks.ui:37–45` |
| P14 | **ColumnView with GtkFilterListModel** — `GtkFilterListModel` wrapping `GtkSortListModel`, with `GtkStringFilter` bound to a `GtkSearchEntry` | `lsof.ui:56–75` |
| P15 | **ColumnView with closure-based formatting** — `<binding name="label"><closure type="gchararray" function="format_size">...` | `disks.ui:147–150`, `memmaps.ui:66–69` |
| P16 | **ColumnView with GtkLevelBar** — Progress visualization inline in a column | `disks.ui:171` |

### Selection Models

| # | Pattern | Files |
|---|---|---|
| P17 | **Single selection** — `GtkSingleSelection` wrapping a list model | `disks.ui:14–15` |
| P18 | **No selection (read-only list)** — `GtkNoSelection` wrapping a list model | `lsof.ui:57`, `memmaps.ui:22`, `openfiles.ui:23` |

### Search & Filter

| # | Pattern | Files |
|---|---|---|
| P19 | **Search bar with toggle binding** — `GtkSearchBar` with `search-mode-enabled` bidirectionally bound to `GtkToggleButton.active` | `interface.ui:34–40`, `lsof.ui:30–35` |
| P20 | **Search entry** — `GtkSearchEntry` inside `GtkSearchBar`, with `placeholder-text` | `interface.ui:41–43`, `lsof.ui:39–40` |

### UI Details

| # | Pattern | Files |
|---|---|---|
| P21 | **Collapsible expander sections** — `GtkExpander` with `GtkLabel` (bold via Pango `<attributes>`) as label widget and `GtkBox` as child | `interface.ui:77–101` |
| P22 | **Animated revealer + action bar** — `GtkRevealer` with `transition-type="slide-up"` wrapping a `GtkActionBar` | `interface.ui:128–131` |
| P23 | **Action bar with destructive button** — `GtkButton` with CSS class `destructive-action` inside `GtkActionBar` | `interface.ui:133–151` |
| P24 | **GtkScale with draw-value** — `GtkScale` with `draw-value=True` and `value-pos=right` | `preferences.ui:27–29` |
| P25 | **GtkScale with GtkAdjustment** — Scale backed by explicit `GtkAdjustment` object | `renice.ui:33–38` |
| P26 | **GtkLevelBar** — Level bar with `min-value`/`max-value` and bound `value` property | `disks.ui:171–176` |
| P27 | **Menu button with GMenu model** — `GtkMenuButton` with `menu-model` property pointing to a `<menu>` id | `procproperties.ui:116–117` |
| P28 | **GMenu popup hierarchy** — `<menu>` containing `<section>`, `<item>`, `<submenu>` with `action`/`target` attributes | `menus.ui:1–120` |
| P29 | **AdwAlertDialog** — Dialog with `responses`, `extra-child`, `default-response`, `close-response`, and `appearance="destructive"` | `renice.ui:3–42` |
| P30 | **Shortcuts dialog** — `AdwShortcutsDialog` → `AdwShortcutsSection` → `AdwShortcutsItem` with `accelerator` and `action-name` | `shortcuts-dialog.ui:3–99` |

### Binding & Expression Patterns

| # | Pattern | Files |
|---|---|---|
| P31 | **Bidirectional property binding** — `bind-source` + `bind-property` + `bind-flags="bidirectional"` | `interface.ui:36–39`, `lsof.ui:31–34` |
| P32 | **Chained lookup expressions** — `<lookup name="item">GtkListItem</lookup>` → `<lookup name="property" type="ModelType">` | `disks.ui:42`, `lsof.ui:79`, and many ColumnView factories |
| P33 | **Closure binding with GICallable** — `<closure type="gchararray" function="format_size">` calling C functions | `disks.ui:147`, `memmaps.ui:66` |
| P34 | **Signal connection via `<signal>`** — `handler` + `swapped` attributes on objects | `disks.ui:242` |
| P35 | **sync-create binding** — `bind-flags="sync-create"` for widget lifecycle binding | `disks.ui:250` |

### Shortcut & Controller Patterns

| # | Pattern | Files |
|---|---|---|
| P36 | **GtkShortcutController (managed scope)** — Attached as a child of the managed widget | `lsof.ui:175–189`, `memmaps.ui:268–275`, `openfiles.ui:100–106`, `procproperties.ui:179–187` |
| P37 | **Escape-to-close shortcut** — `<GtkShortcut trigger="Escape" action="action(window.close)"/>` | `lsof.ui:182`, `memmaps.ui:271`, `openfiles.ui:103`, `setaffinity.ui:89` |
| P38 | **Delete key shortcut on button** — `GtkShortcutController` child of `GtkButton` with `trigger="Delete"` | `interface.ui:138–144` |

### CSS & Styling Patterns

| # | Pattern | Files |
|---|---|---|
| P39 | **CSS class on widget** — `<style><class name="..."/></style>` | `interface.ui:150 (destructive-action)`, `lsof.ui:189 (view)`, `disks.ui:49 (icon-dropshadow)`, `procproperties.ui:28,44,63,78,99,113,130,145,159,174 (numeric)`, `memmaps.ui:50,71,94,117,139,163,186,208,232,255 (numeric/monospace)`, `procproperties.ui:151,158,165,172 (property)` |
| P40 | **Style class on GtkListBox** — `boxed-list`, `background` | `setaffinity.ui:55,73` |

### Custom Widget Templates

| # | Pattern | Files |
|---|---|---|
| P41 | **Template inheriting from AdwBin** — `<template class="CustomWidget" parent="AdwBin">` | `disks.ui:2` |
| P42 | **Template inheriting from AdwWindow** — `<template class="CustomWidget" parent="AdwWindow">` | `lsof.ui:2`, `memmaps.ui:2`, `openfiles.ui:2` |
| P43 | **Helper objects in template** — Non-widget objects like `GSignalGroup`, custom `GsmColumnViewPersister` alongside the main widget in a template | `disks.ui:245–252` |

### Pango Markup

| # | Pattern | Files |
|---|---|---|
| P44 | **Bold label via Pango attributes** — `<attributes><attribute name="weight" value="bold"/></attributes>` | `interface.ui:99,149,201,233` |

---

## 3. Best Code Examples by Pattern

### Window Architecture

| Pattern | Best Example | Why |
|---|---|---|
| Main app window (P1) | `interface.ui:4–48` | Complete `AdwApplicationWindow` → `AdwToolbarView` → `AdwHeaderBar` with search button, view switcher, and menu button |
| View switching (P2) | `interface.ui:14–48` | `AdwViewSwitcher` bound to `AdwViewStack` with 3 pages — best real-world example |
| Modal sub-window (P3) | `lsof.ui:2–16` | Full pattern: `AdwWindow` template with `modal`, `destroy-with-parent`, `AdwToolbarView`, `AdwHeaderBar` |

### Preferences

| Pattern | Best Example | Why |
|---|---|---|
| Preferences dialog (P5) | `preferences.ui:4–117` | Complete 3-page preferences with groups, spin rows, switch rows, and GtkScale row |
| AdwSpinRow (P6) | `preferences.ui:16–19` | Clean: `climb-rate=1`, `digits=2`, `use-underline` |
| AdwSwitchRow (P7) | `preferences.ui:89–91` | Shows `use-underline` mnemonic with `_` prefix |

### Property Dialogs

| Pattern | Best Example | Why |
|---|---|---|
| Read-only property rows (P8) | `procproperties.ui:19–31` | `AdwPreferencesGroup` → `AdwActionRow` + `GtkLabel` with `selectable` + class `numeric` |
| Subtitle-selectable rows (P9) | `procproperties.ui:148–153` | `AdwActionRow` with `subtitle-selectable`, CSS classes `property numeric` |

### ColumnView (GTK4 List Pattern)

| Pattern | Best Example | Why |
|---|---|---|
| Sortable ColumnView (P11, P12) | `disks.ui:11–33` | Full setup: `GListStore` → `GtkSortListModel` → `GtkSingleSelection` → `GtkColumnView`, sorter binding, `GtkStringSorter` with expression |
| BuilderListItemFactory (P13) | `disks.ui:37–45` | Inline CDATA `GtkListItem` template with `GtkImage` + `GtkLabel`, `<binding>` with `<lookup>` |
| ColumnView with filter (P14) | `lsof.ui:56–75` | `GtkFilterListModel` wrapping sort model, `GtkStringFilter` bound to search entry and case checkbox |
| Closure formatting (P15) | `memmaps.ui:66–69` | `<closure type="gchararray" function="format_offset">` for VM Start column |
| GtkLevelBar in column (P16) | `disks.ui:171–176` | `GtkLevelBar` with bound `value` property inside a list item |

### Search & Filter

| Pattern | Best Example | Why |
|---|---|---|
| Search bar toggle (P19) | `lsof.ui:30–35` | `GtkSearchBar` bidirectionally bound to `GtkToggleButton` with `GtkSearchEntry` + `GtkCheckButton` inside |
| Filter with search entry (P20+P14) | `lsof.ui:39–40` + `lsof.ui:61–68` | `GtkSearchEntry.text` bound to `GtkStringFilter.search` |

### Dialogs & Overlays

| Pattern | Best Example | Why |
|---|---|---|
| AdwAlertDialog (P29) | `renice.ui:3–42` | Complete: `responses` with `appearance="destructive"`, `extra-child` containing `GtkBox` → `GtkLabel` + `GtkScale` + status label, `default-response` |
| ActionBar with destructive button (P23) | `interface.ui:128–151` | `GtkRevealer` → `GtkActionBar` with `GtkButton.destructive-action` + `GtkShortcutController` |
| Set Affinity dialog (P10+P8) | `setaffinity.ui:3–55` | `AdwWindow` → `AdwToolbarView` with header bar cancel/apply buttons, `GtkListBox` of `AdwSwitchRow` |

### Menus & Shortcuts

| Pattern | Best Example | Why |
|---|---|---|
| Process popup menu (P28) | `menus.ui:72–120` | Most complex: `<submenu>` for Priority with `<section>` groups, typed `target` attributes |
| Shortcuts dialog (P30) | `shortcuts-dialog.ui:3–99` | Complete 6-section shortcuts dialog with accelerators and action-names |
| Escape-to-close shortcut (P37) | `lsof.ui:182` | `<GtkShortcut trigger="Escape" action="action(window.close)"/>` |
| Managed scope shortcut controller (P36) | `lsof.ui:175–189` | `GtkShortcutController` child of template with `scope="managed"` |

### Styling

| Pattern | Best Example | Why |
|---|---|---|
| CSS class on widget (P39) | `procproperties.ui:28` (numeric), `memmaps.ui:50` (numeric+monospace), `setaffinity.ui:55` (boxed-list) | Multiple inline `<style><class name="..."/></style>` examples |
| Pango bold label (P44) | `interface.ui:97–101` | `<attributes><attribute name="weight" value="bold"/></attributes>` on a `GtkLabel` |

### Bindings

| Pattern | Best Example | Why |
|---|---|---|
| Bidirectional binding (P31) | `interface.ui:36–39` | `bind-source="search_button"` `bind-property="active"` `bind-flags="bidirectional"` |
| Chained lookup (P32) | `disks.ui:43–45` | `<lookup name="item">GtkListItem</lookup>` → `<lookup name="icon" type="GsmDisk">` |
| Closure binding (P33) | `disks.ui:147–150` | `<closure type="gchararray" function="format_percentage">` |
| sync-create binding (P35) | `disks.ui:250` | `bind-flags="sync-create"` for `GSignalGroup.target` bound to widget root |
