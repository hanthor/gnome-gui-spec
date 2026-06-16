# GNOME Contacts — GUI Widget Audit

**Source:** `sources/gnome-contacts/data/ui/` (13 `.blp` files)

---

## 1. Widget Inventory (Adw/Gtk classes with file+line)

### libadwaita (`Adw`)

| Widget | Files (file:approx-line) |
|--------|--------------------------|
| `Adw.ApplicationWindow` | main-window.blp:81, setup-window.blp:5 |
| `Adw.Bin` | main-window.blp:156,177, contact-pane.blp:5, editable-avatar.blp:10,25, link-suggestion-grid.blp:18 |
| `Adw.Breakpoint` | main-window.blp:275 |
| `Adw.ButtonRow` | birthday-editor.blp:73 |
| `Adw.Clamp` | contact-pane.blp:27,42, setup-window.blp:45, qr-code-dialog.blp:21 |
| `Adw.ComboRow` | birthday-editor.blp:51 |
| `Adw.Dialog` | avatar-selector.blp:5, birthday-editor.blp:5, crop-dialog.blp:5, import-dialog.blp:5, qr-code-dialog.blp:5 |
| `Adw.HeaderBar` | main-window.blp:124,218, avatar-selector.blp:12, birthday-editor.blp:13, crop-dialog.blp:17, import-dialog.blp:12, qr-code-dialog.blp:15 |
| `Adw.NavigationPage` | main-window.blp:118,211 |
| `Adw.NavigationSplitView` | main-window.blp:112 |
| `Adw.PreferencesDialog` | preferences-window.blp:5 |
| `Adw.PreferencesGroup` | birthday-editor.blp:39,72 |
| `Adw.PreferencesPage` | preferences-window.blp:6, birthday-editor.blp:38, import-dialog.blp:37 |
| `Adw.PreferencesRow` | contact-sheet-row.blp:5 |
| `Adw.ShortcutsDialog` | shortcuts-dialog.blp:5 |
| `Adw.ShortcutsItem` | shortcuts-dialog.blp:9,14,18,22,26,30,41,46 |
| `Adw.ShortcutsSection` | shortcuts-dialog.blp:6,38 |
| `Adw.Spinner` | main-window.blp:170 |
| `Adw.SpinRow` | birthday-editor.blp:40,56 |
| `Adw.StatusPage` | contact-pane.blp:13, setup-window.blp:41 |
| `Adw.ToastOverlay` | main-window.blp:111 |
| `Adw.ToolbarView` | main-window.blp:122,216,263, avatar-selector.blp:10, birthday-editor.blp:11, crop-dialog.blp:14, qr-code-dialog.blp:13 |

### GTK 4 (`Gtk`)

| Widget | Files (file:approx-line) |
|--------|--------------------------|
| `Gtk.ActionBar` | avatar-selector.blp:56 |
| `Gtk.Adjustment` | birthday-editor.blp:45,60 |
| `Gtk.Box` | main-window.blp:180,198,206,224,236, editable-avatar.blp:6, link-suggestion-grid.blp:5,23, avatar-selector.blp:40,58 |
| `Gtk.Button` | main-window.blp:127,139,147,212,222,228,241,247, preferences-window.blp, setup-window.blp:20,29, avatar-selector.blp:16,22,61,66, birthday-editor.blp:18,27, crop-dialog.blp:23,32, editable-avatar.blp:15,30, import-dialog.blp:23,29, link-suggestion-grid.blp:43,48, qr-code-dialog.blp (close button) |
| `Gtk.FlowBox` | avatar-selector.blp:44 |
| `Gtk.HeaderBar` | setup-window.blp:17 |
| `Gtk.Image` | contact-sheet-row.blp:29 |
| `Gtk.Label` | contact-sheet-row.blp:41,52, link-suggestion-grid.blp:28,38, qr-code-dialog.blp:40,48 |
| `Gtk.MenuButton` | main-window.blp:130,242 |
| `Gtk.Overlay` | editable-avatar.blp:6 |
| `Gtk.Picture` | qr-code-dialog.blp:30 |
| `Gtk.Revealer` | main-window.blp:197 |
| `Gtk.ScrolledWindow` | contact-pane.blp:22,37, avatar-selector.blp:34, qr-code-dialog.blp:19 |
| `Gtk.SearchEntry` | main-window.blp:162 |
| `Gtk.Shortcut` | main-window.blp:91,95,99,103,107, qr-code-dialog.blp:56 |
| `Gtk.ShortcutController` | main-window.blp:88, qr-code-dialog.blp:52 |
| `Gtk.Stack` | main-window.blp:168, contact-pane.blp:10 |
| `Gtk.StackPage` | contact-pane.blp:11,18,33 |
| `Gtk.Viewport` | avatar-selector.blp:37 |

