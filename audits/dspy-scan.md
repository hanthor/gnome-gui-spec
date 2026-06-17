# GNOME D-Spy: UI Definition File Audit

**Date:** 2026-06-17  
**Repo:** `sources/dspy`

---

## 5. File Count

- **`.ui` files:** 3
- **`.blp` files:** 0
- **`.xml` resource/schema files:** 2 (`src/dspy.gresource.xml`, `data/org.gnome.dspy.gschema.xml` — not UI-definition files)

**Total GUI-definition files:** 3

| # | File |
|---|------|
| 1 | `src/dspy-window.ui` |
| 2 | `src/dspy-introspectable-row.ui` |
| 3 | `src/dspy-simple-popover.ui` |

A companion CSS file (`src/style.css`) is also bundled via `dspy.gresource.xml`.

---

## 3. Framework

- **Language:** C
- **Build system:** Meson (confirmed via 21 `*.c` files in `src/`)
- **Toolkit:** GTK 4 + libadwaita
- **UI Definitions:** GtkBuilder XML (`.ui` files), inline `GtkBuilderListItemFactory` byte templates, GMenu XML
- **Resources:** GResource XML manifest (`dspy.gresource.xml`)
- **Settings:** GSettings XML schema (empty, only declares schema ID `org.gnome.dspy`)

---

## 1. Widget Inventory

### Adwaita (Adw*) Widgets

#### `src/dspy-window.ui`

| Widget | ID(s) | Approx. Line(s) | Count | Notes |
|--------|-------|-----------------|-------|-------|
| `AdwApplicationWindow` | (template root) | 2 | 1 | Template class `DspyWindow` |
| `AdwBreakpoint` | *(unnamed)*, `narrow_breakpoint` | 29–40 | 2 | 700sp and 500sp breakpoints |
| `AdwOverlaySplitView` | `overlay_split_view` | 42 | 1 | Master-detail container; sidebar-width-fraction=0.66, max-sidebar-width=800 |
| `AdwNavigationSplitView` | `split_view` | 48 | 1 | Nested split; sidebar-width-fraction=0.5, max-sidebar-width=400 |
| `AdwNavigationView` | `sidebar_view`, `content_view` | 53, 356 | 2 | Navigation stacks for sidebar and content |
| `AdwNavigationPage` | `connections_page`, `names_page`, `objects_page`, `interfaces_page`, `members_page`, +3 unnamed | 55, 158, 244, 354, 460, 468, 47, 52 | ~9 | Pages in navigation views |
| `AdwToolbarView` | (multiple) | 61, 166, 251, 360, 465, 493, 808, 912, 1009, 1362, 1387 | 11 | Standard toolbar+content layout |
| `AdwHeaderBar` | (multiple) | 63, 168, 253, 362, 493, 808, 912, 1009, 1363, 1389 | 10 | Header bars on every page |
| `AdwWindowTitle` | (multiple) | 66, 173, 258, 365, 496, 813, 917, 1014, 1394 | 9 | Dynamic title/subtitle with data bindings |
| `AdwStatusPage` | (2 unnamed) | 349, 880 | 2 | Empty-state placeholders |
| `AdwToastOverlay` | `property_toast` | 897 | 1 | Toast notification overlay |
| `AdwPreferencesPage` | (multiple) | 928, 1056, 1178, 1397 | 4 | Property/Signal/Method detail views + connection dialog |
| `AdwPreferencesGroup` | `parameters_group`, `result_group`, `duration_group` + many unnamed | 931, 969, 1059, 1100, 1181, 1222, 1310, 1323, 1360, 1399, 1409 | ~15 | Grouped preference rows |
| `AdwActionRow` | `property_value`, `dur_row`, `min_row`, `max_row` + many unnamed | 933–1021, 1176–1216, 1313–1321 | ~20 | Labeled detail rows with subtitle bindings |
| `AdwEntryRow` | `new_connection_entry` | 1412 | 1 | Entry row with `input-hints="no-emoji"` |
| `AdwDialog` | `connection_dialog` | 1385 | 1 | Modal dialog for new connection |

