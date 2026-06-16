# GNOME Maps — GUI Widget Audit (38 .blp files)

## 1. Widget Inventory

### Adw Widgets

| Widget | Files (first occurrence) |
|--------|--------------------------|
| **Adw.ActionRow** | `osm-edit-dialog.blp:212` |
| **Adw.AlertDialog** | `osm-discard-dialog.blp:3` |
| **Adw.ApplicationWindow** | `main-window.blp:49` |
| **Adw.Banner** | `preferences-downloads.blp:9` |
| **Adw.Bin** | `auxillary-view.blp:18`, `main-window.blp:170`, `place-popover.blp:54`, `preferences-download-new.blp:62`, `preferences-downloads.blp:30`, `transit-juncture-row.blp:27`, `transit-leg-header.blp:24`, `transit-leg-row.blp:5,11`, `transit-stop-row.blp:7` |
| **Adw.BottomSheet** | `main-window.blp:97` |
| **Adw.Breakpoint** | `main-window.blp:53` |
| **Adw.ButtonContent** | `place-buttons.blp:13` |
| **Adw.Clamp** | `osm-edit-dialog.blp:111` |
| **Adw.Dialog** | `export-view-dialog.blp:3`, `osm-account-dialog.blp:3`, `osm-edit-dialog.blp:3`, `send-to-dialog.blp:3` |
| **Adw.EntryRow** | `osm-account-dialog.blp:47`, `preferences-download-row.blp:12` |
| **Adw.ExpanderRow** | `preferences-download-row.blp:4` |
| **Adw.HeaderBar** | `export-view-dialog.blp:12`, `main-window.blp:108,173`, `osm-account-dialog.blp:13`, `osm-edit-dialog.blp:66,99`, `preferences-download-new.blp:7`, `send-to-dialog.blp:11` |
| **Adw.Layout** | `main-window.blp:60,93` |
| **Adw.LayoutSlot** | `main-window.blp:75,79,95,103` |
| **Adw.MultiLayoutView** | `main-window.blp:59` |
| **Adw.NavigationPage** | `osm-account-dialog.blp:16,36,56`, `osm-edit-dialog.blp:15,63,94`, `preferences-download-new.blp:4` |
| **Adw.NavigationView** | `osm-account-dialog.blp:15`, `osm-edit-dialog.blp:14` |
| **Adw.OverlaySplitView** | `main-window.blp:63` |
| **Adw.PreferencesDialog** | `preferences.blp:3` |
| **Adw.PreferencesGroup** | `osm-account-dialog.blp:44`, `osm-edit-dialog.blp:166`, `preferences-downloads.blp:23,38` |
| **Adw.PreferencesPage** | `osm-edit-dialog.blp:68`, `preferences-downloads.blp:4` |
| **Adw.PreferencesRow** | `preferences-download-row.blp:17` |
| **Adw.ShortcutsDialog** | `shortcuts-dialog.blp:3` |
| **Adw.ShortcutsItem** | `shortcuts-dialog.blp:5+` |
| **Adw.ShortcutsSection** | `shortcuts-dialog.blp:4,43` |
| **Adw.Spinner** | `osm-edit-dialog.blp:22`, `place-popover.blp:62`, `place-view.blp:114,184`, `route-view.blp:148`, `transit-more-row.blp:16` |
| **Adw.StatusPage** | `favorites-popover.blp:9`, `osm-account-dialog.blp:20,38,58`, `osm-edit-dialog.blp:20,69,183`, `preferences-downloads.blp:58` |
| **Adw.ToastOverlay** | `main-window.blp:58`, `osm-account-dialog.blp:11`, `osm-edit-dialog.blp:12`, `send-to-dialog.blp:8` |
| **Adw.Toggle** | `place-view.blp:102,104,106`, `route-view.blp:8,14,20,26`, `transit-options-panel.blp:111,115` |
| **Adw.ToggleGroup** | `place-view.blp:97,102,110`, `route-view.blp:6`, `transit-options-panel.blp:109` |
| **Adw.ToolbarView** | `export-view-dialog.blp:11`, `main-window.blp:106,172`, `osm-account-dialog.blp:12`, `osm-edit-dialog.blp:64,97`, `send-to-dialog.blp:9` |
| **Adw.WrapBox** | `transit-itinerary-row.blp:28` |

### Gtk Widgets

