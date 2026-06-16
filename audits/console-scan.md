# GNOME Console — GUI Audit

**Source:** `sources/console` (KGX — GNOME Terminal)
**Scanned:** 15 `.ui` files (0 `.blp` files)

---

## 1. Widget Inventory

### Adwaita Widget Classes

| Widget | File(s) | Lines |
|---|---|---|
| `AdwApplicationWindow` | `src/kgx-window.ui` | :46 |
| `AdwTabOverview` | `src/kgx-window.ui` | :56 |
| `AdwHeaderBar` | `src/kgx-window.ui`, `src/kgx-spad.ui`, `src/preferences/kgx-font-picker.ui` | :110, :11, :21 |
| `AdwWindowTitle` | `src/kgx-window.ui` | :116 |
| `AdwTabButton` | `src/kgx-window.ui` | :173 |
| `AdwTabBar` | `src/kgx-window.ui` | :187 |
| `AdwBreakpoint` | `src/kgx-window.ui` | :205 |
| `AdwBin` | `src/kgx-window.ui` (:67 via child), `src/kgx-pages.ui` (:3 parent), `src/kgx-fullscreen-box.ui` (:3 parent), `src/kgx-theme-switcher.ui` (:3 parent), `src/kgx-pages.ui` (:38, :57) | multiple |
| `AdwTabView` | `src/kgx-pages.ui` | :30 |
| `AdwTabPage` | `src/kgx-page-expression.ui` | :3 (template for) |
| `AdwToolbarView` | `src/kgx-tab.ui`, `src/kgx-fullscreen-box.ui`, `src/kgx-spad.ui`, `src/preferences/kgx-font-picker.ui` | :29, :9, :10, :19 |
| `AdwToastOverlay` | `src/kgx-tab.ui` | :22 |
| `AdwClamp` | `src/kgx-tab.ui` | :36 |
| `AdwSpinner` | `src/kgx-empty.ui` | :34 |
| `AdwDialog` | `src/kgx-spad.ui` | :3 |
| `AdwPreferencesDialog` | `src/preferences/kgx-preferences-window.ui` | :3 |
| `AdwPreferencesPage` | `src/kgx-spad.ui` (:14), `src/preferences/kgx-preferences-window.ui` | :6 |
| `AdwPreferencesGroup` | `src/kgx-spad.ui` (:16, :22), `src/preferences/kgx-preferences-window.ui` | :8, :23, :34 |
| `AdwSwitchRow` | `src/preferences/kgx-preferences-window.ui` | :10, :25, :40, :46 |
| `AdwActionRow` | `src/preferences/kgx-preferences-window.ui` | :16 |
| `AdwSpinRow` | `src/preferences/kgx-preferences-window.ui` | :36 |
| `AdwNavigationPage` | `src/preferences/kgx-font-picker.ui` | :3 |
| `AdwButtonContent` | `src/kgx-spad.ui` | :84 |
| `AdwShortcutsDialog` | `src/shortcuts-dialog.ui` | :3 |
| `AdwShortcutsSection` | `src/shortcuts-dialog.ui` | :5, :14, :26, :98 |
| `AdwShortcutsItem` | `src/shortcuts-dialog.ui` | :8, :17, :20, :29, :32, :35, :38, :41, :47, :50, :58, :61, :70, :73, :80, :83, :91, :94, :101 |

### GTK Widget Classes

