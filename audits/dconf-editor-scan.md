# Dconf Editor — UI Scan Report

**Repo:** `sources/dconf-editor`  
**Date:** 2025-06-17  
**Scan scope:** All `.ui`, `.blp`, `.xml` GUI-definition files recursively under `editor/`

---

## 5. File Counts

| Type | Count |
|------|-------|
| `.ui` files | **28** |
| `.blp` files | **0** |
| `.xml` gresource files | **1** (`dconf-editor.gresource.xml`) |
| `.css` stylesheets | **3** (`base-window.css`, `dconf-editor.css`, `large-pathbar.css`) |

---

## 3. Framework

- **Language:** **Vala** (all source under `editor/` is `.vala`; compiled with `valac`)
- **Toolkit:** **GTK+ 3** (`>= 3.22.27`, per `meson.build`)
- **Adaptive library:** **libhandy-1** (`>= 1.6`) — used only for `Hdy.init()` and `Hdy.StyleManager` to force light color scheme; no `Hdy*` widgets appear in `.ui` files
- **Build system:** Meson
- **Resource bundling:** GResource (`.gresource.xml`), prefix `/ca/desrt/dconf-editor/ui` and `/ca/desrt/dconf-editor/gtk`
- **Notable:** This is a **GTK3-era** application — there are **zero** Adwaita (`Adw*`) widgets and **zero** Blueprint (`.blp`) files. All UI is classic GTK3 `.ui` XML templates.

---

## 1. Widget Inventory

### GTK Widgets Used Across All `.ui` Files

Each entry lists the widget, every `.ui` file where it appears, and approximate line numbers.