| Widget | Files (first occurrence) |
|--------|--------------------------|
| **Gtk.ActionBar** | `main-window.blp:148` |
| **Gtk.Adjustment** | `transit-options-panel.blp:88,103` |
| **Gtk.Box** | 30+ files; nearly all |
| **Gtk.Button** | 20+ files; nearly all |
| **Gtk.Calendar** | `transit-options-panel.blp:114` |
| **Gtk.CheckButton** | `osm-edit-dialog.blp:216`, `transit-options-panel.blp:120–152` |
| **Gtk.DropDown** | `transit-options-panel.blp:8` |
| **Gtk.Entry** | `favorites-popover.blp:28` |
| **Gtk.Frame** | `export-view-dialog.blp:42` |
| **Gtk.Grid** | `auxillary-view.blp:4`, `main-window.blp:133`, `route-entry.blp:3`, `route-view.blp:81,199`, `send-to-dialog.blp:57`, `transit-arrival-destination-row.blp:3`, `transit-itinerary-row.blp:4`, `transit-leg-header.blp:3`, `transit-leg-row.blp:4`, `transit-more-row.blp:4`, `transit-options-panel.blp:3,118`, `transit-stop-row.blp:4` |
| **Gtk.Image** | 20+ files |
| **Gtk.Label** | 25+ files; nearly all |
| **Gtk.LinkButton** | `place-view.blp:178`, `route-view.blp:155,165` |
| **Gtk.ListBox** | `favorites-popover.blp:42`, `layers-popover.blp:40`, `osm-edit-dialog.blp:160`, `place-popover.blp:44,92`, `place-view.blp:111,117`, `preferences-downloads.blp:68`, `route-view.blp:62,104,114,135,141`, `send-to-dialog.blp:77`, `transit-leg-row.blp:33,42,51` |
| **Gtk.ListBoxRow** | `instruction-row.blp:3`, `open-with-row.blp:3`, `place-list-row.blp:3`, `poi-category-goback-row.blp:3`, `poi-category-row.blp:3`, `shape-layer-row.blp:3`, `transit-arrival-destination-row.blp:3`, `transit-itinerary-row.blp:3`, `transit-juncture-row.blp:3`, `transit-leg-row.blp:3`, `transit-more-row.blp:3`, `transit-stop-row.blp:3` |
| **Gtk.MenuButton** | `headerbar-right.blp:7,14`, `main-window.blp:120`, `route-view.blp:176`, `transit-options-panel.blp:34,43,56` |
| **Gtk.Overlay** | `main-window.blp:139`, `preferences-download-new.blp:30`, `preferences-download-row.blp:24` |
| **Gtk.Popover** | `favorites-popover.blp:4`, `route-view.blp:199`, `transit-options-panel.blp:82,114,118` |
| **Gtk.PopoverMenu** | `layers-popover.blp:32` |
| **Gtk.ProgressBar** | `preferences-downloads.blp:32` |
| **Gtk.Revealer** | `main-window.blp:142,144`, `place-view.blp:176,179`, `route-view.blp:86`, `transit-juncture-row.blp:62`, `transit-leg-row.blp:18,28,37,46`, `zoom-and-rotate-controls.blp:12` |
| **Gtk.ScrolledWindow** | `favorites-popover.blp:36`, `osm-edit-dialog.blp:109,141`, `place-view.blp:83`, `route-view.blp:99,108`, `send-to-dialog.blp:75` |
| **Gtk.SearchEntry** | `osm-edit-dialog.blp:155` |
| **Gtk.Separator** | `layers-popover.blp:44`, `place-view.blp:92,98,105,168,173`, `shape-layer-row.blp:14` |
| **Gtk.SizeGroup** | `place-popover.blp:109` |
| **Gtk.SpinButton** | `transit-options-panel.blp:84,99` |
| **Gtk.Stack** | `auxillary-view.blp:10`, `favorites-popover.blp:7`, `place-popover.blp:14`, `place-view.blp:5,105`, `preferences-download-new.blp:71`, `preferences-downloads.blp:49`, `route-view.blp:93,108,117`, `transit-more-row.blp:8` |
| **Gtk.StackPage** | `auxillary-view.blp:17,26`, `place-popover.blp:22+`, `preferences-downloads.blp:56,62`, `route-view.blp:127,133` |
| **Gtk.StringList** | `transit-options-panel.blp:13` |
| **Gtk.TextView** | `osm-edit-dialog.blp:198` |
| **Gtk.ToggleButton** | `osm-edit-dialog.blp:131,138,146,154,162,170,178` |