| Widget | File(s) | Lines |
|---|---|---|
| `GtkStack` / `GtkStackPage` | `src/kgx-window.ui`, `src/kgx-tab.ui` | :73/:80/:92, :81 |
| `GtkToggleButton` | `src/kgx-window.ui` | :132 |
| `GtkButton` | `src/kgx-window.ui` (:139, :163, :170, :179, :183), `src/kgx-tab.ui` (:70, :79), `src/kgx-spad.ui` (:26, :78), `src/preferences/kgx-font-picker.ui` (:26, :33) | multiple |
| `GtkMenuButton` | `src/kgx-window.ui` | :152 |
| `GtkPopoverMenu` | `src/kgx-window.ui` | :157 |
| `GtkBox` | `src/kgx-window.ui` (:161), `src/kgx-tab.ui` (:25, :41), `src/kgx-theme-switcher.ui` (:6), `src/kgx-empty.ui` (:3), `src/preferences/kgx-preferences-window.ui` (:19), `src/preferences/kgx-font-picker.ui` (:44) | multiple |
| `GtkLabel` | `src/kgx-window.ui` (:175), `src/kgx-pages.ui` (:46), `src/kgx-tab.ui` (:80), `src/preferences/kgx-preferences-window.ui` (:23) | multiple |
| `GtkSearchBar` | `src/kgx-tab.ui` | :32 |
| `GtkSearchEntry` | `src/kgx-tab.ui`, `src/preferences/kgx-font-picker.ui` | :45, :49 |
| `GtkScrolledWindow` | `src/kgx-simple-tab.ui` (:10), `src/kgx-spad.ui` (:39), `src/preferences/kgx-font-picker.ui` (:57) | multiple |
| `GtkTextView` / `GtkTextBuffer` | `src/kgx-spad.ui` | :42, :50 |
| `GtkOverlay` | `src/kgx-pages.ui` (:26), `src/kgx-theme-switcher.ui` (:11, :41, :63) | multiple |
| `GtkRevealer` | `src/kgx-pages.ui` (:41, :55), `src/kgx-tab.ui` (:87), `src/kgx-empty.ui` (:8, :28) | multiple |
| `GtkCheckButton` | `src/kgx-theme-switcher.ui` | :23, :44, :65 |
| `GtkImage` | `src/kgx-theme-switcher.ui` (:34, :56, :78), `src/kgx-empty.ui` (:15), `src/preferences/kgx-preferences-window.ui` (:36) | multiple |
| `GtkListView` | `src/preferences/kgx-font-picker.ui` | :63 |
| `GtkSingleSelection` | `src/preferences/kgx-font-picker.ui` | :69 |
| `GtkFilterListModel` | `src/preferences/kgx-font-picker.ui` | :73 |
| `GtkEveryFilter` / `GtkStringFilter` / `GtkBoolFilter` | `src/preferences/kgx-font-picker.ui` | :79, :81, :89 |
| `GtkBuilderListItemFactory` / `GtkListItem` | `src/preferences/kgx-font-picker.ui` | :99, :103 |
| `GtkEntry` / `GtkEntryBuffer` | `src/preferences/kgx-font-picker.ui` | :129, :131 |
| `GtkSpinButton` | `src/preferences/kgx-font-picker.ui` | :149 |
| `GtkAdjustment` | `src/preferences/kgx-preferences-window.ui` (:45), `src/preferences/kgx-font-picker.ui` (:151) | multiple |
| `GtkShortcutController` / `GtkShortcut` | `src/kgx-terminal.ui` (:76, :80, :86), `src/kgx-tab.ui` (:56, :60, :66) | multiple |
| `GtkGestureClick` | `src/kgx-terminal.ui` (:91), `src/kgx-fullscreen-box.ui` (:26) | multiple |
| `GtkEventControllerScroll` | `src/kgx-terminal.ui` | :98 |
| `GtkEventControllerMotion` | `src/kgx-fullscreen-box.ui` | :20 |

### Non-widget GObject Types (data/helpers)

| Type | File | Line | Role |
|---|---|---|---|
| `VteTerminal` | `src/kgx-terminal.ui` | :44 | Terminal widget parent class |
| `GThemedIcon` | `src/kgx-pages.ui` | :83 | Tab default icon |
| `GSignalGroup` | `src/kgx-pages.ui` (:86, :91, :94), `src/kgx-tab.ui` (:104, :108) | Signal connection to dynamic targets |
| `GBindingGroup` | `src/kgx-window.ui` (:218, :221), `src/kgx-pages.ui` (:89), `src/preferences/kgx-preferences-window.ui` (:56) | Bulk property bindings |
| `GListStore` | `tests/test/also.ui` | :11 | List model |
| `GMemoryInputStream` | `tests/test/also.ui` | :10 | Test data |

---

## 2. Patterns Demonstrated

### A. Application Shell (kgx-window.ui)

| Pattern | Description | Best Example |
|---|---|---|
| **Header Bar** | `AdwHeaderBar` with start/end children, `AdwWindowTitle`, menu button, tab button | `src/kgx-window.ui` :110–185 |
| **Tab Overview** | `AdwTabOverview` wrapping `AdwTabView` + `AdwTabBar` with secondary menu | `src/kgx-window.ui` :56–202 |
| **Responsive Breakpoint** | `AdwBreakpoint` toggling tab button/bar visibility at max-width 400px | `src/kgx-window.ui` :205–215 |
| **GtkStack Content Switching** | `GtkStack` binding `visible-child-name` to show "content" vs "empty" based on tab count | `src/kgx-window.ui` :73–99 |
| **Inline Menu Definition** | `&lt;menu&gt;` model with sections, items, `hidden-when`, `custom` named children | `src/kgx-window.ui` :4–44 |
| **Popover Custom Children** | `GtkPopoverMenu` with `&lt;child type="theme-switcher"&gt;` / `&lt;child type="zoom-controls"&gt;` | `src/kgx-window.ui` :157–165 |

