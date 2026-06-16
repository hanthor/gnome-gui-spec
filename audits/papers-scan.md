# Papers GUI Audit — Widget Usage, Patterns & Best Examples

Scanned: **26 .blp files** in `sources/papers/` (Blueprint markup for GTK 4 / libadwaita 1).

---

## 1. Widget Inventory

### Adw Widgets (libadwaita 1)

| Widget | Files (file:line) |
|--------|-------------------|
| **Adw.ActionRow** | `pps-annotation-properties-dialog.blp:17` |
| **Adw.AlertDialog** | `pps-previewer-window.blp:83`; `pps-document-view.blp:243,273,284`; `pps-password-dialog.blp:3`; `pps-window.blp:181` |
| **Adw.ApplicationWindow** | `pps-previewer-window.blp:10`; `pps-window.blp:10` |
| **Adw.Banner** | `pps-document-view.blp:109,113` |
| **Adw.Bin** | `pps-find-sidebar.blp:4`; `pps-loader-view.blp:4`; `pps-password-view.blp:5`; `pps-progress-message-area.blp:4`; `pps-properties-fonts.blp:4`; `pps-properties-license.blp:4`; `pps-properties-signatures.blp:4`; `pps-search-box.blp:4`; `pps-sidebar.blp:4`; `pps-sidebar-annotations-row.blp:21` |
| **Adw.Breakpoint** | `pps-document-view.blp:33,40` |
| **Adw.BreakpointBin** | `pps-document-view.blp:32` |
| **Adw.Clamp** | `pps-loader-view.blp:23`; `pps-properties-license.blp:5` |
| **Adw.ClampScrollable** | `pps-sidebar-thumbnails.blp:14` |
| **Adw.ComboRow** | `pps-annotation-properties-dialog.blp:57,78` |
| **Adw.Dialog** | `pps-annotation-properties-dialog.blp:4`; `pps-properties-window.blp:4` |
| **Adw.EntryRow** | `pps-annotation-properties-dialog.blp:103` |
| **Adw.HeaderBar** | `pps-previewer-window.blp:16`; `pps-annotation-properties-dialog.blp:10`; `pps-document-view.blp:48,93`; `pps-loader-view.blp:8`; `pps-password-view.blp:8`; `pps-properties-window.blp:10`; `pps-window.blp:28,62,91` |
| **Adw.InlineViewSwitcher** | `pps-sidebar.blp:12` |
| **Adw.OverlaySplitView** | `pps-document-view.blp:51` |
| **Adw.PreferencesGroup** | `pps-annotation-properties-dialog.blp:13`; `pps-properties-fonts.blp:14`; `pps-properties-signatures.blp:6` |
| **Adw.PreferencesPage** | `pps-annotation-properties-dialog.blp:12`; `pps-properties-fonts.blp:13`; `pps-properties-signatures.blp:6` |
| **Adw.ShortcutsDialog** | `pps-shortcuts-dialog.blp:4` |
| **Adw.ShortcutsItem** | `pps-shortcuts-dialog.blp` (29 occurrences) |
| **Adw.ShortcutsSection** | `pps-shortcuts-dialog.blp` (9 occurrences) |
| **Adw.SpinRow** | `pps-annotation-properties-dialog.blp:49` |
| **Adw.Spinner** | `pps-find-sidebar.blp:52`; `pps-loader-view.blp:27`; `pps-properties-fonts.blp:9` |
| **Adw.StatusPage** | `pps-find-sidebar.blp:59,71`; `pps-loader-view.blp:14`; `pps-password-view.blp:16`; `pps-sidebar-annotations.blp:12`; `pps-window.blp:34,64` |
| **Adw.SwitchRow** | `pps-annotation-properties-dialog.blp:110` |
| **Adw.ToastOverlay** | `pps-document-view.blp:120`; `pps-window.blp:14` |
| **Adw.Toggle** | `pps-document-view.blp` (annotation toolbar, 4×) |
| **Adw.ToggleGroup** | `pps-document-view.blp` (annotation toolbar, inline) |
| **Adw.ToolbarView** | `pps-previewer-window.blp:13`; `pps-annotation-properties-dialog.blp:9`; `pps-document-view.blp:47,91`; `pps-loader-view.blp:5`; `pps-password-view.blp:6`; `pps-properties-window.blp:9`; `pps-sidebar.blp:5`; `pps-window.blp:27,61,90` |
| **Adw.ViewStack** | `pps-document-view.blp:60`; `pps-properties-fonts.blp:5`; `pps-properties-window.blp:20`; `pps-sidebar-annotations.blp:8`; `pps-sidebar.blp:6`; `pps-window.blp:15` |
| **Adw.ViewStackPage** | `pps-document-view.blp:65,76,88,100,112,125`; `pps-properties-fonts.blp:6,11`; `pps-properties-window.blp:21,30,39,48`; `pps-sidebar-annotations.blp:9,18`; `pps-window.blp:18,42,56,72,88,104,118` |
| **Adw.ViewSwitcher** | `pps-properties-window.blp:13` |
| **Adw.WindowTitle** | `pps-document-view.blp:55,97`; `pps-loader-view.blp:10`; `pps-password-view.blp:10` |