| Widget | Files & Lines |
|--------|--------------|
| **GtkApplicationWindow** | `adaptative-window.ui` :20 (template parent) |
| **GtkHeaderBar** | `base-headerbar.ui` :20 (template parent) |
| **GtkButton** | `base-headerbar.ui` :25, :49, :86; `bookmarks-controller.ui` :38, :56, :76, :100, :118; `delayed-setting-view.ui` :33; `modifications-revealer.ui` :37, :58; `notifications-revealer.ui` :34; `pathentry.ui` :32, :47, :63; `large-pathbar-item.ui` :20 (template parent); `registry-info.ui` :111 |
| **GtkImage** | `base-headerbar.ui` :32, :56, :110; `bookmarks-controller.ui` :41, :65, :86, :109, :131; `bookmarks.ui` :99; `modifications-revealer.ui` :49; `notifications-revealer.ui` :42; `pathentry.ui` :54, :72; `registry-placeholder.ui` :25; `delayed-setting-view.ui` :44, :66 |
| **GtkSeparator** | `base-headerbar.ui` :38, :82; `modifications-revealer.ui` :79; `notifications-revealer.ui` :26 |
| **GtkBox** | `base-headerbar.ui` :44; `bookmarks-controller.ui` :47; `browser-infobar.ui` :23, :26; `large-pathbar.ui` :20 (template parent); `pathentry.ui` :20 (template parent); `pathwidget.ui` :20 (template parent) |
| **GtkLabel** | `base-headerbar.ui` :48; `bookmark.ui` :25; `bookmarks.ui` :46, :80; `delayed-setting-view.ui` :22, :53, :77; `filter-list-box-row.ui` :24; `folder-list-box-row.ui` :24; `key-list-box-row.ui` :30, :54, :66; `large-pathbar-item.ui` :23; `modifications-revealer.ui` :53; `notifications-revealer.ui` :22; `registry-info.ui` :38, :75, :101, :118, :131; `registry-placeholder.ui` :31; `return-list-box-row.ui` :24; `search-list-box-row.ui` :24; `short-pathbar.ui` :51 |
| **GtkStack** | `base-headerbar.ui` :60; `base-view.ui` :20 (template parent); `browser-stack.ui` :20; `browser-infobar.ui` :28; `bookmarks.ui` :42; `pathwidget.ui` :28 |
| **GtkMenuButton** | `base-headerbar.ui` :93; `bookmarks.ui` :79 (template parent); `modifications-revealer.ui` :23; `short-pathbar.ui` :28 |
| **GtkOverlay** | `base-view.ui` :23; `overlayed-list.ui` :20 (template parent) |
| **GtkGrid** | `base-view.ui` :27; `base-window.ui` :24; `bookmark.ui` :21; `bookmarks-controller.ui` :34 (template parent); `bookmarks.ui` :30, :37; `browser-stack.ui` :20 (template parent); `delayed-setting-view.ui` :21, :49, :76; `filter-list-box-row.ui` :21; `folder-list-box-row.ui` :21; `key-list-box-row.ui` :21, :24; `notifications-revealer.ui` :17; `pathwidget.ui` :38; `registry-info.ui` :20 (template parent); `registry-list.ui` :20 (template parent); `registry-placeholder.ui` :20 (template parent); `return-list-box-row.ui` :21; `search-list-box-row.ui` :21; `short-pathbar.ui` :20 (template parent) |
| **GtkPopover** | `bookmarks.ui` :27; `modifications-revealer.ui` :88 |
| **GtkSwitch** | `bookmarks.ui` :49 |
| **GtkRevealer** | `browser-infobar.ui` :20 (template parent); `modifications-revealer.ui` :20 (template parent); `notifications-revealer.ui` :20 (template parent); `pathwidget.ui` :41; `registry-info.ui` :22, :47, :72, :113 |
| **GtkInfoBar** | `browser-infobar.ui` :22; `registry-info.ui` :24, :49, :74, :115 |
| **GtkActionBar** | `modifications-revealer.ui` :21 |
| **GtkModelButton** | `modifications-revealer.ui` :84; `overlayed-list.ui` :46, :62; `pathwidget.ui` :47, :63, :79 |
| **GtkScrolledWindow** | `overlayed-list.ui` :25; `registry-info.ui` :141; `registry-list.ui` :22 |
| **GtkListBox** | `overlayed-list.ui` :32; `registry-info.ui` :144; `registry-list.ui` :25 |
| **GtkFrame** | `notifications-revealer.ui` :15 |
| **GtkSearchEntry** | `pathentry.ui` :24 (as custom `BrowserEntry` subclass) |
| **GtkShortcutsWindow** | `help-overlay.ui` :20 |
| **GtkShortcutsSection** | `help-overlay.ui` :22 |
| **GtkShortcutsGroup** | `help-overlay.ui` :25, :58, :92, :124, :158, :183, :208, :233 |
| **GtkShortcutsShortcut** | `help-overlay.ui` :29, :36, :43, :50, :57, … (many entries) |
| **AtkObject** | `base-headerbar.ui` :98–101, :102–105; `bookmarks.ui` :82–85, :86–89; `pathentry.ui` :52–55, :56–59, :70–73, :74–77; `pathwidget.ui` :68–71, :72–75, :84–87, :88–91 |

### Custom Application Widgets (Vala classes used as UI template parents or embedded in `.ui`)

