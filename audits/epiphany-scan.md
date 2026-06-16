# Epiphany (GNOME Web) GUI Audit

**Source:** `src/resources/gtk/*.blp` (37 files, Blueprint markup; no `.ui` files)
**Framework:** GTK 4 + libadwaita 1 (exclusively Adw widgets, no raw Gtk widgets except standard Gtk base classes via Blueprint)

---

## 1. Adw Widget Inventory

| Widget | Count | File + Line |
|--------|-------|-------------|
| `Adw.ShortcutsItem` | 55 | `shortcuts-dialog.blp:8,13,18,23,28,33,38,43,48,53,58,67,72,77,82,87,93,99,105,115,120,125,130,135,140,145,150,155,164,169,174,179,184,189,194,199,208,213,218,223,228,233,238,247,252,257,262,267,272,277,282,287,292,297,302` |
| `Adw.PreferencesGroup` | 42 | `autofill-view.blp:23,39,55,85`; `bookmark-properties.blp:48,58,71`; `extension-view.blp:27,61,68`; `firefox-sync-dialog.blp:26,42,58`; `prefs-appearance-page.blp:8,44,66`; `prefs-extensions-page.blp:8,37`; `prefs-features-page.blp:8`; `prefs-general-page.blp:9,47,66,111,157,169,173,187,206,218,225`; `prefs-privacy-page.blp:9,26,36,52`; `prefs-search-engine-page.blp:10,47,53`; `privacy-report.blp:34,54,93`; `security-dialog.blp:45`; `webapp-additional-urls-dialog.blp:14` |
| `Adw.SwitchRow` | 23 | `firefox-sync-dialog.blp:61,67,72,77`; `prefs-appearance-page.blp:69,82`; `prefs-general-page.blp:50,55,60,114,176,181,190,195,200,219,228,233`; `prefs-privacy-page.blp:12,17,29,55`; `extension-view.blp:62` |
| `Adw.EntryRow` | 22 | `autofill-view.blp:26,30,34,42,46,50,58,62,66,70,74,92,96`; `bookmark-properties.blp:49,53,108`; `prefs-general-page.blp:23,29`; `prefs-search-engine-page.blp:11,15,48`; `webapp-additional-urls-dialog.blp:15` |
| `Adw.ActionRow` | 21 | `bookmark-properties.blp:59`; `bookmark-row.blp:18`; `extension-view.blp:28,39,49`; `firefox-sync-dialog.blp:45,94`; `lang-row.blp:18`; `prefs-appearance-page.blp:15,24,33`; `prefs-extensions-page.blp:9`; `prefs-general-page.blp:12,35,69,80,92,119`; `prefs-privacy-page.blp:39,60`; `search-engine-row.blp:4` |
| `Adw.HeaderBar` | 17 | `autofill-view.blp:9`; `bookmark-properties.blp:23,91`; `bookmarks-dialog.blp:10`; `clear-data-view.blp:n/a (inherited via $EphyDataView)`; `data-view.blp:7`; `encoding-dialog.blp:11`; `extension-view.blp:16`; `firefox-sync-dialog.blp:13`; `history-dialog.blp:14,42`; `passwords-view.blp:n/a`; `prefs-lang-dialog.blp:10`; `prefs-search-engine-page.blp:7`; `privacy-report.blp:15,88`; `security-dialog.blp:10`; `synced-tabs-dialog.blp:13`; `webapp-additional-urls-dialog.blp:9` |
| `Adw.ToolbarView` | 16 | `autofill-view.blp:7`; `bookmark-properties.blp:21,89`; `bookmarks-dialog.blp:5`; `data-view.blp:5`; `encoding-dialog.blp:9`; `extension-view.blp:14`; `firefox-sync-dialog.blp:11`; `history-dialog.blp:9`; `prefs-lang-dialog.blp:8`; `prefs-search-engine-page.blp:5`; `privacy-report.blp:13,86`; `security-dialog.blp:8`; `synced-tabs-dialog.blp:11`; `webapp-additional-urls-dialog.blp:7` |
| `Adw.PreferencesPage` | 15 | `autofill-view.blp:22`; `bookmark-properties.blp:47`; `extension-view.blp:26`; `firefox-sync-dialog.blp:25`; `prefs-appearance-page.blp:4`; `prefs-extensions-page.blp:4`; `prefs-features-page.blp:4`; `prefs-general-page.blp:4`; `prefs-privacy-page.blp:4`; `prefs-search-engine-page.blp:9`; `privacy-report.blp:33,53,90`; `security-dialog.blp:44`; `webapp-additional-urls-dialog.blp:11` |
| `Adw.NavigationPage` | 9 | `autofill-view.blp:4`; `bookmark-properties.blp:17,85`; `data-view.blp:4`; `extension-view.blp:13`; `prefs-search-engine-page.blp:4`; `privacy-report.blp:9,82`; `webapp-additional-urls-dialog.blp:4` |
| `Adw.ComboRow` | 8 | `autofill-view.blp:78,88`; `firefox-sync-dialog.blp:89`; `prefs-appearance-page.blp:47,56,95`; `prefs-general-page.blp:160,164` |
| `Adw.StatusPage` | 7 | `bookmarks-dialog.blp:161`; `data-view.blp:56,62`; `history-dialog.blp:123,128`; `privacy-report.blp:72`; `security-dialog.blp:24` |
| `Adw.Dialog` | 7 | `bookmark-properties.blp:4`; `encoding-dialog.blp:4`; `history-dialog.blp:4`; `passwords-view.blp:4`; `prefs-lang-dialog.blp:4`; `privacy-report.blp:4`; `security-dialog.blp:4` |
| `Adw.ShortcutsSection` | 6 | `shortcuts-dialog.blp:5,64,112,161,205,244` |
| `Adw.Clamp` | 5 | `clear-data-view.blp:17`; `data-view.blp:28`; `history-dialog.blp:73,95`; `passwords-view.blp:29` |
| `Adw.ViewStackPage` | 4 | `privacy-report.blp:27,47`; `security-dialog.blp:18,38` |
| `Adw.ButtonRow` | 4 | `bookmark-properties.blp:72`; `extension-view.blp:69`; `prefs-features-page.blp:9`; `prefs-search-engine-page.blp:54` |
| `Adw.Bin` | 4 | `action-bar.blp:4`; `bookmarks-dialog.blp:4`; `page-menu-button.blp:4`; `search-engine-listbox.blp:4` |
| `Adw.ToastOverlay` | 3 | `bookmarks-dialog.blp:45`; `data-view.blp:38`; `history-dialog.blp:85` |
| `Adw.ButtonContent` | 3 | `bookmarks-dialog.blp:16`; `firefox-sync-dialog.blp:15`; `history-dialog.blp:17` |
| `Adw.Window` | 2 | `firefox-sync-dialog.blp:4`; `synced-tabs-dialog.blp:4` |
| `Adw.ViewSwitcher` | 2 | `privacy-report.blp:16`; `security-dialog.blp:11` |
| `Adw.ViewStack` | 2 | `privacy-report.blp:26`; `security-dialog.blp:17` |
| `Adw.Spinner` | 2 | `data-view.blp:45`; `history-dialog.blp:116` |
| `Adw.NavigationView` | 2 | `bookmark-properties.blp:16`; `privacy-report.blp:8` |
| `Adw.EnumListModel` | 2 | `prefs-appearance-page.blp:51,60` |
| `Adw.EnumListItem` | 2 | `prefs-appearance-page.blp:49,58` (in expression casts) |
| `Adw.WindowTitle` | 1 | `extension-view.blp:17` |
| `Adw.TabButton` | 1 | `action-bar.blp:66` |
| `Adw.ShortcutsDialog` | 1 | `shortcuts-dialog.blp:4` |
| `Adw.PreferencesDialog` | 1 | `prefs-dialog.blp:4` (also at `prefs-lang-dialog.blp:4` un-named) |
| `Adw.ExpanderRow` | 1 | `prefs-appearance-page.blp:11` |

