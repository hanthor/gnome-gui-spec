# Decibels GUI Audit

**Scanned:** 9 `.blp` files, 0 `.ui` files

---

## 1. Widget Inventory

### Adwaita (`Adw.*`)

| Widget | File | Line(s) | Notes |
|--------|------|---------|-------|
| `Adw.ApplicationWindow` | `window.blp` | 4 | Top-level window template |
| `Adw.Bin` | `player.blp` | 4 | Base for `APPlayerState` |
| `Adw.Bin` | `header.blp` | 4 | Base for `APHeaderBar` |
| `Adw.Bin` | `drag-overlay.blp` | 4 | Base for `APDragOverlay` |
| `Adw.Bin` | `empty.blp` | 4 | Base for `APEmptyState` |
| `Adw.Bin` | `error.blp` | 4 | Base for `APErrorState` |
| `Adw.Bin` | `playback-rate-button.blp` | 4 | Base for `APPlaybackRateButton` |
| `Adw.Bin` | `volume-button.blp` | 4 | Base for `APVolumeButton` |
| `Adw.ToolbarView` | `player.blp` | 7 | Flat header/content/footer layout |
| `Adw.ToolbarView` | `empty.blp` | 6 | Flat header/content/footer layout |
| `Adw.ToolbarView` | `error.blp` | 6 | Flat header/content/footer layout |
| `Adw.Clamp` | `player.blp` | 13 | Width-constrained center column |
| `Adw.HeaderBar` | `header.blp` | 6 | Window header bar |
| `Adw.StatusPage` | `drag-overlay.blp` | 14 | Drop-zone overlay state |
| `Adw.StatusPage` | `empty.blp` | 11 | Empty-state placeholder |
| `Adw.StatusPage` | `error.blp` | 11 | Error-state placeholder |
| `Adw.ShortcutsDialog` | `shortcuts-dialog.blp` | 4 | Keyboard shortcuts dialog |
| `Adw.ShortcutsSection` | `shortcuts-dialog.blp` | 5, 22, 43 | Three section groups |
| `Adw.ShortcutsItem` | `shortcuts-dialog.blp` | 8, 13, 18, 26, 30, 34, 38, 47, 52, 57 | Individual shortcut items |

### GTK (`Gtk.*`)

| Widget | File | Line(s) | Notes |
|--------|------|---------|-------|
| `Box` | `player.blp` | 20, 34, 92 | Layout boxes (orientation: vertical, etc.) |
| `Box` | `empty.blp` | 17 | Action button container |
| `Box` | `error.blp` | 17 | Action button container |
| `Box` | `playback-rate-button.blp` | 10, 22 | Rate button content + popover layout |
| `Box` | `volume-button.blp` | 17 | Volume popover layout |
| `Button` | `player.blp` | 97, 104, 120 | Playback buttons (circular, pill styles) |
| `Button` | `empty.blp` | 21 | "Open…" suggested-action pill |
| `Button` | `error.blp` | 21 | "Try Again…" suggested-action pill |
| `CenterBox` | `player.blp` | 82 | Three-region controls bar |
| `EventControllerKey` | `window.blp` | 37 | Global key capture |
| `EventControllerScroll` | `player.blp` | 31 | Waveform scroll input |
| `Image` | `player.blp` | 110 | Dynamic icon for play/pause |
| `Image` | `playback-rate-button.blp` | 14 | Speedometer icon |
| `Label` | `player.blp` | 41, 48 | Timestamp/duration labels |
| `Label` | `playback-rate-button.blp` | 18 | "× 1.0" rate label |
| `MenuButton` | `header.blp` | 9 | Primary menu trigger |
| `MenuButton` | `playback-rate-button.blp` | 8 | Playback-rate popover trigger |
| `MenuButton` | `volume-button.blp` | 8 | Volume popover trigger |
| `Overlay` | `drag-overlay.blp` | 10 | Drag-drop overlay container |
| `Popover` | `playback-rate-button.blp` | 24 | Rate adjustment popover |
| `Popover` | `volume-button.blp` | 13 | Volume adjustment popover |
| `Revealer` | `drag-overlay.blp` | 12 | Animated overlay reveal |
| `Scale` | `playback-rate-button.blp` | 26 | Vertical speed scale |
| `Scale` | `volume-button.blp` | 37 | Horizontal volume scale |
| `Shortcut` | `player.blp` | 133 | Custom shortcut binding |
| `ShortcutController` | `player.blp` | 131 | Managed shortcut scope |
| `Stack` | `window.blp` | 11 | Page-switching stack |
| `StackPage` | `window.blp` | 12, 17, 22 | Three pages: empty/error/player |
| `ToggleButton` | `volume-button.blp` | 22 | Mute toggle |
| `Adjustment` | `playback-rate-button.blp` | 33 | Scale value binding |
| `Adjustment` | `volume-button.blp` | 43 | Scale value binding |

---

## 2. Patterns Demonstrated

### Layout Patterns
- **`Adw.ToolbarView` with `[top]`/`[bottom]`** — Flat app layout with toolbar regions. Used in `player.blp:7`, `empty.blp:6`, `error.blp:6`.
- **`Adw.Clamp` for constrained width** — Centers readable content with `maximum-size` + `tightening-threshold`. Used in `player.blp:13`.
- **`CenterBox` three-region bar** — Start/center/end layout for playback controls. Used in `player.blp:82`.
- **`Stack` + `StackPage` navigation** — Page switching with named pages (`"empty"`, `"error"`, `"player"`). Used in `window.blp:11`.