| Custom Widget | Extends | `.ui` File(s) |
|---------------|---------|---------------|
| `AdaptativeWindow` | GtkApplicationWindow | `adaptative-window.ui` |
| `BaseHeaderBar` | GtkHeaderBar | `base-headerbar.ui` |
| `BaseView` | GtkStack | `base-view.ui` |
| `BaseWindow` | AdaptativeWindow | `base-window.ui` |
| `Bookmark` | OverlayedListRow | `bookmark.ui` |
| `BookmarksController` | GtkGrid | `bookmarks-controller.ui`, `bookmarks.ui` (embedded) |
| `Bookmarks` | GtkMenuButton | `bookmarks.ui` |
| `BookmarksList` | OverlayedList | `bookmarks.ui` (embedded) |
| `BrowserInfoBar` | GtkRevealer | `browser-infobar.ui` |
| `BrowserStack` | GtkGrid | `browser-stack.ui` |
| `BrowserEntry` | GtkSearchEntry | `pathentry.ui` (embedded) |
| `RegistryView` | RegistryList | `browser-stack.ui` (embedded) |
| `RegistryInfo` | GtkGrid | `browser-stack.ui` (embedded), `registry-info.ui` |
| `RegistrySearch` | RegistryList | `browser-stack.ui` (embedded) |
| `RegistryPlaceholder` | GtkGrid | `registry-placeholder.ui`, `registry-list.ui` (placeholder child) |
| `DelayedSettingView` | OverlayedListRow | `delayed-setting-view.ui` |
| `FilterListBoxRow` | ClickableListBoxRow | `filter-list-box-row.ui` |
| `FolderListBoxRow` | ClickableListBoxRow | `folder-list-box-row.ui` |
| `KeyListBoxRow` | ClickableListBoxRow | `key-list-box-row.ui` |
| `LargePathbar` | GtkBox | `large-pathbar.ui` |
| `LargePathbarItem` | GtkButton | `large-pathbar-item.ui`, `large-pathbar.ui` (embedded) |
| `ModificationsRevealer` | GtkRevealer | `modifications-revealer.ui` |
| `ModificationsList` | OverlayedList | `modifications-revealer.ui` (embedded) |
| `NotificationsRevealer` | GtkRevealer | `notifications-revealer.ui` |
| `OverlayedList` | GtkOverlay | `overlayed-list.ui` |
| `OverlayedListRow` | GtkListBoxRow | (used as parent for Bookmark, DelayedSettingView, etc.) |
| `PathWidget` | GtkBox | `pathwidget.ui` |
| `PathEntry` | GtkBox | `pathentry.ui`, `pathwidget.ui` (embedded) |
| `AdaptativePathbar` | GtkStack | `pathwidget.ui` (embedded) |
| `PropertyRow` | ListBoxRowWrapper | `property-row.ui` |
| `ReturnListBoxRow` | ClickableListBoxRow | `return-list-box-row.ui` |
| `SearchListBoxRow` | ClickableListBoxRow | `search-list-box-row.ui` |
| `ShortPathbar` | GtkGrid | `short-pathbar.ui` |
| `RegistryWarning` | GtkGrid | `registry-info.ui` (embedded) |
| `AboutList` / `AboutListItem` | OverlayedList / OverlayedListRow | (used programmatically, not in `.ui`) |

### Widget Occurrence Summary (GTK stdlib widgets only, deduplicated across files)

| GTK Widget Class | Appears in N `.ui` files |
|-------------------|--------------------------|
| GtkLabel | 16 |
| GtkGrid | 15 |
| GtkButton | 9 |
| GtkImage | 8 |
| GtkBox | 6 |
| GtkStack | 5 |
| GtkRevealer | 5 |
| GtkMenuButton | 4 |
| GtkSeparator | 4 |
| GtkPopover | 2 |
| GtkOverlay | 2 |
| GtkScrolledWindow | 3 |
| GtkListBox | 3 |
| GtkModelButton | 3 |
| GtkInfoBar | 2 |
| GtkHeaderBar | 1 |
| GtkApplicationWindow | 1 |
| GtkSwitch | 1 |
| GtkActionBar | 1 |
| GtkFrame | 1 |
| GtkSearchEntry | 1 |
| GtkShortcutsWindow | 1 |
| GtkShortcutsSection | 1 |
| GtkShortcutsGroup | 1 |
| GtkShortcutsShortcut | 1 |
| AtkObject | 4 |

---

## 2. GNOME Patterns Demonstrated

