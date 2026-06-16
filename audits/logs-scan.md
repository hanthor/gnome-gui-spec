# gnome-logs GUI Widget Audit

Scanned 7 files: `data/*.ui`. No `.blp` files present.

---

## 1. Widget Inventory

### Adw (libadwaita) Widgets

| Widget | File | Line |
|--------|------|------|
| **AdwApplicationWindow** | `data/gl-window.ui` | 3 (template parent) |
| **AdwHeaderBar** | `data/gl-eventtoolbar.ui` | 30 |
| **AdwFlap** | `data/gl-eventviewlist.ui` | 7 |

### Gtk Containers

| Widget | File | Line |
|--------|------|------|
| **GtkBox** | `data/gl-window.ui` | 7 |
| | `data/gl-window.ui` | 18 |
| | `data/gl-eventviewlist.ui` | 3 (template parent) |
| | `data/gl-eventviewlist.ui` | 16 |
| | `data/gl-eventviewlist.ui` | 22 |
| | `data/gl-searchpopover.ui` | 26, 149, 154 |
| **GtkGrid** | `data/gl-eventviewdetail.ui` | 13 |
| | `data/gl-searchpopover.ui` | 12, 195, 281 |
| **GtkInfoBar** | `data/gl-window.ui` | 14 |
| **GtkSeparator** | `data/gl-eventviewlist.ui` | 12 |
| **GtkStack** | `data/gl-searchpopover.ui` | 6, 17, 79, 83, 114, 193, 225, 236, 272, 305, 316, 360, 390, 413 |
| **GtkStackPage** | `data/gl-searchpopover.ui` | 11, 20, 42, 72, 78, 87, 100, 194, 199, 234, 241, 279, 291, 300, 314, 374, 406, 419, 435 |
| **GtkRevealer** | `data/gl-searchpopover.ui` | 147, 256, 340, 432 |
| **GtkScrolledWindow** | `data/gl-eventviewdetail.ui` | 8 |
| | `data/gl-eventviewlist.ui` | 39 |
| | `data/gl-searchpopover.ui` | 44, 118 |

### Gtk Controls

| Widget | File | Line |
|--------|------|------|
| **GtkButton** | `data/gl-window.ui` | 26, 33 |
| | `data/gl-eventtoolbar.ui` | 41 |
| | `data/gl-searchpopover.ui` | 23, 114, 185, 309, 378 |
| **GtkToggleButton** | `data/gl-eventtoolbar.ui` | 57 |
| **GtkMenuButton** | `data/gl-eventtoolbar.ui` | 33, 48 |
| | `data/gl-eventviewlist.ui` | 32 |
| **GtkCheckButton** | `data/gl-searchpopover.ui` | 157, 165 |
| **GtkSearchEntry** | `data/gl-eventviewlist.ui` | 27 |
| **GtkSearchBar** | `data/gl-eventviewlist.ui` | 19 |
| **GtkEntry** | `data/gl-searchpopover.ui` | 245, 327 |
| **GtkSpinButton** | `data/gl-searchpopover.ui` | 289, 303, 335, 348, 402, 415, 446, 458 |
| **GtkCalendar** | `data/gl-searchpopover.ui` | 255, 345 |
| **GtkLabel** | `data/gl-window.ui` | 22 |
| | `data/gl-categorylist.ui` | 10, 19, 28, 37, 46, 55, 64, 73, 82, 91 |
| | `data/gl-eventviewdetail.ui` | 21, 34, 47, 60, 73, 86, 99, 112, 125, 138, 151, 164, 177, 190, 203, 216, 229, 242, 255 |
| | `data/gl-searchpopover.ui` | 29, 81, 109, 156, 164, 195, 207, 280 |
| **GtkImage** | `data/gl-searchpopover.ui` | 35, 129, 185, 207, 294 |

### Gtk List/Tree Models & Views