---

## 2. Patterns Demonstrated

| # | Pattern | Description |
|---|---------|-------------|
| P1 | **ApplicationWindow + NavigationSplitView** | Split sidebar/content layout with collapsible sidebar; HeaderBar per pane |
| P2 | **NavigationPage wrapping** | Each pane wrapped in NavigationPage for back-nav history |
| P3 | **ToolbarView + HeaderBar** | Top/bottom toolbars with `[top]`/`[bottom]` slot syntax; content in implicit default slot |
| P4 | **Adw.Dialog modal sheets** | Replaces GtkDialog; Cancel/Done buttons in HeaderBar, suggeated-action styling |
| P5 | **PreferencesDialog + PreferencesPage** | Settings window using Adw preferences widgets |
| P6 | **PreferencesRow subclassing** | Custom row template extending Adw.PreferencesRow for contact properties |
| P7 | **StatusPage empty state** | Icon + title placeholder when no contact selected / no results |
| P8 | **Clamp for max-width** | Constrains wide content (contact sheet, QR code) to readable width |
| P9 | **Breakpoint responsive collapse** | Condition-based sidebar collapse at narrow widths (`max-width: 560sp`) |
| P10 | **SpinRow + ComboRow forms** | Form inputs inside PreferencesGroup (day/month/year for birthday) |
| P11 | **ButtonRow destructive action** | Row-level action with `destructive-action` style (remove birthday) |
| P12 | **ShortcutController + Shortcut** | Keyboard shortcuts via controller with action bindings |
| P13 | **Revealer slide-up action bar** | Selection mode bottom bar via Gtk.Revealer with `slide_up` transition |
| P14 | **FlowBox thumbnail grid** | Avatar selector using FlowBox with single selection mode |
| P15 | **Overlay floating buttons** | Edit/delete avatar buttons positioned via Overlay + halign/valign |
| P16 | **Stack page switching** | Multiple pages (none-selected / view / edit) via Gtk.Stack + visible-child-name |
| P17 | **SearchEntry with signals** | `search-changed` + `stop-search` + `search-delay` for debounced search |
| P18 | **Menu models + MenuButton** | `menu { section { item { action } } }` syntax; `primary: true` for hamburger |
| P19 | **CSS styles / css-classes** | `styles [...]` for widget-level classes; `css-classes [...]` for ad-hoc classes |
| P20 | **ShortcutsDialog** | Keyboard shortcuts help window using Adw.ShortcutsDialog/Section/Item |
| P21 | **Adjustment on SpinRow** | Inline Gtk.Adjustment for min/max/step on spin rows |
| P22 | **ActionBar bottom bar** | Bottom action bar with Button children (camera/file picker) |
| P23 | **Picture widget** | Displaying generated QR code image with `can-shrink: true` |
| P24 | **Adw.Spinner loading state** | Stack page showing spinner for initial load |
| P25 | **Accessibility attributes** | `accessibility { labelled-by / described-by }` on custom rows |
| P26 | **Signal bindings (`$callback`)** | Blueprint `$on_foo()` callbacks bound to widget signals |
| P27 | **Property bindings** | `bind` expressions for dynamic property values |
| P28 | **`hidden-when`** | Menu item visibility based on action state |

---

## 3. Best Code Examples By Pattern