> **Note:** This is a GTK3 + libhandy-1 application. Many modern Adwaita patterns (AdwDialog, AdwPreferencesPage, AdwViewStack, AdwBreakpoint, AdwCarousel, AdwToastOverlay, AdwStatusPage, etc.) are GTK4/libadwaita only and are **not present**. However, equivalent/precursor GTK3 patterns are widespread.

| Pattern | Description | Files |
|---------|-------------|-------|
| **Template-based composite widgets** | `<template class="..." parent="...">` pattern binds a Vala class to a UI XML definition | All 28 `.ui` files |
| **GtkHeaderBar as title bar** | CSD headerbar with show-close-button, custom title widget, and packed start/end children | `base-headerbar.ui` |
| **GtkStack for view switching** | Crossfade/slide transitions between views (folder, object, search, pathbar/search-entry) | `base-view.ui`, `browser-stack.ui`, `pathwidget.ui`, `bookmarks.ui` |
| **GtkRevealer for animated show/hide** | Infobars, notifications, modifications bar slide in/out | `browser-infobar.ui`, `modifications-revealer.ui`, `notifications-revealer.ui`, `registry-info.ui` |
| **GtkInfoBar for contextual warnings** | Warning/info bars for schema conflicts, no-schema, one-choice errors | `browser-infobar.ui`, `registry-info.ui` |
| **GtkListBox with custom row templates** | Key list, folder list, search results — each row is a custom subclass | `registry-list.ui`, `key-list-box-row.ui`, `folder-list-box-row.ui`, `search-list-box-row.ui` |
| **GtkPopover + GtkMenuButton** | Popover attached to menu button for bookmarks list and delayed settings | `bookmarks.ui`, `modifications-revealer.ui` |
| **GtkOverlay for floating controls** | Edit-mode buttons overlaid on top of list content | `overlayed-list.ui` |
| **GtkActionBar with suggested-action** | Bottom bar with "Apply" button (`.suggested-action` class) for pending changes | `modifications-revealer.ui` |
| **GtkModelButton (flat icon+text buttons)** | Used throughout for icon+text buttons in headerbar/pathbar controls | `modifications-revealer.ui`, `overlayed-list.ui`, `pathwidget.ui` |
| **GtkShortcutsWindow** | Keyboard shortcut overlay with `GtkShortcutsSection`/`Group`/`Shortcut` hierarchy | `help-overlay.ui` |
| **GtkSearchEntry for search** | Custom `BrowserEntry` (GtkSearchEntry subclass) with refresh and close buttons linked | `pathentry.ui` |
| **Adaptive sizing** | `AdaptativeWindow` with size constraints (350×284 px minimum for Purism Librem 5), responds to `size-allocate` and `window-state-event` | `adaptative-window.ui`, `dconf-editor.css` |
| **Pathbar (large + short)** | Dual pathbar variants: `LargePathbar` (GtkBox of buttons) and `ShortPathbar` (GtkGrid with menu button), swapped adaptively via `GtkStack` | `large-pathbar.ui`, `short-pathbar.ui`, `pathwidget.ui` |
| **GtkStack transition: crossfade / over-down-up** | `crossfade` for pathbar↔searchentry, `over-down-up` for main grid views | `base-view.ui`, `browser-stack.ui`, `pathwidget.ui` |
| **Accessibility via AtkObject** | Translatable `accessible-name` and `accessible-description` on buttons, menu buttons, and toggles | `base-headerbar.ui`, `bookmarks.ui`, `pathentry.ui`, `pathwidget.ui` |
| **CSS class-based theming** | Extensive CSS with `.dim-label`, `.bold-label`, `.italic-label`, `.key-name`, `.suggested-action`, `.image-button`, `.linked`, `.flat`, `.circular` | All 3 `.css` files |
| **LTR/RTL-aware CSS** | `:dir(ltr)` / `:dir(rtl)` selectors for margin, padding, border-radius, and icon positioning | `base-window.css`, `dconf-editor.css`, `large-pathbar.css` |
| **ellipsize text overflow** | `PANGO_ELLIPSIZE_START` (bookmarks), `PANGO_ELLIPSIZE_MIDDLE` (pathbar), `PANGO_ELLIPSIZE_END` (list rows) | `bookmark.ui`, `large-pathbar-item.ui`, multiple list rows |
| **linked button groups** | `.linked` CSS class for visually joined buttons (move-up/down/top/bottom, search entry+buttons) | `bookmarks-controller.ui`, `overlayed-list.ui`, `pathentry.ui` |
| **libhandy StyleManager** | `Hdy.StyleManager` used to force light color scheme (no adaptive dark/light in this version) | `dconf-editor.vala` (code only) |
| **placeholder child in GtkListBox** | `RegistryPlaceholder` as `type="placeholder"` when list is empty, with icon + bold label | `registry-list.ui`, `registry-placeholder.ui` |
| **Custom EventBox-based list rows** | `ClickableListBoxRow` (GtkEventBox subclass) for rows that handle clicks differently from GtkListBoxRow | `key-list-box-row.vala` (widget code) |
| **Dynamic icon assignment via CSS** | Row icons set via `-gtk-icontheme()` CSS image values (folder, key, deleted, conflict, etc.) — no GtkImage widgets needed | `dconf-editor.css` |