**Total Adw* widgets:** ~89 instances across ~13 distinct widget types.

### GTK (Gtk*) Widgets

#### `src/dspy-window.ui`

| Widget | ID(s) | Approx. Line(s) | Count | Notes |
|--------|-------|-----------------|-------|-------|
| `GtkShortcutController` | (unnamed) | 7 | 1 | Window-level shortcut controller |
| `GtkShortcut` | (3 unnamed) | 9, 16, 23 | 3 | Ctrl+N, Ctrl+W, Ctrl+B |
| `GtkWindowControls` | (multiple) | 71, 181, 266, 372, 501, 822, 921 | 7 | Window control buttons; visibility bound to `overlay_split_view.collapsed` |
| `GtkMenuButton` | (multiple) | 78, 188, 273, 379, 508, 829, 926, 1031 | 8 | Primary hamburger menus |
| `GtkScrolledWindow` | `result_frame` + others | 94, 200, 284, 393, 538, 1289 | 6 | Scrollable content areas; `hscrollbar-policy=never` |
| `GtkListView` | `connections_list_view`, `names_list_view`, `objects_list_view`, `interfaces_list_view`, `members_list_view` | 98, 208, 292, 401, 546 | 5 | Modern list views with `single-click-activate` |
| `GtkNoSelection` | `connections_selection`, `names_selection`, `objects_selection`, `interfaces_selection`, `members_selection` | 105, 215, 299, 406, 551 | 5 | No-selection model for navigation lists |
| `GtkFilterListModel` | `names_filtered`, `objects_filtered`, `interfaces_filtered`, `members_filtered` | 218, 302, 409, 553 | 4 | Filter proxy models |
| `GtkStringFilter` | `names_filter`, `objects_filter`, `interfaces_filter`, `members_filter` | 219, 304, 411, 554 | 4 | String-based filters |
| `GtkSortListModel` | `names_sorted`, `objects_sorted`, `interfaces_sorted` | 225, 316, 419 | 3 | Sort proxy models |
| `GtkCustomSorter` | `names_sorter` | 227 | 1 | Custom sort logic for bus names |
| `GtkStringSorter` | `objects_sorter`, `interfaces_sorter` | 319, 427 | 2 | String-based sorters |
| `GtkBuilderListItemFactory` | (multiple) | 112, 238, 329, 436, 567, 588 | 6 | Inline XML template factories |
| `GtkListItem` | (inline templates) | 115, 243, 334, 441, 571, 596 | 6 | Embedded list item templates |
| `GtkListHeader` | (inline template) | 573 | 1 | Section header factory in members list |
| `GtkBox` | (many) | throughout | ~25 | Horizontal/vertical layout containers |
| `GtkLabel` | (many, some named `title`) | throughout | ~25 | Text labels; some with `use-markup`, `selectable`, Pango attributes |
| `GtkImage` | (many) | throughout | ~15 | Icons (go-next-symbolic, warning-outline-symbolic, go-previous-symbolic, edit-copy-symbolic, view-refresh-symbolic) |
| `GtkSearchEntry` | (4 unnamed) | 192, 276, 385, 535 | 4 | Search/filter entry boxes; bidirectional binding with filters |
| `GtkStack` | `content_stack`, `details_stack`, `call_button_stack` | 470, 899, 1260 | 3 | Page stacks for navigation states |
| `GtkStackPage` | (multiple, named "empty", "content", "property", "signal", "method", "call", "cancel") | 472, 352, 801, 895, 1042, 1263, 1269 | 7 | Stack pages |
| `GtkButton` | `copy_property_button`, `refresh_button`, `connect_button` + unnamed | 256, 807, 911, 1008, 1029, 1048, 1274, 1280, 1418 | ~9 | Action buttons; various styles (pill, flat, suggested-action, destructive-action) |
| `GtkListBox` | `in_arguments` | 1232 | 1 | Method argument input list; CSS class `boxed-list` |
| `GtkTextView` | `result_view` | 1298 | 1 | Monospace text view for method results; editable=false, wrap-mode=char |
| `GtkTextBuffer` | `result_buffer` | 1310 | 1 | Text buffer for method results |