| Widget | File | Line |
|--------|------|------|
| **GtkListBox** | `data/gl-categorylist.ui` | 4 |
| | `data/gl-eventviewlist.ui` | 41 |
| **GtkListBoxRow** | `data/gl-categorylist.ui` | 7, 16, 25, 34, 43, 52, 61, 70, 79, 88 |
| **GtkListStore** | `data/gl-searchpopover.ui` | 475, 594 |
| **GtkTreeView** | `data/gl-searchpopover.ui` | 46, 116 |
| **GtkTreeViewColumn** | `data/gl-searchpopover.ui` | 51, 115 |
| **GtkCellRendererText** | `data/gl-searchpopover.ui` | 54, 121 |
| **GtkTreeSelection** | `data/gl-searchpopover.ui` | 62, 133 |

### Gtk Popovers & Overlays

| Widget | File | Line |
|--------|------|------|
| **GtkPopover** | `data/gl-eventviewdetail.ui` | 3 (template parent) |
| | `data/gl-searchpopover.ui` | 3 (template parent) |
| **GtkShortcutsWindow** | `data/help-overlay.ui` | 3 |
| **GtkShortcutsSection** | `data/help-overlay.ui` | 7 |
| **GtkShortcutsGroup** | `data/help-overlay.ui` | 9, 36 |
| **GtkShortcutsShortcut** | `data/help-overlay.ui` | 12, 18, 24, 30, 39, 45 |

### Other

| Widget | File | Line |
|--------|------|------|
| **GtkAdjustment** | `data/gl-searchpopover.ui` | 618, 625, 632, 639, 646, 653, 660, 667 |

### Custom Composite Widgets (in .ui templates)

| Widget | File | Line |
|--------|------|------|
| **GlEventToolbar** | `data/gl-window.ui` | 10 |
| **GlEventViewList** | `data/gl-window.ui` | 41 |
| **GlCategoryList** | `data/gl-eventviewlist.ui` | 9 |

**Total unique GTK/Libadwaita widget classes: 28**

---

## 2. Patterns Demonstrated

### A. AdwApplicationWindow as top-level template
- `gl-window.ui:3` — Template parent is `AdwApplicationWindow` with `default-width`/`default-height` properties. Standard GNOME app shell.

### B. AdwHeaderBar with end/title child types
- `gl-eventtoolbar.ui:30` — HeaderBar using `child type="end"` for menu button, export button, search toggle. `child type="title"` for a GtkMenuButton (boot selector). Fully native CSD.

### C. Sidebar navigation via GtkListBox with CSS class "navigation-sidebar"
- `gl-categorylist.ui:4-98` — ListBox with `selection-mode="browse"`, `style class="navigation-sidebar"`, contains GtkListBoxRow children with GtkLabel. Category filter for logs.

### D. AdwFlap for adaptive sidebar/content layout
- `gl-eventviewlist.ui:7` — AdwFlap with `flap` (category list), `separator` (GtkSeparator), and `content` children. Folds sidebar into a swipeable flap on narrow windows.

### E. GtkSearchBar + GtkSearchEntry with signal handling
- `gl-eventviewlist.ui:19-37` — SearchBar wrapping a GtkSearchEntry + GtkMenuButton in a `.linked` GtkBox. Signal `notify::search-mode-enabled` on the bar, `search-changed` on the entry.

### F. GtkPopover as template (detail view / search popover)
- `gl-eventviewdetail.ui:3` — Full template with `parent="GtkPopover"`. Contains GtkScrolledWindow > GtkGrid with labeled detail fields.
- `gl-searchpopover.ui:3` — Large popover using GtkStack for multi-page navigation (main menu ↔ custom range submenu).

### G. GtkStack + GtkStackPage for page switching
- `gl-searchpopover.ui:6-145` — Outer Stack for main/custom-range pages. Inner Stacks for parameter selection (button ↔ list), range selection (button ↔ list). Transitions: `slide-left-right`, `crossfade`, `slide-up-down`.

### H. GtkRevealer for progressive disclosure
- `gl-searchpopover.ui:147` — Revealer for "Search Type" radio group (shown conditionally).
- `gl-searchpopover.ui:256,340` — Revealers for start/end date calendars.

### I. GtkInfoBar for error/warning messages
- `gl-window.ui:14-39` — InfoBar with `message-type="GTK_MESSAGE_ERROR"`, `visible="False"`. Contains a message label and action buttons (Help, Ignore). Signals via handler on parent object.

### J. GtkCalendar with day-selected signal
- `gl-searchpopover.ui:255,345` — GtkCalendar with `show_week_numbers`, `day-selected` signal for start/end date picking.