---

## 4. Notable Design Elements

### CSS Classes & Theming

- **`dconf-editor.css`** imports `base-window.css` and `large-pathbar.css`, forming a 3-file stylesheet hierarchy.
- **Icon assignment via CSS**: All row-type icons (folder, key, search, return, delayed, conflict, erase) are set purely via CSS `background-image: -gtk-icontheme(...)` — no GtkImage widgets in rows. This is a notable performance/style-separation pattern.
- **`.dim-label`**: Used on `RegistryPlaceholder` for empty-state text and `key-summary` labels.
- **`.bold-label`**: Used on default values in delayed settings view.
- **`.italic-label`**: Used on `folder_name_label` in filter/return rows.
- **`.key-name`**, **`.key-value`**, **`.key-summary`**: Core styling classes for the key list rows.
- **`.suggested-action`**: On the "Apply" button in the modifications revealer.
- **`.image-button`**: Widespread on icon-only buttons.
- **`.flat` + `.circular`**: Used on cancel/close buttons and edit-mode buttons.
- **`.linked` + `.linked-circular`**: For joined button groups in the edit-mode overlay.
- **`.invisible` + `.invisible-menu-button`**: Used on `ShortPathbar`'s menu button to hide button chrome while keeping the dropdown arrow visible.
- **Custom border radii via `-gtk-outline-radius`**: Used in `dconf-editor.css` for key list rows on large windows.
- **LTR/RTL directional class names**: `.left-on-ltr`, `.right-on-ltr` for edit-mode overlay button shapes.

### Size-Adaptive Architecture

The app has a sophisticated adaptive system:
- **Window size classes**: `extra-thin-window`, `thin-window`, `large-window` — CSS classes applied dynamically to the window.
- **Row size variants**: `small-keys-list-rows` class toggles between normal and compact row heights.
- **Pathbar variants**: `LargePathbar` (GtkBox of buttons for wide windows) vs `ShortPathbar` (GtkGrid with menu button for narrow windows), swapped via `AdaptativePathbar` (GtkStack).
- **Mobile-specific tweaks**: `.extra-thin-window` CSS overrides reduce padding, margins, and icon sizes for Purism Librem 5 compatibility.
- **Transitions everywhere**: `min-height`, `font-size`, `padding`, `margin`, `background-size` all use 0.3s CSS transitions for smooth size-class switches.

### Accessibility

- Manual `AtkObject` child elements with `translatable="yes"` on **4 controls**: hamburger menu button, bookmarks button, search close button, search refresh button, and search toggle.
- All accessible names/descriptions use `translatable="yes"` for full i18n.