### Gtk Widgets (GTK 4)

| Widget | Files (file:line) |
|--------|-------------------|
| **Adjustment** | `pps-annotation-properties-dialog.blp:52`; `pps-document-view.blp` (font popover SpinButton, inline) |
| **Box** | Ubiquitous (layout container) — e.g. `pps-document-view.blp:107`, `pps-sidebar-annotations-row.blp:4`, `pps-password-dialog.blp:12`, etc. |
| **Button** | `pps-previewer-window.blp:17,22,37,47,55,63,79`; `pps-document-view.blp:149,169,178`; `pps-loader-view.blp:42`; `pps-password-view.blp:22`; `pps-window.blp:37,69` |
| **CheckButton** | `pps-password-dialog.blp:50,57` |
| **ColorDialog** | `pps-annotation-properties-dialog.blp:19` (as dialog property) |
| **ColorDialogButton** | `pps-annotation-properties-dialog.blp:18` |
| **DropTarget** | `pps-window.blp:175` |
| **Entry** | `pps-view-presentation.blp:38`; `pps-page-selector.blp` (both: previewer l.9, shell l.9) |
| **EventControllerFocus** | `pps-view-presentation.blp:20`; `pps-view.blp:27`; `pps-page-selector.blp` (both) |
| **EventControllerKey** | `pps-view-presentation.blp:12` |
| **EventControllerMotion** | `pps-view-presentation.blp:16`; `pps-view.blp:21` |
| **EventControllerScroll** | `pps-view-presentation.blp:5`; `pps-view.blp:24`; `pps-page-selector.blp` (both) |
| **FontDialog** | `pps-document-view.blp` (text_font_popover, inline) |
| **FontDialogButton** | `pps-document-view.blp` (text_font_popover, inline) |
| **GestureClick** | `pps-view-presentation.blp:24,29`; `pps-view.blp:12`; `pps-document-view.blp:200`; `pps-sidebar-attachments.blp:18` |
| **GestureDrag** | `pps-view.blp:37,48,56` |
| **GestureLongPress** | `pps-view.blp:69` |
| **GestureSwipe** | `pps-view.blp:59,62` |
| **GestureZoom** | `pps-view.blp:31` |
| **GridView** | `pps-sidebar-thumbnails.blp:21` |
| **Image** | `pps-progress-message-area.blp:16`; `pps-sidebar-annotations-row.blp:18` |
| **InfoBar** | `pps-progress-message-area.blp:5` |
| **Label** | Ubiquitous (text display) |
| **ListBox** | `pps-properties-fonts.blp:15` |
| **ListView** | `pps-find-sidebar.blp:30`; `pps-sidebar-annotations.blp:22`; `pps-sidebar-attachments.blp:23`; `pps-sidebar-layers.blp:13`; `pps-sidebar-links.blp:14` |
| **MenuButton** | `pps-document-view.blp:53,101`; `pps-document-view.blp` (annotation toolbar, 9×); `pps-search-box.blp:49`; `pps-window.blp:30` |
| **Overlay** | `pps-document-view.blp:122` |
| **PasswordEntry** | `pps-password-dialog.blp:17` |
| **Popover** | `pps-view-presentation.blp:33`; `pps-document-view.blp` (text_font_popover, text_color_popover, highlight_color_popover, highlight_stroke_popover, pencil_color_popover, pencil_stroke_popover, eraser_radius_popover) |
| **PopoverMenu** | `pps-document-view.blp:193`; `pps-sidebar-annotations.blp:46`; `pps-sidebar-links.blp:48` |
| **ProgressBar** | `pps-loader-view.blp:35`; `pps-progress-message-area.blp:63` |
| **Revealer** | `pps-document-view.blp:50,145,161` |
| **ScrolledWindow** | `pps-previewer-window.blp:75`; `pps-find-sidebar.blp:28`; `pps-document-view.blp` (scrolled_window) `pps-properties-license.blp:24`; `pps-sidebar-annotations.blp:21`; `pps-sidebar-attachments.blp:12`; `pps-sidebar-layers.blp:8`; `pps-sidebar-links.blp:9`; `pps-sidebar-thumbnails.blp:9` |
| **SearchEntry** | `pps-search-box.blp:14` |
| **Separator** | `pps-document-view.blp:159,183` (and annotation toolbar, inline) |
| **ShortcutController** | `pps-document-view.blp` (main, inline); `pps-search-box.blp:34`; `pps-window.blp:166` |
| **Shortcut** | `pps-document-view.blp` (33 entries); `pps-search-box.blp:35`; `pps-window.blp:167` |
| **SignalListItemFactory** | `pps-find-sidebar.blp:34`; `pps-sidebar-annotations.blp:33`; `pps-sidebar-attachments.blp:24`; `pps-sidebar-layers.blp:20`; `pps-sidebar-links.blp:25`; `pps-sidebar-thumbnails.blp:27` |
| **SpinButton** | `pps-document-view.blp` (text_font_popover, inline) |
| **Stack** | `pps-document-view.blp:59`; `pps-find-sidebar.blp:22`; `pps-loader-view.blp:25` |
| **StackPage** | `pps-find-sidebar.blp:25,47,59,71`; `pps-loader-view.blp:26,33` |
| **ToggleButton** | `pps-document-view.blp:49,95`; `pps-document-view.blp` (color/textmarkup popovers, 20+) |