| Pattern | File | Lines | Why |
|---------|------|-------|-----|
| **P1** Adw.ApplicationWindow | `contacts-main-window.blp` | 81-279 | Full window with split view, breakpoint, toasts, shortcuts |
| **P2** NavigationPage | `contacts-main-window.blp` | 118-121, 211-215 | title/name for each pane |
| **P3** ToolbarView | `contacts-main-window.blp` | 122-208 | `[top]` HeaderBar + `[bottom]` Revealer → typical chrome layout |
| **P4** Adw.Dialog | `contacts-birthday-editor.blp` | 5-85 | Clean dialog: HeaderBar start/end buttons, PreferencesPage content, signal bindings |
| **P5** PreferencesDialog | `contacts-preferences-window.blp` | 5-8 | Minimal settings window |
| **P6** PreferencesRow subclass | `contacts-contact-sheet-row.blp` | 5-79 | Custom row: child Box, Image, Labels, accessibility, CSS styles |
| **P7** StatusPage | `contacts-contact-pane.blp` | 13-16 | Empty state: icon-name + title |
| **P8** Clamp | `contacts-contact-pane.blp` | 27-31 | `maximum-size: 500` on scrolled contact sheet |
| **P9** Breakpoint | `contacts-main-window.blp` | 275-281 | `condition("max-width: 560sp")` → `collapsed: true` |
| **P10** SpinRow + ComboRow | `contacts-birthday-editor.blp` | 40-66 | SpinRow with Adjustment, ComboRow title |
| **P11** ButtonRow destructive | `contacts-birthday-editor.blp` | 73-80 | `styles ["destructive-action"]` on remove action |
| **P12** ShortcutController | `contacts-main-window.blp` | 88-109 | Global shortcuts: `<Control>n`, `Escape`, `<Control>Return`, `<Control>Delete` |
| **P13** Revealer action bar | `contacts-main-window.blp` | 197-208 | `transition-type: slide_up`, box with export/link/delete buttons |
| **P14** FlowBox grid | `contacts-avatar-selector.blp` | 44-50 | `max-children-per-line: 8`, single selection, homogeneous |
| **P15** Overlay buttons | `contacts-editable-avatar.blp` | 6-35 | Two circular buttons positioned at end/start corners |
| **P16** Stack pages | `contacts-contact-pane.blp` | 10-51 | 3 StackPages: none-selected, view, edit |
| **P17** SearchEntry | `contacts-main-window.blp` | 162-167 | `search-delay: 500`, `search-changed`, `stop-search` |
| **P18** Menu models | `contacts-main-window.blp` | 6-77 | Two menus: primary_menu_popover (sections) + contact_hamburger_menu_popover |
| **P19** CSS styles | `contacts-contact-sheet-row.blp` | 8-12, 25-27, 36-39 | Multiple `styles [...]` blocks on Box and Label |
| **P20** ShortcutsDialog | `contacts-shortcuts-dialog.blp` | 5-50 | Sections with ShortcutsItem, action-name + accelerator + title |
| **P21** Adjustment | `contacts-birthday-editor.blp` | 45-49, 60-64 | `lower`, `upper`, `step-increment` on SpinRow adjustments |
| **P22** ActionBar | `contacts-avatar-selector.blp` | 56-74 | `[center]` Box with camera + file buttons |
| **P23** Picture | `contacts-qr-code-dialog.blp` | 30-38 | `Picture` with card style, `can-shrink: true`, `alternative-text` |
| **P24** Spinner | `contacts-main-window.blp` | 170-173 | Loading page in Stack |
| **P25** Accessibility | `contacts-contact-sheet-row.blp` | 7-10 | `labelled-by: title`, `described-by: subtitle` |
| **P26** Signal bindings | `contacts-avatar-selector.blp` | 64-65, 68-69 | `clicked => $on_camera_button_clicked()`, `clicked => $on_file_clicked()` |
| **P27** Property binding | `contacts-contact-sheet-row.blp` | 54 | `visible: bind $contacts_utils_string_is_non_empty_closure(subtitle.label) as <bool>` |
| **P28** hidden-when | `contacts-main-window.blp` | 49,54 | `hidden-when: "action-disabled"` on favorite/unfavorite items |