### Unusual Configurations

1. **`pan-down-symbolic` as background-image, not GtkImage**: The `ShortPathbar` menu button uses a CSS `-gtk-icontheme("pan-down-symbolic")` background image with `.invisible-menu-button` class rather than a GtkImage child.
2. **`Ellipsize: PANGO_ELLIPSIZE_START`**: Bookmarks label ellipsizes from the *start* — useful for long dconf paths (e.g. `/org/gnome/...`) where the tail is more distinctive.
3. **`Ellipsize: PANGO_ELLIPSIZE_MIDDLE`**: Pathbar items use middle ellipsis for balanced truncation.
4. **`GtkListBox selection-mode="browse"`**: In `registry-list.ui` — allows no row to be selected (unlike "single" mode which always has one selected).
5. **`GtkListBox selection-mode="none"`**: In `registry-info.ui` — properties list box has no selection at all, purely a layout container.
6. **`GtkInfoBar` with empty action_area**: Both `browser-infobar.ui` and `registry-info.ui` hide the action_area child by setting a GtkBox `visible=False` inside it — a workaround to prevent GtkInfoBar from auto-adding a default close button.
7. **Comment-referenced Nautilus**: `registry-placeholder.ui` cites Nautilus's `nautilus-folder-is-empty.ui` as design inspiration for the empty-state placeholder pattern.
8. **Comment-referenced Epiphany**: Several `.ui` files mention "Epiphany web apps during search" as a reason for using `ellipsize` on labels.
9. **Hardcoded minimum sizes for Purism Librem 5**: `adaptative-window.ui` explicitly sets `height-request="284"` and `width-request="350"` with comments about the Librem 5 screen size.
10. **`BrowserEntry` subclass with `next-match`/`previous-match` signal handling**: Search keyboard shortcuts (Ctrl+G, Ctrl+Shift+G) are handled in `dconf-window.vala` rather than in the UI template.
11. **`PropertyRow` uses `GtkOverlay`**: The property row template wraps a `GtkOverlay` with the label placed as `type="overlay"` — this positions the property name label over the content area, creating a two-column property-sheet effect (name left-aligned, value right-aligned).
12. **`GtkModelButton` with `action-target` `@ms nothing`**: In `pathentry.ui`, the search action button uses `@ms nothing` as a target placeholder (disabled state signaling).
13. **`GtkStack` as quit-button container**: In `base-headerbar.ui`, a `GtkStack` (`quit_button_stack`) wraps the quit button — likely for showing/hiding it based on context.

### Complete `.ui` File Listing

| # | File path (relative to `sources/dconf-editor/editor/`) |
|---|---------|
| 1 | `adaptative-window.ui` |
| 2 | `base-headerbar.ui` |
| 3 | `base-view.ui` |
| 4 | `base-window.ui` |
| 5 | `bookmark.ui` |
| 6 | `bookmarks-controller.ui` |
| 7 | `bookmarks.ui` |
| 8 | `browser-infobar.ui` |
| 9 | `browser-stack.ui` |
| 10 | `delayed-setting-view.ui` |
| 11 | `filter-list-box-row.ui` |
| 12 | `folder-list-box-row.ui` |
| 13 | `help-overlay.ui` |
| 14 | `key-list-box-row.ui` |
| 15 | `large-pathbar-item.ui` |
| 16 | `large-pathbar.ui` |
| 17 | `modifications-revealer.ui` |
| 18 | `notifications-revealer.ui` |
| 19 | `overlayed-list.ui` |
| 20 | `pathentry.ui` |
| 21 | `pathwidget.ui` |
| 22 | `property-row.ui` |
| 23 | `registry-info.ui` |
| 24 | `registry-list.ui` |
| 25 | `registry-placeholder.ui` |
| 26 | `return-list-box-row.ui` |
| 27 | `search-list-box-row.ui` |
| 28 | `short-pathbar.ui` |