### Selection Models (Gtk)

| Type | File |
|------|------|
| **NoSelection** | `pps-sidebar-layers.blp:17` |
| **SingleSelection** | `pps-sidebar-annotations.blp:39`; `pps-sidebar-links.blp:18`; `pps-sidebar-thumbnails.blp:33` |
| **MultiSelection** | `pps-sidebar-attachments.blp:29` |

### GIO / Other

| Type | File |
|------|------|
| **Gio.Settings** | `pps-document-view.blp:20,24`; `pps-window.blp:5,9` |
| **Gio.SimpleActionGroup** | `pps-document-view.blp:15`; `pps-password-view.blp:33`; `pps-sidebar-links.blp:53` |
| **Gio.ListStore** | `pps-sidebar-thumbnails.blp:38` |
| **StringList** | `pps-annotation-properties-dialog.blp:61,84` |

---

## 2. Patterns Demonstrated

### A. Application Shell & Navigation
1. **ViewStack-based app navigation** — `Adw.ViewStack` with named pages (`start`, `error`, `password`, `loader`, `document`, `presentation`) in `pps-window.blp:15-163`.
2. **ToolbarView content layout** — `Adw.ToolbarView` + `Adw.HeaderBar` + content area (nearly every template).
3. **OverlaySplitView (sidebar + content)** — `pps-document-view.blp:51` with collapsible sidebar, breakpoint-driven responsive collapse.
4. **BreakpointBin responsive layout** — `pps-document-view.blp:32-46` collapsing sidebar at 720sp and hiding page selector at 540sp.
5. **WindowTitle in headerbar** — `pps-document-view.blp:55,97`.