**Notable absences:** No `Adw.AboutDialog`/`Adw.AboutWindow`, no `Adw.Flap`, no `Adw.Leaflet`, no `Adw.Carousel`, no `Adw.Banner`, no `Adw.TabBar`/`Adw.TabView` (tabs are WebKit-managed), no `Adw.Avatar`, no `Adw.SplitButton`.

---

## 2. Gtk Base Widgets Used

These are Gtk base classes referenced without explicit `Gtk.` prefix (Blueprint defaults):

| Widget | Key File + Line |
|--------|-----------------|
| `Box` | `bookmarks-dialog.blp:50` |
| `Button` | pervasive (100+ sites) |
| `Label` | pervasive |
| `ListBox` | `history-dialog.blp:100` |
| `ScrolledWindow` | `history-dialog.blp:89` |
| `Stack`/`StackPage` | `bookmarks-dialog.blp:78` |
| `SearchEntry` | `bookmarks-dialog.blp:69` |
| `Entry` | `prefs-general-page.blp:103` |
| `Overlay` | `location-entry.blp:14` |
| `Revealer` | `history-dialog.blp:137` |
| `ActionBar` | `history-dialog.blp:141` |
| `CheckButton` | `prefs-general-page.blp:75` |
| `ToggleButton` | `history-dialog.blp:35` |
| `MenuButton` | `bookmarks-dialog.blp:38` |
| `SearchBar` | `history-dialog.blp:69` |
| `Popover` | `location-entry.blp:85` |
| `Viewport` | `history-dialog.blp:92` |
| `Image` | pervasive |
| `Switch` | `encoding-dialog.blp:32` |
| `ShortcutController`/`Shortcut` | `bookmark-properties.blp:7` |
| `GestureClick`/`GestureLongPress` | `action-bar-start.blp:29` |
| `DragSource` | `bookmark-row.blp:32` |
| `Frame` | `encoding-dialog.blp:87` |
| `SizeGroup` | `prefs-appearance-page.blp:97` |
| `StringList` | `prefs-appearance-page.blp:96` |
| `BuilderListItemFactory` | `location-entry.blp:100` |
| `SingleSelection` | `location-entry.blp:95` |
| `PopoverMenu` | `page-menu-button.blp:78` |
| `ListView` | `prefs-lang-dialog.blp:56` |
| `TreeView`/`TreeSelection`/`TreeViewColumn` | `clear-data-view.blp:47` |
| `ListItem` | `location-entry.blp:102` |
| `Grid` | `location-entry.blp:103` |
| `CenterBox` | `bookmarks-dialog.blp:125` |
| `ProgressBar` | `location-entry.blp:62` |
| `FontDialogButton` | `prefs-appearance-page.blp:19` |
| `Svg` | `site-menu-button.blp:86` |
| `EventControllerKey` | `history-dialog.blp:164` |
| `EventControllerFocus` | `location-entry.blp:191` |
| `ListBoxRow` | `browser-action-row.blp:3` |