### B. Preferences (kgx-preferences-window.ui)

| Pattern | Description | Best Example |
|---|---|---|
| **Preferences Dialog** | `AdwPreferencesDialog` with `AdwPreferencesPage` / `AdwPreferencesGroup` | `src/preferences/kgx-preferences-window.ui` :3–56 |
| **Switch Row** | `AdwSwitchRow` with `use-underline` (mnemonics) | `src/preferences/kgx-preferences-window.ui` :10–15 |
| **Action Row** | `AdwActionRow` with child widgets (font label + next icon), activatable + action-name | `src/preferences/kgx-preferences-window.ui` :16–35 |
| **Spin Row** | `AdwSpinRow` with `AdwSpinRow:numeric`, bound `GtkAdjustment`, sensitivity binding | `src/preferences/kgx-preferences-window.ui` :36–53 |
| **Property Sync** | `GBindingGroup` connecting settings object to all rows at once | `src/preferences/kgx-preferences-window.ui` :56 |

### C. Navigation / Font Picker (kgx-font-picker.ui)

| Pattern | Description | Best Example |
|---|---|---|
| **Navigation Page** | `AdwNavigationPage` in `AdwNavigationView` with header bar back/select pattern | `src/preferences/kgx-font-picker.ui` :3–43 |
| **Search + Filtered ListView** | `GtkSearchEntry` driving `GtkStringFilter` on `GtkFilterListModel` → `GtkSingleSelection` → `GtkListView` | `src/preferences/kgx-font-picker.ui` :49–99 |
| **BuilderListItemFactory (inline XML)** | `GtkBuilderListItemFactory` with CDATA-embedded template for `GtkListItem` | `src/preferences/kgx-font-picker.ui` :99–125 |
| **BoolFilter** | `GtkBoolFilter` with expression filtering `is-monospace` property | `src/preferences/kgx-font-picker.ui` :89–92 |
| **SpinButton + Adjustment** | `GtkSpinButton` with `GtkAdjustment` for font size selection | `src/preferences/kgx-font-picker.ui` :149–161 |
| **Closure-based binding** | `build_description` closure combining selected font family + size into `PangoFontDescription` | `src/preferences/kgx-font-picker.ui` :5–9 |

### D. Tab / Terminal (kgx-tab.ui, kgx-terminal.ui)

| Pattern | Description | Best Example |
|---|---|---|
| **Search Bar** | `GtkSearchBar` inside `AdwToolbarView` top slot, with `AdwClamp` for max-width | `src/kgx-tab.ui` :32–100 |
| **Search Navigation** | `GtkSearchEntry` with next/prev signals wired to `GtkButton` clicks + keyboard shortcuts | `src/kgx-tab.ui` :45–84 |
| **ToolbarView layout** | `AdwToolbarView` with `content` + `top` child for search bar, stacked terminal area | `src/kgx-tab.ui` :29–83 |
| **Toast Overlay** | `AdwToastOverlay` wrapping main content for inline notifications | `src/kgx-tab.ui` :22 |
| **Revealer (crossfade)** | `GtkRevealer` with `crossfade` transition for status messages | `src/kgx-pages.ui` :41–54 |
| **Context Menu Model** | Terminal context menu defined as `&lt;menu&gt;` with `hidden-when` | `src/kgx-terminal.ui` :4–42 |
| **Gesture Controllers** | `GtkGestureClick` for right-click menu, `GtkEventControllerScroll` for zoom | `src/kgx-terminal.ui` :91–102 |
| **Shortcut Controller** | `GtkShortcutController` with `capture` phase for Ctrl+Shift+C/V | `src/kgx-terminal.ui` :77–89 |

### E. Dialogs

| Pattern | Description | Best Example |
|---|---|---|
| **Error Details Dialog** | `AdwDialog` with `AdwToolbarView` + `AdwPreferencesPage`/`AdwPreferencesGroup` reuse | `src/kgx-spad.ui` :3–99 |
| **Shortcuts Dialog** | `AdwShortcutsDialog` with `AdwShortcutsSection` / `AdwShortcutsItem` + direction-aware accelerators | `src/shortcuts-dialog.ui` :3–107 |
| **Copy to Clipboard** | Button with `action-name` + bound `action-target` (variant from closure) | `src/kgx-spad.ui` :26–36 |

