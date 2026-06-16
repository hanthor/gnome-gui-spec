# Showtime GUI Audit — .blp Template Scan

**Source:** `sources/showtime/showtime/gtk/` (4 `.blp` files, Blueprint markup for GTK 4 + Adw 1)

---

## 1. GNOME Widgets Used

### Adw (libadwaita)
| Widget | File | Line(s) |
|---|---|---|
| `Adw.ApplicationWindow` | window.blp | 35 |
| `Adw.ToastOverlay` | window.blp | 43 |
| `Adw.StatusPage` | window.blp | 64, 98, 108, 115 |
| `Adw.ToolbarView` | window.blp | 75 |
| `Adw.HeaderBar` | window.blp | 77 |
| `Adw.Clamp` | window.blp | 129 |
| `Adw.BreakpointBin` | window.blp | 240 |
| `Adw.Breakpoint` | window.blp | 296, 305, 437 |
| `Adw.Spinner` | window.blp | 367 |
| `Adw.Bin` | options.blp | 4, sound-options.blp | 4, window.blp | 56 |
| `Adw.ToggleGroup` | options.blp | 69 |
| `Adw.Toggle` | options.blp | 73–77 |
| `Adw.ShortcutsDialog` | shortcuts-dialog.blp | 3 |
| `Adw.ShortcutsSection` | shortcuts-dialog.blp | 4, 43, 63, 81 |
| `Adw.ShortcutsItem` | shortcuts-dialog.blp | 6, 11, 16, 21, 35, 47, 52, 57, 65, 70, 88, 93, 98 |

### Gtk
| Widget | File | Line(s) |
|---|---|---|
| `Gtk.Button` | window.blp | 103, 143, 166, 194, 247, 276, 344, options.blp | 98, 107, sound-options.blp | 18 |
| `Gtk.Stack` | window.blp | 74 |
| `Gtk.MenuButton` | window.blp | 79, 376, options.blp | 6, sound-options.blp | 6 |
| `Gtk.Overlay` | window.blp | 127 |
| `Gtk.Box` | window.blp | 135, 141, 183, 186, 218, 247, 276, 342, 347, options.blp | 60, sound-options.blp | 12 |
| `Gtk.Label` | window.blp | 192, 221, 259, 281, options.blp | 65 |
| `Gtk.Image` | window.blp | 256, 280 |
| `Gtk.Scale` | window.blp | 213, sound-options.blp | 30 |
| `Gtk.Adjustment` | window.blp | 216, sound-options.blp | 33 |
| `Gtk.Picture` | window.blp | 409 |
| `Gtk.ToggleButton` | sound-options.blp | 18 |
| `Gtk.DropTarget` | window.blp | 50 |
| `Gtk.FileDialog` | window.blp | 451, 463 |
| `Gtk.FileFilter` | window.blp | 452, 464 |
| `Gtk.GestureClick` | window.blp | 416, 421 |
| `Gtk.EventControllerMotion` | window.blp | 426 |
| `Gtk.ShortcutController` | options.blp | 117 |
| `Gtk.Shortcut` | options.blp | 120 |
| `Gtk.WindowHandle` | window.blp | 85, 126, 338, 359 |
| `Gtk.WindowControls` | window.blp | 345, 385 |
| `Gtk.GraphicsOffload` | window.blp | 408 |
| `Gtk.PopoverMenu` | options.blp | 11 |
| `Gtk.Popover` | sound-options.blp | 10 |

### Menus (GMenu model, inline)
| Widget | File | Line(s) |
|---|---|---|
| `menu` (GMenu root) | window.blp | 5 |
| `section` | window.blp | 6, 11, 17, 24, options.blp | 14, 26, 30, 39 |
| `item` | window.blp | 7, 8, 13, 19, 25, 26, options.blp | 15, 18, 27, 33, 41, 46 |
| `submenu` | options.blp | 14, 18 |

---

## 2. Patterns Demonstrated

### A. Composite Template Widgets (`template $ClassName: ParentClass`)
Custom widgets defined in Blueprint as template classes inheriting from standard GTK/Adw classes. Each `.blp` corresponds to a Python widget class.
- **File:** window.blp (line 35: `$Window: Adw.ApplicationWindow`), options.blp (line 4: `$Options: Adw.Bin`), sound-options.blp (line 4: `$SoundOptions: Adw.Bin`)

### B. Adaptive Layout with Breakpoints (`Adw.BreakpointBin` + `Adw.Breakpoint`)
Condition-based layout adaptivity using CSS media-query-like conditions with setter blocks that adjust widget properties at breakpoint thresholds.
- **File:** window.blp (lines 240–338, 437–447)

### C. Overlay UI (Video Player Chrome)
Multiple `[overlay]` children stacked on an `Overlay` widget, each positioned independently, with custom CSS styles (`"overlaid"`, `"highlighted"`, `"circular"`, `"shade"`). Window controls (header bar buttons) are overlaid directly over video rather than in a toolbar.
- **File:** window.blp (lines 127–436)