### Non-GNOME (third-party)

| Widget | Files |
|--------|-------|
| **Shumate.Map** | `preferences-download-new.blp:33`, `preferences-download-row.blp:27` |
| **Shumate.License** | `preferences-download-new.blp:38`, `preferences-download-row.blp:34` |

---

## 2. Patterns Demonstrated

### A. Adaptive Layout (responsive wide/narrow)
- **Breakpoint** + **MultiLayoutView** with two **Layout** nodes: wide uses **OverlaySplitView**, narrow uses **BottomSheet**.
- `main-window.blp:53–105`

### B. Dialog (modal/popup dialog)
- **Adw.Dialog** wrapping **ToolbarView** + **HeaderBar**.
- `export-view-dialog.blp:3–50`, `osm-account-dialog.blp:3–78`, `osm-edit-dialog.blp:3–220`, `send-to-dialog.blp:3–100`

### C. AlertDialog (confirmation dialog)
- **Adw.AlertDialog** with responses (cancel/discard), `destructive` response flag.
- `osm-discard-dialog.blp:3–10`

### D. Preferences Window
- **Adw.PreferencesDialog** → **Adw.PreferencesPage** → **Adw.PreferencesGroup**.
- `preferences.blp:3–6`, `preferences-downloads.blp:4–75`

### E. Navigation View (drill-down pages)
- **Adw.NavigationView** with multiple **Adw.NavigationPage** children (sign-in → verify → logged-in).
- `osm-account-dialog.blp:15–77`, `osm-edit-dialog.blp:14–210`

### F. StatusPage (empty/loading/success states)
- **Adw.StatusPage** with icon, title, description, optional `compact` style and child button.
- `favorites-popover.blp:9–14`, `osm-account-dialog.blp:20–30`, `osm-edit-dialog.blp:20–22,69–73,183–191`

### G. Stack + StackPage (view switching)
- **Gtk.Stack** with named **StackPage** children, crossfade transitions, `visible-child-name` binding.
- `auxillary-view.blp:10–32`, `place-popover.blp:14–107`, `route-view.blp:93–153`

### H. Segmented Buttons (ToggleGroup + Toggle)
- **Adw.ToggleGroup** with multiple **Adw.Toggle** children (icon-only and labeled).
- `route-view.blp:6–32`, `place-view.blp:97–108`, `transit-options-panel.blp:109–116`

### I. ListBox + ListBoxRow (selection lists)
- **Gtk.ListBox** with template **ListBoxRow** subclasses, `selection-mode: none`.
- `favorites-popover.blp:42–43`, `route-view.blp:62–136`, `place-view.blp:111`; row templates in `place-list-row.blp`, `instruction-row.blp`, `transit-leg-row.blp`, etc.

### J. Popover (dropdown panels)
- **Gtk.Popover** / **Gtk.PopoverMenu** with `menu-model` binding.
- `favorites-popover.blp:4–47`, `layers-popover.blp:32–46`, `transit-options-panel.blp:82–116`

### K. Overlay (floating UI on map surface)
- **Gtk.Overlay** with overlay child positioned via halign/valign.
- `preferences-download-new.blp:30–80`, `main-window.blp:139–151`

### L. Revealer (animated show/hide)
- **Gtk.Revealer** with crossfade transition, `reveal-child` binding.
- `main-window.blp:142`, `transit-leg-row.blp:18,28,37,46`, `zoom-and-rotate-controls.blp:12`

### M. ExpanderRow (collapsible preferences row)
- **Adw.ExpanderRow** with child widgets and suffix button.
- `preferences-download-row.blp:4–35`

### N. Banner (inline notification bar)
- **Adw.Banner** with bindings for title, revealed, and button-clicked.
- `preferences-downloads.blp:9–14`

### O. SpinButton + Adjustment (numeric input)
- **Gtk.SpinButton** with **Gtk.Adjustment** for bounds and stepping.
- `transit-options-panel.blp:84–93,99–108`

### P. Calendar (date picker popover)
- **Gtk.Calendar** inside a **Gtk.Popover**.
- `transit-options-panel.blp:114`