### Widget Composition
- **`Adw.Bin` subclassing** — Every custom widget wraps in `Adw.Bin` for clean embedding across the app. Used in all 8 template files.
- **Composite `MenuButton` content** — Box with Image+Label inside `MenuButton`, used in `playback-rate-button.blp:8-20` and `volume-button.blp:8`.
- **`Adw.HeaderBar` + `MenuButton`** — Primary menu in header bar, `header.blp:6-12`.

### State Management
- **`Adw.StatusPage` for empty/error states** — `empty.blp:11` (drag-drop prompt), `error.blp:11` (file failure). Both include a `Box` with a `suggested-action` pill button.
- **`Overlay` + `Revealer` drag-drop zone** — Animated crossfade reveal over an `Overlay`, `drag-overlay.blp:10-19`.

### Data Binding
- **Bidirectional property binding** — `volume-button.blp:2-3` binds `volume` ↔ `adjustment.value` and `muted` ↔ `mute_button.active`.
- **Expression-based bindings** — `icon-name: bind $callback(args) as <string>` for computed values, `volume-button.blp:5,9,23`.
- **`hidden-when: "action-disabled"`** — Menu item visibility driven by action state, `header.blp:29`.

### Input Handling
- **`EventControllerKey` for global shortcuts** — Captures key presses at window level, `window.blp:37`.
- **`EventControllerScroll` on waveform** — Handles scroll with `flags: both_axes`, `player.blp:31`.
- **`ShortcutController` with managed scope** — In-widget shortcuts bound to actions, `player.blp:131-138`.
- **`Scale` + `Adjustment` with marks** — Vertical and horizontal scales with tick marks, `playback-rate-button.blp:26-42`, `volume-button.blp:37-49`.

### Styling
- **CSS style classes** — `"circular"` (buttons), `"pill"` (buttons), `"suggested-action"`, `"flat"`, `"numeric"`, `"caption"`, `"toolbar"`, `"drag-overlay"`, `"drag-overlay-status-page"`. Applied via `styles []` blocks throughout.
- **`<template>.property` accessor syntax** — `template.volume`, `template.muted` references on `APVolumeButton`.

### Popovers
- **`Popover` inside `MenuButton`** — Inline popover definitions with Scales and ToggleButtons, `playback-rate-button.blp:24`, `volume-button.blp:13`.

### Menu Descriptions
- **`menu` block with `section`/`item`** — Declarative menu model in XML, `header.blp:17-47`.

### Accessibility
- **`accessibility { label: … }`** — Accessible label on `ToggleButton`, `volume-button.blp:25-27`.

### Keyboard Shortcuts Dialog
- **`Adw.ShortcutsDialog` with sections** — Grouped shortcuts using `C_()` translation context, `shortcuts-dialog.blp:4-62`.

---

## 3. Best Code Examples by Pattern

| Pattern | Best File | Lines | Why |
|---------|-----------|-------|-----|
| **ToolbarView flat layout** | `player.blp` | 7-81 | Combines `[top]` header + `[bottom]` controls + clamped content |
| **CenterBox 3-region bar** | `player.blp` | 82-126 | Start/center/end with circular/pill buttons |
| **Stack page switching** | `window.blp` | 11-27 | Clean three-page stack with named pages |
| **StatusPage empty state** | `empty.blp` | 11-30 | Icon + title + description + action button |
| **StatusPage error state** | `error.blp` | 11-31 | Same pattern with different icon/messaging |
| **Drag-drop overlay** | `drag-overlay.blp` | 10-19 | Overlay + Revealer(crossfade) + StatusPage |
| **Bidirectional property bind** | `volume-button.blp` | 2-3 | `volume: bind adjustment.value bidirectional` |
| **Expression-based binding** | `volume-button.blp` | 5,9,23 | `icon-name: bind $callback(args) as <string>` |
| **Composite MenuButton** | `playback-rate-button.blp` | 8-20 | Box(Image+Label) inside MenuButton |
| **Scale with marks** | `playback-rate-button.blp` | 26-42 | Vertical Scale + Adjustment + 4 marks |
| **Popover patterns** | `volume-button.blp` | 13-51 | Popover with ToggleButton + Scale row |
| **ShortcutController** | `player.blp` | 131-138 | Managed scope with action+arguments |
| **EventControllerKey** | `window.blp` | 37-39 | Capture-phase key handler |
| **EventControllerScroll** | `player.blp` | 31-33 | Both-axes scroll on custom widget |
| **Menu model XML** | `header.blp` | 17-47 | Sections, items, hidden-when |
| **ShortcutsDialog** | `shortcuts-dialog.blp` | 4-62 | Three sections, accelerator strings, C_() |
| **Accessible ToggleButton** | `volume-button.blp` | 22-29 | `accessibility { label }` block |
| **CSS style classes** | `player.blp` | 97-103, 117-119 | `"circular"`, `"pill"`, `"flat"`, `"numeric"` |
| **Adw.Clamp constraints** | `player.blp` | 13-16 | `maximum-size: 600` + `tightening-threshold: 300` |

---

**Summary:** Decibels is a clean, modern GNOME audio player using 13 Adwaita widgets and 18 GTK widgets across 9 Blueprint files. It demonstrates flat layout composition (ToolbarView+Clamp), page navigation (Stack), state-driven UI (StatusPage), property binding, composite widgets, popovers, keyboard shortcuts, and accessibility — all in ~250 lines of declarative `.blp` markup.