#### `src/dspy-introspectable-row.ui`

| Widget | ID(s) | Approx. Line(s) | Count | Notes |
|--------|-------|-----------------|-------|-------|
| `GtkWidget` | (template root) | 2 | 1 | Template class `DspyIntrospectableRow` |
| `GtkBox` | (unnamed) | 4 | 1 | Horizontal container |
| `GtkLabel` | `title` | 6 | 1 | Label with `use-markup=true`, xalign=0 |

#### `src/dspy-simple-popover.ui`

| Widget | ID(s) | Approx. Line(s) | Count | Notes |
|--------|-------|-----------------|-------|-------|
| `GtkPopover` | (template root) | 3 | 1 | Template class `DspySimplePopover` |
| `GtkBox` | (2 unnamed) | 5, 20 | 2 | Vertical outer + horizontal inner containers |
| `GtkLabel` | `title`, `message` | 15, 36 | 2 | Bold title (Pango weight="bold"), dim-label message |
| `GtkEntry` | `entry` | 24 | 1 | Text input, width-chars=20 |
| `GtkButton` | `button` | 29 | 1 | With `suggested-action` CSS class, sensitive=false |

**Total Gtk\* widgets:** ~170 instances across ~29 distinct widget types.

---

## 2. Patterns Demonstrated