### D. Inline GMenu with `PopoverMenu` + `custom` items
GMenu model defined inline in Blueprint with `custom` placeholders for complex widgets (speed toggle group, rotate buttons).
- **File:** options.blp (lines 13–56)

### E. Drop Target with Placeholder UX
`Gtk.DropTarget` on a custom overlay widget. When empty, shows an `Adw.StatusPage` prompting drag-and-drop. A `Stack` switches between placeholder and video content.
- **File:** window.blp (lines 49–123)

### F. Property Bindings in Blueprint (`bind`)
Two-way and one-way property bindings between template properties and widget properties, including computed getter functions.
- **File:** window.blp (line 157: `icon-name: bind $_get_play_icon(template.paused) as <string>`), sound-options.blp (line 7: `icon-name: bind $_get_volume_icon(...)`), options.blp (line 70: `active-name: bind template.rate bidirectional no-sync-create`)

### G. Custom Styles via CSS Classes
Widgets referenced by `styles [...]` arrays that map to CSS class names defined in `style.css`, e.g. `"pill"`, `"suggested-action"`, `"circular"`, `"highlighted"`, `"overlaid"`, `"flat"`, `"heading"`, `"title-4"`, `"caption-heading"`, `"numeric"`, `"timestamp"`, `"shade"`.
- **File:** window.blp throughout (e.g. lines 106–107, 153–156, 210–212)

### H. Inline Popover with Complex Widget Children
`Popover` containing a horizontal `Box` with `ToggleButton` + `Scale` for volume control — a self-contained popover UI pattern.
- **File:** sound-options.blp (lines 10–42)

### I. Accessibility Annotations
Inline `accessibility { label: ...; labelled-by: ...; }` blocks throughout.
- **File:** window.blp (lines 150–153, 220–222, 263–268, 288–293), options.blp (lines 113–115), sound-options.blp (lines 22–24, 46–48)

### J. Keyboard Shortcuts via `Adw.ShortcutsDialog`
Declarative shortcuts window using Adw shortcuts widgets with `action-name` and `accelerator` bindings.
- **File:** shortcuts-dialog.blp (entire file)

### K. File Dialogs (Bluebird-declared)
`Gtk.FileDialog` with `Gtk.FileFilter` declared right in the `.blp` file (no Python construction needed).
- **File:** window.blp (lines 451–479)

### L. Gesture Controllers in Blueprint
`GestureClick` and `EventControllerMotion` declared directly in the markup with signal handlers (`released`, `pressed`, `motion`).
- **File:** window.blp (lines 416–427)

### M. Custom Action Targets (`ShortcutController` with managed scope)
`ShortcutController` attached to a specific widget with `scope: managed` to add a local keyboard shortcut.
- **File:** options.blp (lines 117–122)

---

## 3. Best Code Examples to Link To

| Pattern | Best Example File:Lines | Why |
|---|---|---|
| Composite template widget | window.blp:35–437 | Full `Adw.ApplicationWindow` template with all overlays, breakpoints, bindings |
| Adaptive breakpoints | window.blp:296–337 | Shows `Adw.BreakpointBin` with two breakpoints, condition strings, setter blocks changing visibility/orientation/size |
| Overlay video chrome | window.blp:127–436 | Complete pattern: `Overlay` with multiple `[overlay]` children, CSS `"overlaid"`/`"highlighted"` classes, `WindowHandle`, `WindowControls` |
| Inline GMenu + custom widgets | options.blp:13–56 | `PopoverMenu` with `menu-model`, `section`, `submenu`, `item { custom: "..." }`, and `[name]` widget blocks |
| Drop-target placeholder UX | window.blp:49–123 | `DropTarget` → `DragOverlay` → `Stack` with `StatusPage` fallback |
| Property bindings | window.blp:157, sound-options.blp:7, options.blp:70 | `bind template.X bidirectional`, computed getter `bind $_fn(template.X) as <string>` |
| CSS style classes | window.blp:105–107, 153–156, 210–212 | `styles [...]` arrays referencing app-defined CSS classes |
| Inline popover with controls | sound-options.blp:10–42 | Self-contained `Popover` → `Box` → `ToggleButton` + `Scale` + `Adjustment` |
| Accessibility | window.blp:150–153 | `accessibility { label: ...; labelled-by: ...; }` blocks |
| Shortcuts dialog | shortcuts-dialog.blp:3–102 | `Adw.ShortcutsDialog` with `Adw.ShortcutsSection`/`Adw.ShortcutsItem` |
| File dialog in Blueprint | window.blp:451–479 | `FileDialog` + `FileFilter` with mime-types and suffixes |
| Gesture controllers | window.blp:416–427 | `GestureClick` (button-specific), `EventControllerMotion` with signal handlers |
| Managed shortcuts | options.blp:117–122 | `ShortcutController { scope: managed; }` with `Shortcut { trigger; action; }` |
