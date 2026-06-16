# simple-scan GUI Audit

**Source:** `/var/home/james/dev/gnome-spec/sources/simple-scan/data/ui/`  
**Files scanned:** 7 `.ui` files (GTK4 + libadwaita 1.0)

---

## 1. Widget Inventory

### libadwaita Widgets

| Widget | File | Line(s) |
|---|---|---|
| AdwApplicationWindow | app-window.ui | 172 |
| AdwHeaderBar | app-window.ui, drivers-dialog.ui, reorder-pages-dialog.ui | 190, 14, 10 |
| AdwSpinner | app-window.ui | 208 |
| AdwButtonContent | app-window.ui | 236, 327 |
| AdwToastOverlay | app-window.ui | 271 |
| AdwStatusPage | app-window.ui | 279 |
| AdwPreferencesDialog | preferences-dialog.ui | 22 |
| AdwPreferencesPage | preferences-dialog.ui | 24 |
| AdwPreferencesGroup | preferences-dialog.ui, authorize-dialog.ui | 26, 94, 118; 22 |
| AdwActionRow | preferences-dialog.ui | 29, 72, 96, 118, 137, 157, 171 |
| AdwToggleGroup | preferences-dialog.ui | 31, 77 |
| AdwToggle | preferences-dialog.ui | 33, 39, 45, 79, 85, 91, 97, 103 |
| AdwComboRow | preferences-dialog.ui | 67, 80, 89 |
| AdwEntryRow | authorize-dialog.ui | 26 |
| AdwPasswordEntryRow | authorize-dialog.ui | 32 |
| AdwShortcutsDialog | shortcuts-dialog.ui | 2 |
| AdwShortcutsSection | shortcuts-dialog.ui | 4, 45, 75, 108 |
| AdwShortcutsItem | shortcuts-dialog.ui | 7, 11, 16, 21, 26, 49, 54, 59, 64, 78, 83, 88, 93, 98, 111, 116, 121, 126, 131 |

### GTK4 Widgets

| Widget | File | Line(s) |
|---|---|---|
| GtkBox | app-window.ui, authorize-dialog.ui, drivers-dialog.ui, preferences-dialog.ui, reorder-pages-dialog.ui, reorder-pages-item.ui | 179, 194, 207, 282, 310, 317, 336; 10, 14, 41; 37, 104; 138, 149, 161; 13, 41, 73; 10, 18 |
| GtkPopoverMenu | app-window.ui | 183 |
| GtkMenuButton | app-window.ui | 245, 252 |
| GtkButton | app-window.ui, authorize-dialog.ui, drivers-dialog.ui, reorder-pages-item.ui | 199, 229, 259, 302, 322, 339, 346, 359; 46, 53, 99; 8 (as template parent) |
| GtkButton (decorative result) | drivers-dialog.ui | 99 |
| GtkLabel | app-window.ui, drivers-dialog.ui, reorder-pages-item.ui | 211, 283; 17, 47, 53, 108, 113; 11 |
| GtkStack | app-window.ui, drivers-dialog.ui | 273; 28 |
| GtkStackPage | app-window.ui, drivers-dialog.ui | 276, 314; 31, 71 |
| GtkDropDown | app-window.ui | 296 |
| GtkActionBar | app-window.ui | 320 |
| GtkToggleButton | app-window.ui | 353 |
| GtkWindow | authorize-dialog.ui, drivers-dialog.ui, reorder-pages-dialog.ui | 4, 4, 8 |
| GtkWindowHandle | authorize-dialog.ui, reorder-pages-dialog.ui | 14; 16 |
| GtkRevealer | drivers-dialog.ui | 9, 59 |
| GtkProgressBar | drivers-dialog.ui | 62 |
| GtkImage | drivers-dialog.ui, reorder-pages-item.ui | 42, 106; 23, 28, 33 |
| GtkAdjustment | preferences-dialog.ui | 3, 9, 15 |
| GtkScale | preferences-dialog.ui | 99, 111, 123 |
| GtkSwitch | preferences-dialog.ui | 138, 174 |
| GtkEntry | preferences-dialog.ui | 158, 178 |
| GtkSizeGroup | preferences-dialog.ui | 190 |