### Q. Shortcuts Window
- **Adw.ShortcutsDialog** with **Adw.ShortcutsSection** → **Adw.ShortcutsItem**.
- `shortcuts-dialog.blp:3–104`

### R. DropDown + StringList (combo box with model)
- **Gtk.DropDown** with inline **Gtk.StringList** model.
- `transit-options-panel.blp:8–22`

### S. Clamp (responsive centering)
- **Adw.Clamp** wrapping content for max-width constraint.
- `osm-edit-dialog.blp:111`

### T. WrapBox (flow layout for tags/chips)
- **Adw.WrapBox** for wrapping child items.
- `transit-itinerary-row.blp:28`

### U. ButtonContent (icon+label composite button child)
- **Adw.ButtonContent** inside a **Button**.
- `place-buttons.blp:13`

### V. ProgressBar
- **Gtk.ProgressBar** with `show-text: true`.
- `preferences-downloads.blp:32`

### W. SizeGroup (synchronized sizing)
- **Gtk.SizeGroup** defined at template level for horizontal mode.
- `place-popover.blp:109`

### X. ActionRow with activatable-widget
- **Adw.ActionRow** with `activatable-widget` pointing to a **CheckButton**.
- `osm-edit-dialog.blp:212–219`

---

## 3. Best Code Examples (by Pattern)

| Pattern | Best File:Line | Why |
|---------|---------------|-----|
| **Adaptive Layout** | `main-window.blp:53–105` | Full Breakpoint+MultiLayoutView+OverlaySplitView+BottomSheet in one template |
| **Dialog** | `export-view-dialog.blp:3–50` | Clean, minimal Adw.Dialog:ToolbarView:HeaderBar:content pattern |
| **AlertDialog** | `osm-discard-dialog.blp:3–10` | Canonical 2-response destructive alert |
| **Preferences** | `preferences-downloads.blp:4–75` | PreferencesPage+Banner+Group+Stack+ListBox in one file |
| **Drill-down Navigation** | `osm-account-dialog.blp:15–77` | 3-page NavigationView flow (sign-in→verify→logged-in) |
| **StatusPage (empty state)** | `favorites-popover.blp:9–14` | Compact StatusPage with icon+title+description |
| **Stack view switching** | `place-popover.blp:14–107` | 6 named StackPages with crossfade, including states for loading/empty/error |
| **Segmented Buttons** | `route-view.blp:6–32` | ToggleGroup with 4 icon-only Adw.Toggle children |
| **ListBox list with custom rows** | `place-list-row.blp:3–59` | Template ListBoxRow with accessibility, icon, labels, dimmed styles |
| **PopoverMenu** | `layers-popover.blp:1–46` | Menu-model based PopoverMenu with custom child widget slot |
| **Overlay on map** | `preferences-download-new.blp:30–80` | Overlay with multiple positioned overlay children (OSD buttons, license, spinner) |
| **Revealer** | `transit-leg-row.blp:18–52` | 3 Revealers with reveal-child:true for expandable sections |
| **ExpanderRow** | `preferences-download-row.blp:4–35` | Adw.ExpanderRow with EntryRow, PreferencesRow, suffix delete button |
| **Banner** | `preferences-downloads.blp:9–14` | Adw.Banner with bindings and button-clicked |
| **SpinButton** | `transit-options-panel.blp:84–108` | Two SpinButtons with Adjustment for time input |
| **Calendar** | `transit-options-panel.blp:114` | Calendar in Popover for date picking |
| **ShortcutsDialog** | `shortcuts-dialog.blp:3–104` | Full shortcuts window with two sections and accelerators |
| **DropDown** | `transit-options-panel.blp:8–22` | DropDown with inline StringList model |
| **Clamp** | `osm-edit-dialog.blp:111–164` | Clamp wrapping type-selection UI with SearchEntry+ListBox |
| **WrapBox** | `transit-itinerary-row.blp:28–35` | WrapBox for transit leg summary chips |
| **ButtonContent** | `place-buttons.blp:13–17` | ButtonContent combining icon + label in a suggested-action pill button |
| **ActionRow+CheckButton** | `osm-edit-dialog.blp:212–219` | ActionRow with activatable-widget pointing to prefix CheckButton |
| **SizeGroup** | `place-popover.blp:109–111` | SizeGroup for synchronizing label widths across rows |