### B. Dialogs
6. **Adw.Dialog (modal sheet)** — `pps-annotation-properties-dialog.blp:4`, `pps-properties-window.blp:4`.
7. **Adw.AlertDialog** — Used for confirmations, errors, and warnings throughout.
8. **Popover menus** — `PopoverMenu` with `menu-model` for context menus (view popup, annotation popup, links popup).
9. **Popovers with inline widgets** — Color choosers, font selector, stroke selectors all as `Popover` with child `Box` widgets.

### C. Forms & Preferences
10. **PreferencesPage + PreferencesGroup** — `pps-annotation-properties-dialog.blp:12-13`, `pps-properties-fonts.blp:13-14`.
11. **ActionRow** — Labeled rows with `activatable-widget` binding, `pps-annotation-properties-dialog.blp:17`.
12. **SpinRow** — `pps-annotation-properties-dialog.blp:49` with Adjustment.
13. **ComboRow** — With `StringList` model, `pps-annotation-properties-dialog.blp:57,78`.
14. **EntryRow** — With `show-apply-button`, `pps-annotation-properties-dialog.blp:103`.
15. **SwitchRow** — With subtitle, `pps-annotation-properties-dialog.blp:110`.

### D. List & Grid Views
16. **ListView with SignalListItemFactory** — `pps-find-sidebar.blp:30-36`, `pps-sidebar-annotations.blp:22-41`, `pps-sidebar-attachments.blp:23-35`, `pps-sidebar-layers.blp:13-31`, `pps-sidebar-links.blp:14-37`.
17. **GridView with SignalListItemFactory** — `pps-sidebar-thumbnails.blp:21-45`.
18. **SingleSelection / MultiSelection / NoSelection models** — Each sidebar list uses a different model type.

### E. Search
19. **SearchEntry with options MenuButton** — `pps-search-box.blp:14` with `search-delay`, `next-match`, `previous-match`, `stop-search`.
20. **StatusPage for empty/loading/results states** — `pps-find-sidebar.blp` (4 StackPages: `initial`, `loading`, `results`, `no-results`).

### F. Input & Gestures
21. **Gesture controllers in Blueprint** — `GestureClick`, `GestureDrag`, `GestureSwipe`, `GestureZoom`, `GestureLongPress` in `pps-view.blp`.
22. **EventControllers in Blueprint** — `EventControllerScroll`, `EventControllerKey`, `EventControllerMotion`, `EventControllerFocus` in `pps-view.blp` and `pps-view-presentation.blp`.
23. **Keyboard shortcuts** — `ShortcutController` with `Shortcut` entries using `<Ctrl>F`, `<Ctrl>G`, etc. in `pps-document-view.blp`.

### G. Feedback & State
24. **Adw.Banner** — `pps-document-view.blp:109,113` for document-level alerts.
25. **Adw.ToastOverlay** — `pps-document-view.blp:120`, `pps-window.blp:14`.
26. **Adw.StatusPage** — Empty/error/loading states: `pps-window.blp:34,64`, `pps-loader-view.blp:14`, `pps-password-view.blp:16`, `pps-find-sidebar.blp`.
27. **Adw.Spinner** — Inline loading indicators.
28. **InfoBar + ProgressBar** — `pps-progress-message-area.blp:5,63`.
29. **Revealer** — Animated show/hide, `pps-document-view.blp:50,145,161`.

### H. Tabbed / Stacked Navigation
30. **Adw.ViewSwitcher + ViewStack** — `pps-properties-window.blp:13,20` (properties dialog tabs).
31. **Adw.InlineViewSwitcher + ViewStack** — `pps-sidebar.blp:12,6` (sidebar page switcher with icons).
32. **ViewStack transitions** — `crossfade` type on `pps-document-view.blp:60`, `enable-transitions: true`.

### I. Property Binding
33. **`bind` expressions** — `pps-document-view.blp` extensively uses `bind model.property bidirectional`, `bind $is_text(...)`, `bind $is_highlight(...)`, `bind view.can-zoom-in`.
34. **`notify::property => $callback() swapped`** — Standard signal wiring for model changes.