### Custom Widgets

| Widget | File | Line |
|---|---|---|
| ReorderPagesItem (GtkButton subclass) | reorder-pages-item.ui | 8 |

---

## 2. Patterns Demonstrated

### A. Application Shell
- **AdwApplicationWindow as root template** with `GtkBox` vertical content, `AdwHeaderBar`, `GtkStack` for page switching (app-window.ui:172-370)

### B. Header Bar with Toolbar Controls
- **AdwHeaderBar** with `start` children (scan button group) and `end` children (menu + save) (app-window.ui:190-269)
- `titlebar` property on `GtkWindow` with `AdwHeaderBar` + flat style class for dialog headers (drivers-dialog.ui:9-24)

### C. Empty/Startup State
- **AdwStatusPage** with icon, description label, and inline dropdown for device selection (app-window.ui:279-308)

### D. View Switching
- **GtkStack + GtkStackPage** with named pages (`startup` / `document`) (app-window.ui:273-370)
- Stack with `transition-type` property for animated page transitions (drivers-dialog.ui:28-30)

### E. Menus (GMenu-based)
- Inline `<menu>` definitions with `<section>`, `<item>`, `<submenu>`, `action`, `target` attributes (app-window.ui:7-170)
- **GtkPopoverMenu** consuming `menu-model` property (app-window.ui:183-188)
- **GtkMenuButton** with `menu_model` property + `primary` attribute for primary menu (app-window.ui:245-256)

### F. Icon + Label Buttons
- **AdwButtonContent** child with `icon-name` + `label` + `use-underline` (app-window.ui:236-241, 327-332)

### G. Toast Notifications
- **AdwToastOverlay** wrapping the main content area (app-window.ui:271-272)

### H. Bottom Action Bar
- **GtkActionBar** with `start`, `center` children containing icon buttons grouped horizontally (app-window.ui:320-368)

### I. Toggle Button
- **GtkToggleButton** for toggle-able UI state (e.g., crop mode) (app-window.ui:353-357)

### J. Modal Dialogs
- `GtkWindow` template with `modal=True`, `resizable=False`, `titlebar` set to `AdwHeaderBar` (authorize-dialog.ui:4-9, drivers-dialog.ui:4-8, reorder-pages-dialog.ui:8-11)

### K. Dialog Content with WindowHandle
- `GtkWindowHandle` wrapping dialog body content for CSD drag support (authorize-dialog.ui:14-67, reorder-pages-dialog.ui:16-79)

### L. Form Fields
- **AdwEntryRow** + **AdwPasswordEntryRow** inside **AdwPreferencesGroup** for labeled form inputs (authorize-dialog.ui:26-36)
- **AdwActionRow** with `activatable_widget` linking label to child widget (preferences-dialog.ui:29-52)

### M. Preferences Window
- **AdwPreferencesDialog** template with **AdwPreferencesPage** → **AdwPreferencesGroup** hierarchy (preferences-dialog.ui:22-189)
- **AdwComboRow** for enumerated choices (preferences-dialog.ui:67-71, 80-84, 89-93)
- **AdwToggleGroup + AdwToggle** for radio-button-like selection groups (preferences-dialog.ui:31-53, 77-105)
- **GtkScale** with **GtkAdjustment** for numeric sliders inside AdwActionRow (preferences-dialog.ui:99-105, 111-117, 123-128)
- **GtkSwitch** inside AdwActionRow for boolean toggles (preferences-dialog.ui:138-143)
- **GtkEntry** inside AdwActionRow for text input (preferences-dialog.ui:158-162)
- **GtkSizeGroup** to align scale widgets horizontally (preferences-dialog.ui:190-195)

