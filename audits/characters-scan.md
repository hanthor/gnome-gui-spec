# GNOME Characters — GUI Widget Audit

**Source:** `sources/gnome-characters/data/` (4 UI files, 495 lines total, GtkBuilder XML `.ui` format)

---

## 1. Widget Inventory

### Adw (libadwaita)

| Widget | File | Lines |
|---|---|---|
| `AdwApplicationWindow` | window.ui | 11 |
| `AdwNavigationSplitView` | window.ui | 17 |
| `AdwNavigationPage` | window.ui | 19, 72 |
| `AdwToolbarView` | window.ui | 24, 77 |
| `AdwHeaderBar` | window.ui | 27, 79 |
| `AdwStatusPage` | window.ui | 91, 115 |
| `AdwSpinner` | window.ui | 126 |
| `AdwBreakpoint` | window.ui | 136 |
| `AdwSidebar` | sidebar.ui | 5 |
| `AdwSidebarSection` | sidebar.ui | 8, 25, 153 |
| `AdwBin` | sidebar.ui | 2 (parent) |
| `AdwDialog` | character_dialog.ui | 2 |
| `AdwToastOverlay` | character_dialog.ui | 7 |
| `AdwNavigationView` | character_dialog.ui | 10 |
| `AdwNavigationPage` | character_dialog.ui | 13, 74 |
| `AdwToolbarView` | character_dialog.ui | 17, 85 |
| `AdwHeaderBar` | character_dialog.ui | 21, 89 |
| `AdwClamp` | character_dialog.ui | 74, 99 |
| `AdwActionRow` | character_dialog.ui | 86, 96 |
| `AdwShortcutsDialog` | shortcuts.ui | 2 |
| `AdwShortcutsSection` | shortcuts.ui | 5 |
| `AdwShortcutsItem` | shortcuts.ui | 8, 13, 18, 23 |

### Gtk (GTK4)

| Widget | File | Lines |
|---|---|---|
| `GtkToggleButton` | window.ui | 29 |
| `GtkMenuButton` | window.ui | 34 |
| `GtkSearchBar` | window.ui | 47 |
| `GtkSearchEntry` | window.ui | 50 |
| `GtkScrolledWindow` | window.ui | 58, 96 |
| `GtkStack` | window.ui | 82 |
| `GtkStackPage` | window.ui | 88, 100, 113, 124 |
| `GtkScrolledWindow` | character_dialog.ui | 25, 93 |
| `GtkBox` | character_dialog.ui | 28 |
| `GtkStack` | character_dialog.ui | 32 |
| `GtkStackPage` | character_dialog.ui | 34, 46 |
| `GtkLabel` | character_dialog.ui | 38, 47 |
| `GtkButton` | character_dialog.ui | 61 |
| `GtkListBox` | character_dialog.ui | 82, 111 |
| `GtkImage` | character_dialog.ui | 105 |

### Custom (Gjs_* subclasses)

| Class | File | Line |
|---|---|---|
| `Gjs_MainWindow` (extends AdwApplicationWindow) | window.ui | 11 |
| `Gjs_Sidebar` (extends AdwBin) | sidebar.ui | 2 |
| `Gjs_SidebarItem` | sidebar.ui | 11ff |
| `Gjs_CharactersView` | window.ui | 99 |
| `Gjs_CharacterDialog` (extends AdwDialog) | character_dialog.ui | 2 |

---

## 2. Patterns Demonstrated

| # | Pattern | Description |
|---|---|---|
| P1 | **Adaptive breakpoints** | `AdwBreakpoint` with `max-width` condition collapses split view at 500px |
| P2 | **Navigation split (sidebar+content)** | `AdwNavigationSplitView` with `sidebar`/`content` children, each an `AdwNavigationPage` |
| P3 | **Stack-based page switching** | `GtkStack` + `GtkStackPage` for empty-recent/character-list/no-results/loading states |
| P4 | **Status/empty pages** | `AdwStatusPage` with icon+title+description for "No Recent Characters" and "No Results" |
| P5 | **Loading spinner** | `AdwSpinner` as a GtkStackPage for the loading state |
| P6 | **Search bar** | `GtkSearchBar` + `GtkSearchEntry` with toggle button |
| P7 | **Toolbar view with header bar** | `AdwToolbarView` with `top`-type `AdwHeaderBar` child |
| P8 | **Sidebar navigation** | `AdwSidebar` + `AdwSidebarSection` with custom sidebar items, grouped sections with titles |
| P9 | **Menu button with GMenu** | `GtkMenuButton` referencing a `<menu>` model with `app.*` / `win.*` actions |
| P10 | **Dialog with navigation** | `AdwDialog` containing `AdwNavigationView` + `AdwNavigationPage` for drill-down ("See Also") |
| P11 | **Toast overlay** | `AdwToastOverlay` wrapping dialog content to support toasts |
| P12 | **Clamped list boxes** | `AdwClamp` + `GtkListBox` (`selection-mode=none`) with `boxed-list` CSS class |
| P13 | **Action rows** | `AdwActionRow` with title, activatable, action-name/action-target, and suffix `GtkImage` |
| P14 | **Property binding** | `bind-source`/`bind-property` to bind dialog title to `Gjs_CharacterDialog.title` |
| P15 | **Pill button** | `GtkButton` with `use-underline`, `action-name`, and `pill` CSS class |
| P16 | **Crossfade transitions** | `GtkStack` with `transition-type=crossfade` |
| P17 | **Shortcuts dialog** | `AdwShortcutsDialog` with `AdwShortcutsSection` containing `AdwShortcutsItem` entries |
| P18 | **CSS styling** | Custom classes: `view`, `character-list-scroll`, `character-label`, `pill`, `boxed-list`, `dim-label` |