| # | Pattern | Description | Source |
|---|---------|-------------|--------|
| 1 | **AdwApplicationWindow** | Top-level application window template with adaptive content | `dspy-window.ui:2` |
| 2 | **AdwBreakpoint** | Responsive layout breakpoints collapsing split views at 700sp and 500sp thresholds; 500sp also fires a `signal::apply` handler | `dspy-window.ui:29–40` |
| 3 | **AdwOverlaySplitView** | Master-detail container that overlays sidebar atop content when narrow, with configurable sidebar-width-fraction (0.66) and max-sidebar-width (800px) | `dspy-window.ui:42` |
| 4 | **AdwNavigationSplitView** | Nested split providing sidebar+content navigation layout with another sidebar-width-fraction (0.5) and max-sidebar-width (400px) | `dspy-window.ui:48` |
| 5 | **AdwNavigationView** | Navigation stack managing push/pop of `AdwNavigationPage` children (sidebar and content views) | `dspy-window.ui:53, 356` |
| 6 | **AdwNavigationPage** | Individual pages in a navigation view, each with a translatable title and child widget | `dspy-window.ui:55, 158, 244, 354, 460, 468` |
| 7 | **AdwToolbarView** | Canonical GNOME layout: `AdwHeaderBar` in top slot + scrollable content, used on nearly every page | `dspy-window.ui:61, 166, 251…` |
| 8 | **AdwHeaderBar** | Top header bar pattern with title widget, start/end children, and window controls | `dspy-window.ui:63, 168, 253…` |
| 9 | **AdwWindowTitle** | Dynamic title+subtitle widget bound to model data via GObject property bindings | `dspy-window.ui:66, 173, 258…` |
| 10 | **AdwStatusPage** | Empty-state page with icon, title, and description ("Explore Objects", "Explore Interfaces") | `dspy-window.ui:349, 880` |
| 11 | **AdwToastOverlay** | Overlay providing toast notification capability around the property detail view | `dspy-window.ui:897` |
| 12 | **AdwPreferencesPage** | Preferences-style page layout used for property/signal/method detail views; shows grouped `AdwActionRow` entries | `dspy-window.ui:928, 1056, 1178, 1397` |
| 13 | **AdwPreferencesGroup** | Grouped rows with optional title (e.g., "Parameters", "Result", "Statistics") within preference pages | `dspy-window.ui:931, 969, 1059…` |
| 14 | **AdwActionRow** | Labeled detail row with title and bindable subtitle; supports suffix widgets, `subtitle-selectable`, and `activatable-widget` | `dspy-window.ui:933, 944, 955…` |
| 15 | **AdwEntryRow** | Preferences-row-style text entry with `input-hints="no-emoji"` for bus address input | `dspy-window.ui:1412` |
| 16 | **AdwDialog** | Modal dialog for "New Connection" with content-width=400 and toolbar layout inside | `dspy-window.ui:1385` |
| 17 | **GtkShortcutController** | Window-level keyboard shortcut controller with typed trigger strings (`<Control>n`, `<Control>w`, `<Control>b`) | `dspy-window.ui:7–28` |
| 18 | **GtkWindowControls** | Window control buttons (minimize/maximize/close) hidden when `overlay_split_view` is collapsed (bound via `<binding>`) | `dspy-window.ui:71, 181, 266…` |
| 19 | **GtkMenuButton · primary menu** | Hamburger menu button with `primary=true` referencing a GMenu `menu-model` (New Window, Connect to Bus, About) | `dspy-window.ui:78, 188…` |
| 20 | **GtkSearchEntry · bidirectional filter binding** | Search entry with `bind-source`/`bind-property` (`sync-create|bidirectional`) linking text to a `GtkStringFilter.search` property | `dspy-window.ui:192, 276, 385, 535` |
| 21 | **GtkListView · single-click-activate** | Modern list widget replacing GtkTreeView; `single-click-activate=true` for navigation-style interaction | `dspy-window.ui:98, 208, 292, 401, 546` |
| 22 | **GtkNoSelection** | No-selection mode for lists that act as navigation (no highlighted selection state) | `dspy-window.ui:105, 215, 299, 406, 551` |
| 23 | **GtkFilterListModel + GtkStringFilter** | Filter proxy model wrapping a sort model, driven by search entry text, with expression lookups on item properties | `dspy-window.ui:218, 302, 409, 553` |
| 24 | **GtkSortListModel + GtkStringSorter / GtkCustomSorter** | Sort proxy model using string or custom sort on typed expression lookups | `dspy-window.ui:225, 316, 419` |
| 25 | **GtkBuilderListItemFactory (inline XML)** | Inline `GtkListItem`/`GtkListHeader` templates embedded as CDATA bytes in the factory — no separate .ui files needed for list items | `dspy-window.ui:112–156, 238–312, 329–342, 436–455, 567–623` |
| 26 | **GtkListHeader · section headers** | Header factory for `GtkListView` producing section dividers with closure-bound text (`get_member_header_text`) | `dspy-window.ui:567–584` |
| 27 | **GtkStack + GtkStackPage · state switching** | Three stacks: content (empty vs content), details (empty/property/signal/method), and call_button (call/cancel); pages selected programmatically by name | `dspy-window.ui:470, 899, 1260` |
| 28 | **GtkPopover · simple popover** | Popover template with entry, button, and dim-label; pattern used for property editing | `dspy-simple-popover.ui:3` |
| 29 | **GtkTextView + GtkTextBuffer · monospace results** | Read-only monospace text view with `wrap-mode=char` for displaying D-Bus method call results; styled with `card` CSS | `dspy-window.ui:1298–1315` |
| 30 | **GtkListBox · boxed-list** | Method argument list using `GtkListBox` with `boxed-list` CSS class | `dspy-window.ui:1232` |
| 31 | **GtkLabel · Pango attributes** | Bold title label via explicit `<attributes><attribute name="weight" value="bold"/></attributes>` | `dspy-simple-popover.ui:17` |
| 32 | **GtkScrolledWindow · hscrollbar-policy=never** | Standard GNOME vertical-only scrolling pattern, applied to all sidebar list containers | `dspy-window.ui:94, 200, 284…` |
| 33 | **GtkLabel · ellipsize + xalign** | Middle-ellipsized labels with xalign=0 for list item text overflow | Throughout inline list templates |
| 34 | **GtkLabel · use-markup with binding** | Labels rendering Pango markup from bound data properties (`use-markup=true` + `binding name="label"`) | `dspy-window.ui:340, 454, 609` |
| 35 | **Closure binding** | Complex computed bindings via `<closure>` calling C functions (`shorten_string`, `get_member_header_text`) | `dspy-window.ui:1015, 578` |
| 36 | **Deep nested lookups** | Multi-level property lookups traversing object graphs (e.g., `DspyWindow → connection → title`) | Throughout `dspy-window.ui` |
| 37 | **GMenu XML · in-UI menu definition** | `<menu>` element with `<section>`/`<item>` defining the primary menu alongside the template (not in a separate file); uses `_` accelerators | `dspy-window.ui:1436–1457` |
| 38 | **CSS · suggested-action** | Suggested-action (blue) button styling on the Connect and Call Method buttons | `dspy-window.ui:1281, 1430` |
| 39 | **CSS · destructive-action** | Destructive-action (red) button styling on the Cancel button | `dspy-window.ui:1291` |
| 40 | **CSS · pill** | Pill-shaped button silhouette (rounded ends) | `dspy-window.ui:1278, 1289, 1428` |
| 41 | **CSS · flat** | Flat (borderless) button styling on copy and refresh icon buttons | `dspy-window.ui:1044, 1058` |
| 42 | **CSS · card** | Card-like visual container (rounded, background) on result scrolled window and text view | `dspy-window.ui:1293, 1315` |
| 43 | **CSS · boxed-list** | Boxed-list styling on `GtkListBox` for method arguments | `dspy-window.ui:1236` |
| 44 | **CSS · navigation-sidebar** | Sidebar navigation row spacing/padding via external CSS (`style.css`); also triggers `listview.navigation-sidebar row` selectors | `dspy-window.ui:100, 212, 296…` |
| 45 | **CSS · property** | Custom CSS class on all `AdwActionRow` instances in detail views (likely for spacing or font styling) | `dspy-window.ui:941, 952, 963…` |
| 46 | **CSS · dimmed + caption** | Dimmed caption text for subtitle lines in the names list | `dspy-window.ui:263` |
| 47 | **CSS · dim-label** | Dim-label on the popover message label | `dspy-simple-popover.ui:41` |
| 48 | **CSS · title** | Title-sized text on the members list header label | `dspy-window.ui:581` |
| 49 | **CSS · sidebar-label** | Custom CSS class on connection list item labels | `dspy-window.ui:142` |
| 50 | **CSS · large-button** | Large button sizing on Connect and Call/Cancel buttons | `dspy-window.ui:1279, 1290, 1429` |
| 51 | **AdwBreakpoint · signal::apply** | The 500sp breakpoint fires `dspy_window_narrow_apply_cb` via `swapped=true`, enabling programmatic narrow-layout customization beyond property setters | `dspy-window.ui:38` |
| 52 | **GtkEntry · width-chars** | Explicit character-width sizing on text entries (width-chars=20) | `dspy-simple-popover.ui:25` |
| 53 | **GtkImage · warning-outline-symbolic with conditional visibility** | Warning icon visible only when `DspyConnection.has-error` is true — data-driven icon visibility | `dspy-window.ui:145–151` |
| 54 | **AdwActionRow · activatable-widget** | Property value row activates the refresh button when clicked, creating a linked interaction | `dspy-window.ui:1004` |
| 55 | **Translatable strings** | All user-facing text uses `translatable="yes"` for gettext localization | Throughout |
| 56 | **GtkListItem · tooltip binding** | List item labels bound to `tooltip-text`/`tooltip-markup` from model data for overflow tooltips | `dspy-window.ui:257, 344` |