---

## 3. Patterns Demonstrated

### A. Preferences Dialog (`Adw.PreferencesDialog`)
Multi-page prefs with search. Embedding `$Prefs*` template children as pages.
- **File:** `prefs-dialog.blp:4`
- **Pages:** General (line 9), Privacy (line 12), Appearance (line 15)
- Each page is its own `Adw.PreferencesPage` template with `icon-name`, `title`, `name`

### B. Preferences Page with Groups and Rows
Rich prefs pages using `Adw.PreferencesGroup` + `Adw.SwitchRow` / `Adw.ComboRow` / `Adw.ActionRow` / `Adw.EntryRow` / `Adw.ExpanderRow` / `Adw.ButtonRow`.
- **Best example:** `prefs-general-page.blp:4-237` — 11 groups, SwitchRows with `use-underline`, ComboRows for dropdowns, ActionRows with CheckButton radio groups (line 66-92), custom suffix widgets (line 119-153)
- **ExpanderRow with sub-rows:** `prefs-appearance-page.blp:11-41` — shows `Adw.ExpanderRow` containing `Adw.ActionRow` children with `FontDialogButton`
- **ButtonRow:** `prefs-features-page.blp:9`

### C. NavigationView + NavigationPage (push navigation)
Dialog or window with push/pop navigation stack.
- **File:** `bookmark-properties.blp:16-84` (edit → tags subpage)
- **File:** `privacy-report.blp:8-95` (overview → details drilldown)

### D. Adw.ToolbarView (modern window chrome)
Nearly every view uses `Adw.ToolbarView` with `[top]` HeaderBar + `content` + `[bottom]` ActionBar.
- **Best example:** `history-dialog.blp:9-148` — `[top]` Stack with two HeaderBars, `[top]` SearchBar, `content:` ToastOverlay, `[bottom]` Revealer + ActionBar
- **Also:** `data-view.blp:5-81` — clean template with `[top]` HeaderBar + SearchBar, `content:` ToastOverlay, `[bottom]` ActionBar

### E. Adw.Dialog (modal dialogs)
- **File:** `history-dialog.blp:4` — `content-width: 640`, `content-height: 580` + ToolbarView
- **File:** `bookmark-properties.blp:4` — `width-request: 360` + NavigationView inside
- **File:** `encoding-dialog.blp:4` — basic dialog
- **File:** `privacy-report.blp:4` — NavigationView inside dialog
- **File:** `security-dialog.blp:4` — ViewSwitcher inside dialog
- **File:** `passwords-view.blp:4` — embeds a custom `$EphyDataView` template