---

## 3. Best Code Examples (by Pattern)

### P1 — Adaptive Breakpoints
- **window.ui:136–142** — Complete `AdwBreakpoint` with condition+setters, collapses split view at ≤500px and switches sidebar mode to `page`.

### P2 — Navigation Split (Sidebar + Content)
- **window.ui:17–134** — `AdwNavigationSplitView` with `sidebar`/`content` properties, each an `AdwNavigationPage` containing an `AdwToolbarView`.

### P3+P4+P5 — Stack-based Page Switching (Empty/Content/NoResults/Loading)
- **window.ui:82–130** — Four `GtkStackPage` entries: `empty-recent` (AdwStatusPage), `character-list` (scrolled custom view), `no-results` (AdwStatusPage), `loading` (AdwSpinner). Canonical example of multi-state stack.

### P6 — Search Bar
- **window.ui:47–54** — `GtkSearchBar` with `GtkSearchEntry`. Paired with `GtkToggleButton` (searchButton) for toggle control.

### P7 — Toolbar View with Header Bar
- **window.ui:24–67** — `AdwToolbarView` with two `top` children: `AdwHeaderBar` and `GtkSearchBar`, plus a default child (`GtkScrolledWindow`).

### P8 — Sidebar Navigation
- **sidebar.ui:1–155** — `AdwSidebar` with three `AdwSidebarSection` groups ("Recently Used", "Emojis" with 9 items, "Letters & Symbols" with 7 items). Each section has a title; items use `Gjs_SidebarItem` with icon-name, title, and category.

### P9 — Menu Button with GMenu Model
- **window.ui:3–15** — GMenu XML `<menu id="primary_menu">` with sections.
- **window.ui:34–41** — `GtkMenuButton` referencing `primary_menu`.

### P10 — Dialog with Navigation
- **character_dialog.ui:2–135** — `AdwDialog` → `AdwToastOverlay` → `AdwNavigationView` with two `AdwNavigationPage` entries (main character view + "See Also" related page). Demonstrates push navigation via `action-name=navigation.push`.

### P11 — Toast Overlay
- **character_dialog.ui:7–131** — `AdwToastOverlay` with `child` property wrapping the entire `AdwNavigationView`.

### P12+P13 — Clamped List Box + Action Rows
- **character_dialog.ui:74–131** — `AdwClamp` → `GtkListBox` (`selection-mode=none`, class `boxed-list`) → `AdwActionRow` entries with title, activatable, action-name, action-target, and suffix `GtkImage` (go-next-symbolic).

### P14 — Property Binding
- **character_dialog.ui:14** — `bind-source="Gjs_CharacterDialog" bind-property="title"` on `AdwNavigationPage`.

### P15 — Pill Button
- **character_dialog.ui:61–76** — `GtkButton` with `use-underline=true`, `action-name=character.copy`, CSS class `pill`, centered with margins.

### P16 — Crossfade Transition
- **window.ui:85** — `GtkStack` property `transition-type=crossfade`.

### P17 — Shortcuts Dialog
- **shortcuts.ui:1–34** — `AdwShortcutsDialog` with single `AdwShortcutsSection` (title "General") and four `AdwShortcutsItem` entries mixing accelerator and action-name patterns.

### P18 — CSS Styling
- `view` class on AdwToolbarView — **window.ui:79**
- `character-list-scroll` on GtkScrolledWindow — **window.ui:103**
- `character-label` on GtkLabel — **character_dialog.ui:42**
- `pill` on GtkButton — **character_dialog.ui:73**
- `boxed-list` on GtkListBox — **character_dialog.ui:83, 113**
- `dim-label` on GtkLabel — **character_dialog.ui:93**