### K. GtkSpinButton with adjustment objects, input/output signal formatting
- `gl-searchpopover.ui:289-471` — SpinButtons for Hr/Min/Sec/AM-PM time entry. Uses GtkAdjustment objects, `output` signal for formatting, `input` signal for validation.

### L. GtkListStore with inline data for dropdown options
- `gl-searchpopover.ui:475-593` — `parameter_liststore` with 3 columns (string, boolean separator flag, enum). Inline `<data>` rows. Used by GtkTreeView with GtkCellRendererText bound to column 0.

### M. GtkCheckButton radio group (mutually exclusive checkboxes)
- `gl-searchpopover.ui:157-168` — Two GtkCheckButtons inside a `.linked` GtkBox. `checkbutton_exact` sets `group="checkbutton_substring"` to form a radio group.

### N. GtkShortcutsWindow (help overlay)
- `data/help-overlay.ui:3-56` — Full shortcuts window with sections, groups, and shortcuts bound to GActions.

### O. GtkMenuButton with GMenu model (primary menu)
- `gl-eventtoolbar.ui:33-38` — MenuButton referencing a `<menu>` model defined at top of file. Classic hamburger menu pattern.

### P. CSS style classes on widgets
- `navigation-sidebar` (category list), `linked` (search bar, search-type group), `dim-label` (field labels), `flat` (headerbar title button, back button), `title-menu-button`, custom detail classes (`detail-field-label`, `detail-message`, etc.).

### Q. GActions + signal handlers for loose coupling
- Nearly all interactive widgets use `action-name` (e.g., `win.search`, `win.export`, `app.new-window`) or `signal name="..." handler="..." object="..."`.

---

## 3. Best Code Examples (file + line)

| Pattern | Best Example | Why |
|---------|-------------|-----|
| **AdwApplicationWindow template** | `gl-window.ui:3-47` | Clean window with default size, composite child widgets, InfoBar |
| **AdwHeaderBar full setup** | `gl-eventtoolbar.ui:30-62` | Title widget, end buttons, GMenuButton with model, toggle button, icon-only buttons |
| **Sidebar list (Navigation)** | `gl-categorylist.ui:1-100` | ListBox with "navigation-sidebar" CSS, browse selection, labeled rows |
| **Adaptive AdwFlap layout** | `gl-eventviewlist.ui:7-47` | Flap with flap+separator+content, folds sidebar on narrow windows |
| **GtkSearchBar + SearchEntry** | `gl-eventviewlist.ui:19-37` | Search bar with notify signal, .linked box with search dropdown |
| **Popover as template (detail)** | `gl-eventviewdetail.ui:1-270` | GtkPopover parent, ScrolledWindow > Grid with field labels, closed signal |
| **GtkStack multi-page popover** | `gl-searchpopover.ui:6-11` | Named StackPages, animated transitions, nested stacks |
| **GtkRevealer progressive disclosure** | `gl-searchpopover.ui:147-170` | Revealer wrapping linked GtkCheckButton radio group |
| **GtkInfoBar with action buttons** | `gl-window.ui:14-39` | Error InfoBar, message label, Help/Ignore buttons with signal handlers |
| **GtkCalendar date picker** | `gl-searchpopover.ui:255-268` | Calendar + Revealer, day-selected signal, show_week_numbers |
| **GtkSpinButton time entry** | `gl-searchpopover.ui:300-371` | Full Hr/Min/Sec/AM-PM grid with adjustments, input/output formatting signals |
| **GtkListStore inline data** | `gl-searchpopover.ui:476-509` | Parameter liststore with columns, separator rows, enum values, inline rows |
| **GtkCheckButton as radio group** | `gl-searchpopover.ui:155-168` | Two checkbuttons, one with `group=` pointing to the other, inside .linked box |
| **GtkShortcutsWindow** | `help-overlay.ui:1-56` | Sections > Groups > Shortcuts bound to GActions |
| **GMenu model for MenuButton** | `gl-eventtoolbar.ui:1-28` | Menu definition with sections, items, labels, and GActions |
| **CSS style classes** | `gl-searchpopover.ui` (throughout); `gl-categorylist.ui:95-97` | .linked, .navigation-sidebar, .dim-label, .flat, custom detail classes |