### J. Accessibility
35. **`accessibility { label: ...; labelled-by: [...]; }`** — `pps-page-selector.blp:11`, `pps-search-box.blp:41`, `pps-sidebar-thumbnails.blp:48`.

### K. Drag & Drop
36. **DropTarget** — `pps-window.blp:175` for file opening via drag-and-drop.

### L. Custom Widget Templates
37. **Custom `$PpsXxx` templates** — 23 custom widget types declared as Blueprint templates, demonstrating component architecture.

---

## 3. Best Code Examples by Pattern

| Pattern | Best Example | Why |
|---------|-------------|-----|
| **App shell with ViewStack** | `pps-window.blp:15-163` | Multi-page app with `start`, `error`, `password`, `loader`, `document`, `presentation` states |
| **Responsive OverlaySplitView** | `pps-document-view.blp:32-91` | BreakpointBin + OverlaySplitView + collapsible sidebar with 720sp/540sp breakpoints |
| **Preferences dialog (Adw.Dialog)** | `pps-annotation-properties-dialog.blp:4-121` | Complete preferences dialog with ActionRow, SpinRow, ComboRow, EntryRow, SwitchRow, ColorDialogButton |
| **Tabbed properties with ViewSwitcher** | `pps-properties-window.blp:4-57` | Adw.Dialog + ViewSwitcherBar + ViewStack for multi-tab properties |
| **ListView with factory** | `pps-find-sidebar.blp:30-41` | SignalListItemFactory with setup/bind/unbind, scrolled in a Stack |
| **GridView with factory** | `pps-sidebar-thumbnails.blp:21-45` | SingleSelection + ClampScrollable + SignalListItemFactory |
| **Search bar** | `pps-search-box.blp:4-71` | SearchEntry with search-delay, match signals, options MenuButton, keyboard shortcut |
| **StatusPage states** | `pps-find-sidebar.blp:47-83` | 4 StackPage states: initial, loading, results, no-results |
| **Adw.AlertDialog** | `pps-document-view.blp:243-265` | Multi-response dialogs with destructive/suggested styling |
| **Inline popover color picker** | `pps-document-view.blp` (text_color_popover) | ToggleButton group as color swatches with action-name/action-target |
| **Gesture controllers** | `pps-view.blp:12-74` | GestureClick, GestureDrag, GestureSwipe, GestureZoom, GestureLongPress in one widget |
| **Annotation toolbar** | `pps-document-view.blp` (annot_toolbar section) | Adw.ToggleGroup with Adw.Toggle, popovers, revealer animations, conditional visibility with bind |
| **Loader with cancel** | `pps-loader-view.blp:4-52` | Adw.StatusPage + Spinner/ProgressBar stack + cancel Button with `clicked => $cancel_clicked()` |
| **Password entry dialog** | `pps-password-dialog.blp:3-69` | Adw.AlertDialog with PasswordEntry, error label, CheckButton for remember preferences |
| **Drop target** | `pps-window.blp:175-179` | DropTarget with GdkFileList format for file drag-and-drop |
| **Shortcuts window** | `pps-shortcuts-dialog.blp:4-219` | Full Adw.ShortcutsDialog with 9 sections, 29 items |
| **Property binding** | `pps-document-view.blp` (annot_toolbar) | `bind $is_text(model.annotation-editing-state)`, `bind annotation-model.active-tool-str bidirectional` |
| **InfoBar with progress** | `pps-progress-message-area.blp:4-74` | InfoBar + Image + Labels + ProgressBar for operation feedback |
| **Banner alerts** | `pps-document-view.blp:109,113` | Adw.Banner for document status messages |
| **Sidebar inline switcher** | `pps-sidebar.blp:4-21` | Adw.InlineViewSwitcher with display-mode: icons |

---

## Summary Statistics

- **26 .blp files** scanned
- **~33 distinct Adw widget types** used
- **~47 distinct Gtk widget/controller types** used
- **23 custom `$Pps*` template widgets** defined
- **12 distinct UI patterns** identified across application shell, dialogs, forms, lists, search, gestures, feedback, navigation, bindings, accessibility, DnD, and custom templates