### F. Styling & Animation

| Pattern | Description | Best Example |
|---|---|---|
| **CSS Classes (circular, flat, pill, suggested-action)** | Widget-level `&lt;style&gt;` with `&lt;class name="…"/&gt;` | `src/kgx-window.ui` :165–169, `src/kgx-spad.ui` :96–98 |
| **Revealer + Crossfade** | `GtkRevealer` `transition-type="crossfade"` for smooth show/hide | `src/kgx-empty.ui` :8–14 |
| **Empty State** | Logo image + spinner in vertical `GtkBox` with revealers | `src/kgx-empty.ui` :4–42 |

### G. Binding Patterns

| Pattern | Description | Best Example |
|---|---|---|
| **Lookup binding** | `&lt;lookup name="property"&gt;` chain walking the object tree | `src/kgx-window.ui` :50–51 |
| **Closure binding** | C functions registered as closures e.g. `kgx_text_or_fallback` | `src/kgx-window.ui` :49 |
| **Invert-boolean flag** | `bind-flags="invert-boolean"` to invert boolean bindings | `src/kgx-window.ui` :62–63 |
| **Sync-create flag** | `bind-flags="sync-create"` to eagerly create destination | pervasive |
| **Bidirectional flag** | `bind-flags="bidirectional"` for two-way property binding | `src/kgx-window.ui` :88 |
| **GSignalGroup** | Late-bound signal connections to dynamic targets | `src/kgx-pages.ui` :86–97 |
| **GBindingGroup** | Bulk property binding of many children to one source | `src/kgx-window.ui` :218–221 |
| **Expression bindings (closure)** | Complex expressions via `&lt;closure function="..."/&gt;` | `src/kgx-terminal.ui` :36–53 |

### H. Custom Reusable Widgets

| Pattern | Description | Source File |
|---|---|---|
| **KgxThemeSwitcher** | 3 `GtkCheckButton` (system/light/dark) in radio group, each with check overlay | `src/kgx-theme-switcher.ui` |
| **KgxFullscreenBox** | `AdwBin` wrapping `AdwToolbarView` with autohide toolbar via motion/click gestures | `src/kgx-fullscreen-box.ui` |
| **KgxEmpty** | Empty-state widget with animated logo + spinner revealers | `src/kgx-empty.ui` |
| **KgxTabPage** (expression) | `AdwTabPage` template binding all tab metadata from `KgxTab` child via closures | `src/kgx-page-expression.ui` |

### I. Drag & Drop

| Pattern | Description | Best Example |
|---|---|---|
| **Custom Drop Target** | `KgxDropTarget` (custom GObject) with `drop` and `spad-thrown` signals | `src/kgx-tab.ui` :112–115 |
| **Extra-drag-drop on TabBar** | `AdwTabBar` signal `extra-drag-drop` to handle terminal tab drag/reorder | `src/kgx-window.ui` :202 |

---

## 3. Notable Techniques

1. **Responsive layout via AdwBreakpoint** — hides `AdwTabBar` at narrow widths, shows `AdwTabButton` instead (`src/kgx-window.ui` :205–215).

2. **Font family list with live preview** — `GtkListView` backed by `GtkFilterListModel` with `GtkStringFilter` (by name) + `GtkBoolFilter` (monospace only). Rows rendered via `GtkBuilderListItemFactory` with inline XML template (`src/preferences/kgx-font-picker.ui` :63–125).

3. **Reusing PreferencesPage in custom dialogs** — `KgxSpad` uses `AdwPreferencesPage`/`AdwPreferencesGroup` outside a `AdwPreferencesDialog` for layout consistency (`src/kgx-spad.ui` :14–77).

4. **Closure-based palette resolution** — Terminal color palette bound via a C closure (`resolve_livery`) that takes theme, dark mode, and translucency as arguments (`src/kgx-terminal.ui` :36–53).

5. **GMenu with custom child widgets** — `GtkPopoverMenu` supports `&lt;child type="..."&gt;` for embedding custom widgets like theme switcher and zoom controls directly in menu layout (`src/kgx-window.ui` :157–165).

6. **Static icon definition** — `GThemedIcon` defined as top-level object and referenced by name in `AdwTabView:default-icon` (`src/kgx-pages.ui` :83–85).