### F. Adw.Window (standalone windows)
- **File:** `firefox-sync-dialog.blp:4` — `modal: false`, `default-width/height`, `destroy-with-parent`
- **File:** `synced-tabs-dialog.blp:4` — `modal: true`, `height/width-request`

### G. ToastOverlay (in-app notifications)
- **File:** `history-dialog.blp:85` — wraps content Stack
- **File:** `data-view.blp:38` — wraps content Stack
- **File:** `bookmarks-dialog.blp:45` — wraps content Box

### H. ViewSwitcher + ViewStack (tabbed sub-pages)
- **File:** `privacy-report.blp:16-28` — HeaderBar `title-widget: Adw.ViewSwitcher` → `Adw.ViewStack` children with `name`, `title`, `icon-name`
- **File:** `security-dialog.blp:11-18` — same pattern

### I. StatusPage (empty states / error states)
- **File:** `data-view.blp:56-65` — empty, no-results pages
- **File:** `history-dialog.blp:123-128` — empty + no-results pages
- **File:** `bookmarks-dialog.blp:161` — compact empty state
- **File:** `privacy-report.blp:72` — no-trackers state
- **File:** `security-dialog.blp:24` — security status page with child button

### J. Spinner (loading states)
- **File:** `data-view.blp:45` — `halign: center; valign: center; width-request: 32; height-request: 32`
- **File:** `history-dialog.blp:116` — same pattern

### K. Stack + StackPage pattern (conditional content switching)
- **File:** `bookmarks-dialog.blp:78-156` — 4 StackPages (default, searching, tag_detail, empty-state)
- **File:** `data-view.blp:42-65` — loading / empty / no-results
- **File:** `encoding-dialog.blp:38-129` — suggested / scrolled-window
- **File:** `history-dialog.blp:11-126` — nested, includes transition-type

### L. Clamp (content width limiting)
- **File:** `history-dialog.blp:73` — `maximum-size: 400; tightening-threshold: 300`
- **File:** `data-view.blp:28` — simple Clamp
- **File:** `passwords-view.blp:29` — wrapping a ListBox

### M. Bin (minimal wrapper for embedding custom widgets)
- **File:** `search-engine-listbox.blp:4` — `Adw.Bin` wrapping a ListBox
- **File:** `page-menu-button.blp:4` — `Adw.Bin` wrapping a MenuButton
- **File:** `action-bar.blp:4` — `Adw.Bin` wrapping a Box
- **File:** `bookmarks-dialog.blp:4` — `Adw.Bin` wrapping ToolbarView (sidebar panel pattern)

### N. ShortcutsDialog
- **File:** `shortcuts-dialog.blp:4-303` — 6 ShortcutSections, 55 ShortcutItems with `accelerator`, `direction` (ltr/rtl), `title`

### O. ButtonContent (icon+label button children)
- **File:** `history-dialog.blp:17` — inside Button
- **File:** `firefox-sync-dialog.blp:15` — inside sync button
- **File:** `bookmarks-dialog.blp:16` — edit button

### P. Row templates with Adw.ActionRow
- **File:** `bookmark-row.blp:18` — `[prefix]` Image + drag handle, `[suffix]` Buttons + MenuButton, `activatable: true`
- **File:** `lang-row.blp:18` — drag handle + delete + move menu
- **File:** `search-engine-row.blp:4` — simple edit in suffix

### Q. Drag & Drop reordering
- **File:** `bookmark-row.blp:29-35` — `DragSource { actions: move; prepare/drag-begin }` inside a row
- **File:** `lang-row.blp:23-29` — same pattern

### R. SearchBar + SearchEntry integration
- **File:** `history-dialog.blp:69-80` — SearchBar with `key-capture-widget: template`, SearchEntry inside Clamp
- **File:** `data-view.blp:24-37` — same, with `bind` template property

### S. ListItem factory (composite list items with BuilderListItemFactory)
- **File:** `location-entry.blp:95-162` — `BuilderListItemFactory` with nested `ListItem` template containing Grid, Images, Labels with expression binds

### T. Popover + ListView (suggestions dropdown)
- **File:** `location-entry.blp:85-171` — Popover with ScrolledWindow+ListView+SingleSelection, using `factory:` pattern

### U. GtkTreeView (tree/list widget, older widget)
- **File:** `clear-data-view.blp:47-57` — TreeView with `[internal-child selection]`, TreeViewColumn

### V. FontDialogButton in preferences
- **File:** `prefs-appearance-page.blp:19,28,37` — in expander row, SizeGroup-aligned