---

## 4. Notable Design Elements

### Custom CSS (`src/style.css`)

```css
window listview.navigation-sidebar row {
  margin-bottom: 3px;
}
window listview.navigation-sidebar row > * {
  padding: 6px 0 6px 3px;
}
```

- Targets `navigation-sidebar` list rows with fine-grained margin and padding control.
- The `window` prefix scopes styles to the main window only.

### CSS Classes Applied Inline

| Class | Where | Purpose |
|-------|-------|---------|
| `navigation-sidebar` | All sidebar `GtkListView` widgets | Sidebar appearance + custom CSS targeting |
| `sidebar-label` | Connection list item labels | Custom label styling |
| `property` | Every `AdwActionRow` in detail views | Detail row styling |
| `dimmed` + `caption` | Names list subtitle row | Small dimmed caption text |
| `dim-label` | Popover message label | Dimmed auxiliary text |
| `title` | Members list header label | Title-sized header |
| `card` | Result scrolled window + text view | Card-style framing |
| `boxed-list` | Method arguments `GtkListBox` | Boxed list appearance |
| `suggested-action` | Connect button, Call Method button | Blue suggested action |
| `destructive-action` | Cancel button | Red destructive action |
| `pill` | Connect, Call Method, Cancel buttons | Rounded pill shape |
| `flat` | Copy and refresh icon buttons | Borderless flat icons |
| `large-button` | Connect, Call Method, Cancel buttons | Increased button size |