### N. Progress / Loading States
- **GtkRevealer** wrapping **GtkProgressBar** for show/hide animation (drivers-dialog.ui:59-64)

### O. Result / Status Screens
- Dedicated `GtkStackPage` with icon, labels, and action button for result display (drivers-dialog.ui:71-120)

### P. Custom Composite Widget Template
- `GtkButton` subclass template (`ReorderPagesItem`) with `GtkBox`, `GtkLabel`, and `GtkImage` children (reorder-pages-item.ui:8-45)

### Q. Keyboard Shortcuts Window
- **AdwShortcutsDialog** → **AdwShortcutsSection** → **AdwShortcutsItem** with `action-name` and/or `accelerator` (shortcuts-dialog.ui:2-140)

### R. Style Classes
- `suggested-action`, `destructive-action`, `pill`, `flat`, `titlebar`, `text-button`, `body`, `description` used across files

---

## 3. Best Code Examples (by pattern)

| Pattern | File | Lines | Why |
|---|---|---|---|
| App shell (AdwApplicationWindow + HeaderBar + Stack) | app-window.ui | 172–370 | Canonical full-window template |
| Empty state (AdwStatusPage) | app-window.ui | 279–308 | Icon, description label, inline controls |
| GMenu-based popover menu | app-window.ui | 183–188 (declaration), 7–170 (model) | Menus defined via `<menu>` model, consumed by `GtkPopoverMenu` |
| AdwButtonContent (icon+label) | app-window.ui | 236–241 | Standard icon + text button pattern |
| GtkActionBar bottom toolbar | app-window.ui | 320–368 | Start/center/end layout with icon buttons |
| AdwToastOverlay wrapping | app-window.ui | 271–272 | Minimal toast overlay over GtkStack |
| Modal dialog (GtkWindow + titlebar + WindowHandle) | authorize-dialog.ui | 4–67 | Complete modal pattern with form |
| Form rows (AdwEntryRow + AdwPasswordEntryRow) | authorize-dialog.ui | 26–36 | Labeled form fields in PreferencesGroup |
| Preferences window (AdwPreferencesDialog) | preferences-dialog.ui | 22–189 | Full preferences with pages + groups |
| Toggle group (AdwToggleGroup + AdwToggle) | preferences-dialog.ui | 31–53 | Radio-style selection groups |
| AdwComboRow | preferences-dialog.ui | 67–71 | Enumerated preference selection |
| AdwActionRow + GtkScale | preferences-dialog.ui | 96–105 | Slider with linked label row |
| AdwActionRow + GtkSwitch | preferences-dialog.ui | 137–143 | Boolean toggle with linked label |
| AdwActionRow + GtkEntry | preferences-dialog.ui | 157–162 | Text entry with linked label |
| GtkSizeGroup alignment | preferences-dialog.ui | 190–195 | Horizontal alignment of scale siblings |
| Progress with GtkRevealer | drivers-dialog.ui | 59–64 | Animated show/hide progress bar |
| Result/status screen | drivers-dialog.ui | 71–120 | Icon + labels + button result page |
| Custom composite widget template | reorder-pages-item.ui | 8–45 | GtkButton subclass with composite children |
| Shortcuts dialog | shortcuts-dialog.ui | 2–140 | Full AdwShortcutsDialog with sections |
| GtkMenuButton (primary menu) | app-window.ui | 252–257 | Primary hamburger menu button |
| GtkMenuButton (secondary menu) | app-window.ui | 245–251 | Dropdown options menu button |
| Destructive action button style | app-window.ui | 199–228 | `.destructive-action` on stop button |
| Suggested action button style | authorize-dialog.ui | 53–57 | `.suggested-action` on authorize button |
| Pill button style | drivers-dialog.ui | 99–108 | `.pill` + `.suggested-action` on result OK button |
| Flat headerbar style | drivers-dialog.ui | 19–22 | `.flat` class on dialog headerbar |