### W. Gestures on toolbar buttons (middle-click, long-press)
- **File:** `action-bar-start.blp:29-58` — `GestureClick` with `button: 2/3`, `GestureLongPress` on Back/Forward
- **File:** `location-entry.blp:113-118` — GestureClick inside ListItem for suggestion selection

### X. EventControllerKey + EventControllerFocus
- **File:** `history-dialog.blp:164-168` — `key-pressed/key-released` controllers
- **File:** `location-entry.blp:187-192` — focus enter/leave

### Y. ShortcutController (keyboard shortcuts in dialogs)
- **File:** `bookmark-properties.blp:7-13` — `Shortcut` with trigger `<Control>Return` → action

### Z. PopoverMenu with custom widget
- **File:** `site-menu-button.blp:80-83` — `[zoom_level]` custom Box with zoom buttons inside menu

### AA. Revealer + ActionBar (sliding bottom bar)
- **File:** `history-dialog.blp:137-152` — `transition-type: slide_up; duration: 500` + ActionBar

### AB. Template inheritance
- **File:** `clear-data-view.blp:4` — `template $ClearDataView: $EphyDataView { ... }` (extends DataView template)
- **File:** `passwords-view.blp:8` — embeds `$EphyDataView data_view { ... }` as child

---

## 4. Best Code Examples by Pattern

| Pattern | File | Line(s) | Why |
|---------|------|---------|-----|
| **Multi-page prefs with search** | `prefs-dialog.blp` | 4-15 | `search-enabled: true`, child template pages |
| **Rich prefs page (11 groups)** | `prefs-general-page.blp` | 4-237 | SwitchRow, ComboRow, ActionRow with CheckButton radios, EntryRow, custom suffix |
| **ExpanderRow with FontDialogButton** | `prefs-appearance-page.blp` | 11-41 | `show-enable-switch: true`, SizeGroup alignment |
| **NavigationView push nav** | `privacy-report.blp` | 8-95 | Overview→Details, NavigationPage tags |
| **Dialog + NavigationView** | `bookmark-properties.blp` | 4-132 | Dialog wraps NavigationView with two pages |
| **ToolbarView complete layout** | `history-dialog.blp` | 9-148 | top Stack(HeaderBars), top SearchBar, content ToastOverlay, bottom Revealer+ActionBar |
| **ViewSwitcher header bar tabs** | `security-dialog.blp` | 10-17 | HeaderBar title-widget: Adw.ViewSwitcher → ViewStack |
| **ToastOverlay wrapping content** | `data-view.blp` | 38-67 | ToastOverlay > Stack > Spinner / StatusPage |
| **StatusPage empty/no-results** | `data-view.blp` | 56-65 | Two StatusPages with icon, title, description |
| **Stack conditional states** | `bookmarks-dialog.blp` | 78-156 | 4 pages: default, searching, tag_detail, empty-state |
| **ShortcutsDialog with LTR/RTL** | `shortcuts-dialog.blp` | 4-303 | `direction: ltr` / `direction: rtl`, `accelerator` |
| **ButtonContent icon+label** | `history-dialog.blp` | 17-21 | Inside Button: label, use-underline, icon-name |
| **Drag & drop row reorder** | `bookmark-row.blp` | 29-35 | DragSource actions:move with prepare/begin callbacks |
| **SearchBar integration** | `history-dialog.blp` | 69-80 | key-capture-widget, Clamp, SearchEntry |
| **ListView with BuilderListItemFactory** | `location-entry.blp` | 85-171 | Expr binds, Grid layout, GestureClick per item |
| **Popover suggestions dropdown** | `location-entry.blp` | 85-88 | has-arrow:false, autohide:false, can-focus:false |
| **TreeView** | `clear-data-view.blp` | 47-57 | internal-child selection, TreeViewColumn |
| **Revealer + ActionBar** | `history-dialog.blp` | 137-152 | slide_up transition, duration, ActionBar |
| **Template inheritance** | `clear-data-view.blp` | 4 | `$ClearDataView: $EphyDataView { ... }` |
| **Window (modal/non-modal)** | `firefox-sync-dialog.blp` | 4-8 | default-width/height, destroy-with-parent |
| **PopoverMenu custom widget** | `site-menu-button.blp` | 80-83 | `[zoom_level]` slot with Box of Buttons |
| **ComboRow with EnumListModel** | `prefs-appearance-page.blp` | 47-61 | expression cast, enum-type model |
| **EntryRow with input-purpose** | `webapp-additional-urls-dialog.blp` | 15 | `input-purpose: url` |
| **GestureClick middle-click/long-press** | `action-bar-start.blp` | 29-58 | button: 2/3 (middle/right click), GestureLongPress |
