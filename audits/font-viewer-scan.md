# GNOME Font Viewer — GUI Widget Audit

**Source:** `sources/gnome-font-viewer/src/font-view-window.ui` (only .blp/.ui file)

---

## 1. Widget Catalog

### Adwaita Widgets

| Widget | File | Line |
|---|---|---|
| `AdwApplicationWindow` | font-view-window.ui | 4 |
| `AdwNavigationView` | font-view-window.ui | 29 |
| `AdwNavigationPage` (×3) | font-view-window.ui | 31, 133, 196 |
| `AdwToolbarView` (×3) | font-view-window.ui | 34, 136, 199 |
| `AdwHeaderBar` (×3) | font-view-window.ui | 36, 138, 202 |
| `AdwClamp` | font-view-window.ui | 39 |
| `AdwWindowTitle` (×2) | font-view-window.ui | 141, 205 |
| `AdwPreferencesPage` | font-view-window.ui | 214 |
| `AdwAlertDialog` | font-view-window.ui | 220 |

### GTK Widgets

| Widget | File | Line |
|---|---|---|
| `GtkShortcutController` | font-view-window.ui | 12 |
| `GtkShortcut` | font-view-window.ui | 15 |
| `GtkEventControllerKey` | font-view-window.ui | 22 |
| `GtkSearchEntry` | font-view-window.ui | 44 |
| `GtkButton` (×2) | font-view-window.ui | 52, 144 |
| `GtkToggleButton` | font-view-window.ui | 148 |
| `GtkScrolledWindow` (×2) | font-view-window.ui | 60, 171 |
| `GtkGridView` | font-view-window.ui | 63 |
| `GtkNoSelection` | font-view-window.ui | 69 |
| `GtkFilterListModel` | font-view-window.ui | 72 |
| `GtkStringFilter` | font-view-window.ui | 75 |
| `GtkSortListModel` | font-view-window.ui | 88 |
| `GtkStringSorter` | font-view-window.ui | 91 |
| `GtkBuilderListItemFactory` | font-view-window.ui | 102 |
| `GtkBox` | font-view-window.ui | 107 |
| `GtkInscription` | font-view-window.ui | 123 |
| `GtkStack` | font-view-window.ui | 162 |
| `GtkStackPage` | font-view-window.ui | 164 |
| `GtkViewport` | font-view-window.ui | 173 |
| `FontInscription` (custom) | font-view-window.ui | 110 |

---

## 2. Patterns Demonstrated

### A. Multi-Page Navigation (`AdwNavigationView` + `AdwNavigationPage`)
Three tagged pages (`overview`, `preview`, `info`) pushed/popped from C code via `adw_navigation_view_push_by_tag()` / `adw_navigation_view_pop()`. The "Info" ToggleButton triggers push via `action-name="navigation.push" action-target="'info'"`. Titles are bound across pages with `bind-source`/`bind-property`.

### B. ToolbarView Layout (`AdwToolbarView` + `AdwHeaderBar`)
Every page wraps content in `AdwToolbarView` with `child type="top"` holding an `AdwHeaderBar`. This is the canonical GNOME page-chrome pattern.

### C. Search with Filter + Sort Pipeline
`GtkSearchEntry` → `GtkStringFilter.search` binding → `GtkFilterListModel` → `GtkSortListModel(GtkStringSorter)` → `GtkNoSelection` → `GtkGridView`. Uses a `closure` expression to extract the searchable string via a C callback (`font_name_closure`).

### D. GridView with BuilderListItemFactory
`GtkGridView` uses `GtkBuilderListItemFactory` with an embedded XML `<template class="GtkListItem">`. Each item is a `GtkBox` containing a custom `FontInscription` widget and a `GtkInscription` label, with data bindings via `<lookup>` expressions.

### E. Dynamic PreferencesPage (Info View)
`AdwPreferencesPage` is populated programmatically from C using `adw_preferences_group_new()`, `adw_action_row_new()`, and `adw_preferences_group_add()`. Rows are created in-code with title/subtitle properties set dynamically.

### F. AlertDialog for Error Reporting
`AdwAlertDialog` is created in the UI template, then presented from C via `adw_dialog_present()` with heading/body set programmatically.

### G. Key Event Forwarding
`GtkEventControllerKey` with `propagation-phase="bubble"` captures all key events. The C handler filters navigation keys (Tab, arrows, PgUp/Dn, etc.) and passes everything else through to the `GtkSearchEntry`'s internal text widget via `gtk_event_controller_key_forward()`.

### H. Keyboard Shortcuts
`GtkShortcutController` with `GtkShortcut` binds `<Control>F` to `action(win.focus-search)`. Additional app shortcuts (`<Control>q`, `<Control>w`) are registered in code via `gtk_application_set_accels_for_action()`.

### I. Custom Composite Widget (`FontInscription`)
Located in `font-inscription.c`/`.h`, this is a custom GTK widget registered for use in the template via `g_type_ensure(FONT_TYPE_INSCRIPTION)`.

### J. WindowTitle Binding Across Pages
`AdwWindowTitle` is used on both `preview` and `info` pages, with `title` and `subtitle` bound from a shared source object (`font_title`) using `bind-source`/`bind-property` with `bind-flags="sync-create"`.

### K. ToggleButton as Navigation Trigger
`GtkToggleButton` with `action-name="navigation.push"` and `action-target="'info'"` — a self-contained way to trigger navigation from the UI without C callbacks.

### L. Suggested-Action Button
The install button dynamically gets/sheds the `suggested-action` CSS class from C code using `gtk_widget_add_css_class()`/`gtk_widget_remove_css_class()`.

---

## 3. Best Code Examples (by pattern)

| Pattern | File | Lines |
|---|---|---|
| NavigationView with push/pop | font-view-window.ui | 29–218 |
| Navigation push via action (ToggleButton) | font-view-window.ui | 148–155 |
| ToolbarView + HeaderBar | font-view-window.ui | 34–59, 136–160, 199–213 |
| Search → Filter → Sort → GridView | font-view-window.ui | 44–100 |
| BuilderListItemFactory (embedded template) | font-view-window.ui | 102–130 |
| Binding: SearchEntry.text → StringFilter.search | font-view-window.ui | 81–83 |
| Binding: WindowTitle via bind-source | font-view-window.ui | 205–208 |
| Closure expression for filter/sorter | font-view-window.ui | 77–79, 93–95 |
| Dynamic PreferencesPage (C) | font-view-window.c | populate_grid() / populate_details() |
| AlertDialog template + present | font-view-window.ui:220-224 + font-view-window.c:font_view_window_show_error() |
| EventControllerKey: bubble + forward | font-view-window.ui:22-27 + font-view-window.c:window_bubble_key_event() |
| ShortcutController (Ctrl+F → action) | font-view-window.ui:12–20 |
| suggested-action CSS class toggling | font-view-window.c | install_button_refresh_appearance() |
| Custom widget in template | font-view-window.c | line `g_type_ensure(FONT_TYPE_INSCRIPTION)` in class_init |