### Accessibility & Unusual Configurations

1. **`subtitle-selectable=true`** — Used on every `AdwActionRow` in detail views so users can copy D-Bus paths, signatures, etc. A thoughtful accessibility touch for a debugging tool.

2. **`input-hints="no-emoji"`** — On `AdwEntryRow` for bus address input, preventing emoji keyboard from appearing on touch devices — appropriate for a D-Bus address field.

3. **Two-tier responsive layout** — `AdwOverlaySplitView` (collapses at 700sp) wraps an `AdwNavigationSplitView` (collapses at 500sp). This creates three layout modes:
   - **Wide (>700sp):** Full three-column (sidebar sidebar + content + detail).
   - **Medium (500–700sp):** Sidebar overlay collapses, showing sidebar *or* content.
   - **Narrow (<500sp):** Both splits collapse; `signal::apply` triggers custom code in `dspy_window_narrow_apply_cb` for phone-sized layout.

4. **`GtkWindowControls` conditional visibility** — Window control buttons appear only when the overlay split view is collapsed, preventing duplicate window controls when both panes are visible.

5. **Inline `GtkBuilderListItemFactory` with CDATA** — All 6 list item templates are embedded directly in `dspy-window.ui` as CDATA byte blocks rather than separate .ui files. Each contains a full `<interface><template class="GtkListItem">...</template></interface>` document.

6. **`GtkListHeader` for sectioned lists** — The members list uses a `header-factory` producing `GtkListHeader` items with section titles computed via a C closure (`get_member_header_text`), grouping members by category (Properties, Signals, Methods).

7. **Stack-based call button** — The method call button uses a two-page `GtkStack` ("call" / "cancel") rather than changing a single button's label/action — probably to maintain correct CSS class application (`suggested-action` vs `destructive-action`).

8. **`propagate-natural-height` on result scrolled window** — The result `GtkScrolledWindow` has `max-content-height=600` and `propagate-natural-height=true`, allowing it to grow naturally up to 600px before scrolling.

9. **`GtkMessageDialog`-style popover** — `DspySimplePopover` mimics a message dialog pattern inside a popover: bold title, entry field, suggested-action button, and dim-label message — a common GNOME inline-editing pattern.

10. **Pango `weight="bold"` via `<attributes>`** — The popover title uses explicit Pango attribute markup rather than a CSS class, the older approach to bold formatting in GtkBuilder XML.
