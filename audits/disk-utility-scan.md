# GNOME Disk Utility — GUI Widget & Pattern Audit

**Source:** `/var/home/james/dev/gnome-spec/sources/gnome-disk-utility`  
**Scanned:** 26 `.blp` files (Blueprint) + 2 `.ui` files (GtkBuilder XML)  
**Date:** 2026-06-16

---

## 1. Widget Inventory (with file+line references)

### Adwaita Widgets (31 classes)

| Widget | Files & Lines |
|---|---|
| `Adw.ActionRow` | `gdu-benchmark-dialog.blp:116,125,135,145` `gdu-block-row.blp:70,79,88,97` `gdu-create-confirm-page.blp:21,29,37,46` `gdu-create-disk-image-dialog.blp:40,60` `gdu-create-filesystem-page.blp:17,54,57,70,83,96` `gdu-drive-view.blp:41,62,83,92` `gdu-edit-partition-dialog.blp:59,98,137` `gdu-format-disk-dialog.blp:39,79,92,105` `gdu-image-mounter-window.blp:32,47,62,77,91` `gdu-mount-options-dialog.blp:` *(not used)* `gdu-resize-volume-dialog.blp:52,60,68` `gdu-restore-disk-image-dialog.blp:43,64` `gdu-take-ownership-dialog.blp:10` `gdu-unlock-dialog.blp:60,80,84,123` |
| `Adw.AlertDialog` | `gdu-take-ownership-dialog.blp:4` |
| `Adw.ApplicationWindow` | `gdu-image-mounter-window.blp:4` `gdu-window.blp:4` |
| `Adw.Banner` | `gdu-change-passphrase-dialog.blp:42` `gdu-encryption-options-dialog.blp:33` `gdu-create-confirm-page.blp:9` `gdu-create-partition-page.blp:8` `gdu-edit-filesystem-dialog.blp:34` `gdu-mount-options-dialog.blp:36` `gdu-restore-disk-image-dialog.blp:37,39` `gdu-unlock-dialog.blp:36,40` |
| `Adw.Bin` | `gdu-create-confirm-page.blp:4` `gdu-create-filesystem-page.blp:4` `gdu-create-other-page.blp:4` `gdu-create-partition-page.blp:4` `gdu-create-password-page.blp:4` `gdu-drive-header.blp:4` `gdu-drive-view.blp:4` |
| `Adw.Breakpoint` | `gdu-window.blp:5` |
| `Adw.ButtonRow` | `gdu-mount-options-dialog.blp:144` |
| `Adw.Clamp` | `gdu-block-row.blp:31` `gdu-image-mounter-window.blp:23` |
| `Adw.ComboRow` | `gdu-create-partition-page.blp:55` `gdu-edit-partition-dialog.blp:36` `gdu-mount-options-dialog.blp:134` `gdu-new-disk-image-dialog.blp:77` `gdu-resize-volume-dialog.blp:97` |
| `Adw.Dialog` | `gdu-benchmark-dialog.blp:4` `gdu-change-passphrase-dialog.blp:4` `gdu-create-disk-image-dialog.blp:4` `gdu-disk-settings-dialog.blp:4` `gdu-drive-view.blp:30` `gdu-edit-filesystem-dialog.blp:4` `gdu-edit-partition-dialog.blp:4` `gdu-encryption-options-dialog.blp:4` `gdu-format-disk-dialog.blp:4` `gdu-format-volume-dialog.blp:4` `gdu-mount-options-dialog.blp:4` `gdu-new-disk-image-dialog.blp:4` `gdu-resize-volume-dialog.blp:4` `gdu-restore-disk-image-dialog.blp:4` `gdu-unlock-dialog.blp:4` `gdu-ata-smart-dialog.ui:3` |
| `Adw.EntryRow` | `gdu-create-disk-image-dialog.blp:35` `gdu-create-filesystem-page.blp:9` `gdu-edit-filesystem-dialog.blp:40` `gdu-edit-partition-dialog.blp:42` `gdu-encryption-options-dialog.blp:51,56,75` `gdu-mount-options-dialog.blp:77,83,89,100,110,120` `gdu-new-disk-image-dialog.blp:35` `gdu-unlock-dialog.blp:53` |
| `Adw.ExpanderRow` | `gdu-block-row.blp:4` |
| `Adw.HeaderBar` | `gdu-benchmark-dialog.blp:9` `gdu-change-passphrase-dialog.blp:11` `gdu-create-disk-image-dialog.blp:10` `gdu-disk-settings-dialog.blp:11` `gdu-drive-view.blp:36` `gdu-edit-filesystem-dialog.blp:9` `gdu-edit-partition-dialog.blp:10` `gdu-encryption-options-dialog.blp:11` `gdu-format-disk-dialog.blp:10` `gdu-format-volume-dialog.blp:7` `gdu-image-mounter-window.blp:14` `gdu-mount-options-dialog.blp:10` `gdu-new-disk-image-dialog.blp:10` `gdu-resize-volume-dialog.blp:9` `gdu-restore-disk-image-dialog.blp:10` `gdu-unlock-dialog.blp:9` `gdu-window.blp:19,50` `gdu-ata-smart-dialog.ui:8` |
| `Adw.Layout` | `gdu-drive-header.blp:6,41` |
| `Adw.LayoutSlot` | `gdu-drive-header.blp:12,21,30,49,53,57` |
| `Adw.MultiLayoutView` | `gdu-drive-header.blp:5` |
| `Adw.OverlaySplitView` | `gdu-window.blp:14` |
| `Adw.PasswordEntryRow` | `gdu-change-passphrase-dialog.blp:51,57,63` `gdu-create-password-page.blp:11,16` `gdu-unlock-dialog.blp:48` |
| `Adw.PreferencesGroup` | `gdu-benchmark-dialog.blp:55,97,111,115` `gdu-change-passphrase-dialog.blp:50` `gdu-create-confirm-page.blp:8,20` `gdu-create-disk-image-dialog.blp:34` `gdu-create-filesystem-page.blp:8,16,54,109` `gdu-create-other-page.blp:6,10` `gdu-create-partition-page.blp:11,17,43,54` `gdu-create-password-page.blp:6` `gdu-drive-view.blp:6,10,16,40` `gdu-edit-filesystem-dialog.blp:39` `gdu-edit-partition-dialog.blp:35,56` `gdu-encryption-options-dialog.blp:41,48,62` `gdu-format-disk-dialog.blp:38,76` `gdu-image-mounter-window.blp:31` `gdu-mount-options-dialog.blp:42,50,73,96,131,141` `gdu-new-disk-image-dialog.blp:34,76` `gdu-resize-volume-dialog.blp:39,51,77,96` `gdu-restore-disk-image-dialog.blp:42` `gdu-take-ownership-dialog.blp:9` `gdu-unlock-dialog.blp:44,80` |
| `Adw.PreferencesPage` | `gdu-benchmark-dialog.blp:50,110` `gdu-change-passphrase-dialog.blp:49` `gdu-create-confirm-page.blp:7` `gdu-create-disk-image-dialog.blp:33` `gdu-create-filesystem-page.blp:7` `gdu-create-other-page.blp:5` `gdu-create-partition-page.blp:10` `gdu-create-password-page.blp:5` `gdu-drive-view.blp:5,39` `gdu-edit-filesystem-dialog.blp:38` `gdu-edit-partition-dialog.blp:34` `gdu-encryption-options-dialog.blp:40` `gdu-format-disk-dialog.blp:37` `gdu-mount-options-dialog.blp:41` `gdu-new-disk-image-dialog.blp:33` `gdu-resize-volume-dialog.blp:33` `gdu-restore-disk-image-dialog.blp:41` `gdu-unlock-dialog.blp:44` |
| `Adw.ShortcutsDialog` | `shortcuts-dialog.blp:4` |
| `Adw.ShortcutsItem` | `shortcuts-dialog.blp:8,13,18,23,32,37,42,51,56,61,66,71,80,85` |
| `Adw.ShortcutsSection` | `shortcuts-dialog.blp:5,29,48,77` |
| `Adw.Spinner` | `gdu-mount-options-dialog.blp:157` `gdu-resize-volume-dialog.blp:122` |
| `Adw.SpinRow` | `gdu-benchmark-dialog.blp:56,69,83` `gdu-create-partition-page.blp:18,30` `gdu-new-disk-image-dialog.blp:62` `gdu-resize-volume-dialog.blp:78,84` |
| `Adw.StatusPage` | `gdu-image-mounter-window.blp:19` `gdu-window.blp:70` |
| `Adw.SwitchRow` | `gdu-benchmark-dialog.blp:98` `gdu-create-filesystem-page.blp:110` `gdu-create-other-page.blp:11` `gdu-create-partition-page.blp:46` `gdu-encryption-options-dialog.blp:42,65,70` `gdu-mount-options-dialog.blp:43,54,60,66` |
| `Adw.ToastOverlay` | `gdu-drive-view.blp:38` `gdu-image-mounter-window.blp:18` |
| `Adw.ToolbarView` | `gdu-benchmark-dialog.blp:7` `gdu-change-passphrase-dialog.blp:9` `gdu-create-disk-image-dialog.blp:8` `gdu-disk-settings-dialog.blp:9` `gdu-drive-view.blp:34` `gdu-edit-filesystem-dialog.blp:7` `gdu-edit-partition-dialog.blp:8` `gdu-encryption-options-dialog.blp:9` `gdu-format-disk-dialog.blp:8` `gdu-format-volume-dialog.blp:5` `gdu-image-mounter-window.blp:10` `gdu-mount-options-dialog.blp:8` `gdu-new-disk-image-dialog.blp:8` `gdu-resize-volume-dialog.blp:7` `gdu-restore-disk-image-dialog.blp:8` `gdu-unlock-dialog.blp:7` `gdu-window.blp:17,48` `gdu-ata-smart-dialog.ui:6` |
| `Adw.WindowTitle` | `gdu-benchmark-dialog.blp:39` `gdu-change-passphrase-dialog.blp:22` `gdu-disk-settings-dialog.blp:24` `gdu-format-disk-dialog.blp:21` `gdu-window.blp:20` |

### GTK Widgets (18 classes — `.ui` only for Gtk-prefixed, `.blp` for implicit)

| Widget | Form | Files & Lines |
|---|---|---|
| `GtkBox` | `.ui`: `GtkBox` | `erase-multiple-disks-dialog.ui:12` `gdu-ata-smart-dialog.ui:11,21,199,224` |
| | `.blp`: `Box` | 26 occurrences across most files |
| `GtkButton` | `.ui`: `GtkButton` | `erase-multiple-disks-dialog.ui:21,30` `gdu-ata-smart-dialog.ui:241,248` |
| | `.blp`: `Button` | 17 occurrences (benchmark, format, resize, unlock, etc.) |
| `GtkButtonBox` | `.ui`: `GtkButtonBox` | `erase-multiple-disks-dialog.ui:17` |
| `GtkCheckButton` | `.blp`: `CheckButton` | 13 occurrences (filesystem type selection, image mounter actions) |
| `GtkComboBox` | `.ui`: `GtkComboBox` | `erase-multiple-disks-dialog.ui:67` |
| `GtkComboBoxText` | `.blp`: `ComboBoxText` | `gdu-disk-settings-dialog.blp:304` (write-cache) |
| `GtkDialog` | `.ui`: `GtkDialog` | `erase-multiple-disks-dialog.ui:4` |
| `GtkGrid` | `.ui`: `GtkGrid` | `erase-multiple-disks-dialog.ui:42` `gdu-ata-smart-dialog.ui:23` |
| | `.blp`: `Grid` | `gdu-drive-header.blp:8` `gdu-disk-settings-dialog.blp:243` |
| `GtkImage` | `.blp`: `Image` | 16 occurrences (`gdu-block-row.blp`, `gdu-drive-header.blp`) |
| `GtkLabel` | `.ui`: `GtkLabel` | `erase-multiple-disks-dialog.ui:48` `gdu-ata-smart-dialog.ui:28,41,53,66,78,91,103,116,129,142,154,166,188` |
| | `.blp`: `Label` | 35 occurrences across most files |
| `GtkLevelBar` | `.blp`: `LevelBar` | `gdu-change-passphrase-dialog.blp:72` `gdu-block-row.blp:38` |
| `GtkListBox` | `.blp`: `ListBox` | `gdu-window.blp:34` `gdu-drive-view.blp:20` |
| `GtkMenuButton` | `.ui`: `GtkMenuButton` | `gdu-ata-smart-dialog.ui:230` |
| | `.blp`: `MenuButton` | 2 occurrences (drive header, sidebar) |
| `GtkNotebook` | `.blp`: `Notebook` | `gdu-disk-settings-dialog.blp:35` |
| `GtkOverlay` | `.blp`: `Overlay` | `gdu-mount-options-dialog.blp:40` `gdu-resize-volume-dialog.blp:32` |
| `GtkPopover` | `.blp`: `Popover` | 8 occurrences (info popovers on action rows) |
| `GtkScale` | `.blp`: `Scale` | 5 occurrences (partition size, resize, disk settings) |
| `GtkScrolledWindow` | `.ui`: `GtkScrolledWindow` | `gdu-ata-smart-dialog.ui:205` |
| | `.blp`: `ScrolledWindow` | `gdu-window.blp:31` |
| `GtkSpinner` | `.blp`: `Spinner` | 3 occurrences (block row, mount options, resize) |
| `GtkStack` | `.blp`: `Stack` | 3 occurrences (benchmark, format-volume, window) |
| `GtkStackPage` | `.blp`: `StackPage` | 4 occurrences (in Stack children) |
| `GtkSwitch` | `.ui`: `GtkSwitch` | `gdu-ata-smart-dialog.ui:180` |
| | `.blp`: `Switch` | 8 occurrences (various toggle rows) |
| `GtkToggleButton` | `.blp`: `ToggleButton` | `gdu-window.blp:57` (sidebar toggle) |
| `GtkTreeSelection` | `.ui`: `GtkTreeSelection` | `gdu-ata-smart-dialog.ui:213` |
| `GtkTreeView` | `.ui`: `GtkTreeView` | `gdu-ata-smart-dialog.ui:209` |

### Custom Gdu Widgets (19 classes)

| Widget | File & Line |
|---|---|
| `GduBenchmarkDialog` | `gdu-benchmark-dialog.blp:4` |
| `GduBenchmarkGraph` | `gdu-benchmark-dialog.blp:112` |
| `GduBlockRow` | `gdu-block-row.blp:4` |
| `GduChangePassphraseDialog` | `gdu-change-passphrase-dialog.blp:4` |
| `GduComboRow` | `gdu-restore-disk-image-dialog.blp:73` |
| `GduCreateConfirmPage` | `gdu-create-confirm-page.blp:4` |
| `GduCreateDiskImageDialog` | `gdu-create-disk-image-dialog.blp:4` |
| `GduCreateFilesystemPage` | `gdu-create-filesystem-page.blp:4` |
| `GduCreateOtherPage` | `gdu-create-other-page.blp:4` |
| `GduCreatePartitionPage` | `gdu-create-partition-page.blp:4` |
| `GduCreatePasswordPage` | `gdu-create-password-page.blp:4` |
| `GduDriveHeader` | `gdu-drive-header.blp:4` |
| `GduDriveRow` | `gdu-drive-row.blp:4` |
| `GduDriveView` | `gdu-drive-view.blp:4` |
| `GduEditFilesystemDialog` | `gdu-edit-filesystem-dialog.blp:4` |
| `GduEditPartitionDialog` | `gdu-edit-partition-dialog.blp:4` |
| `GduEncryptionOptionsDialog` | `gdu-encryption-options-dialog.blp:4` |
| `GduFormatDiskDialog` | `gdu-format-disk-dialog.blp:4` |
| `GduFormatVolumeDialog` | `gdu-format-volume-dialog.blp:4` |
| `GduMountOptionsDialog` | `gdu-mount-options-dialog.blp:4` |
| `GduNewDiskImageDialog` | `gdu-new-disk-image-dialog.blp:4` |
| `GduResizeVolumeDialog` | `gdu-resize-volume-dialog.blp:4` |
| `GduRestoreDiskImageDialog` | `gdu-restore-disk-image-dialog.blp:4` |
| `GduSpaceAllocationBar` | `gdu-drive-view.blp:13` |
| `GduUnlockDialog` | `gdu-unlock-dialog.blp:4` |
| `GduWindow` | `gdu-window.blp:4` |

---

## 2. Patterns Demonstrated

### A. Dialog Patterns
| Pattern | Description |
|---|---|
| **`Adw.Dialog` + `Adw.ToolbarView`** | Every modal dialog follows the same structure: `Adw.Dialog` → `Adw.ToolbarView` → `[top] Adw.HeaderBar` with start/end buttons + `content:` → `Adw.PreferencesPage`. Used in 16 files. |
| **`Adw.AlertDialog`** | Confirmation dialogs with `extra-child` for custom content. `gdu-take-ownership-dialog.blp` |
| **`content-width` / `content-height`** | Dimensional constraints on dialogs. `gdu-format-disk-dialog.blp:5` `gdu-change-passphrase-dialog.blp:5-6` |
| **Title with `WindowTitle`** | Dialogs set a `title-widget: Adw.WindowTitle` in the header bar. `gdu-benchmark-dialog.blp:39` |
| **Inline menu model** | `menu { section { item(...) } }` defined at file bottom. `gdu-drive-header.blp:109-142` |

### B. Preferences Page Layout Patterns
| Pattern | Description |
|---|---|
| **`Adw.PreferencesPage` + `Adw.PreferencesGroup`** | Core layout for all settings dialogs. Groups with titles, rows with standard GNOME widgets. |
| **`Adw.ActionRow` as clickable row** | With `activatable-widget` and `[prefix] CheckButton` (radio group). `gdu-format-disk-dialog.blp:79-93` |
| **`Adw.ActionRow` as read-only property** | With `styles ["property"]` and `subtitle-selectable: true`. `gdu-drive-view.blp:41-44` |
| **`Adw.ActionRow` + `[suffix] Switch`** | Toggle row with `activatable-widget` pointing to the switch. `gdu-format-disk-dialog.blp:39-53` |
| **`Adw.ActionRow` + `[suffix] Button`** | Action row with copy/file-chooser button in suffix. `gdu-drive-view.blp:46-48` |
| **Contextual help via `[suffix] MenuButton` + `Popover`** | Info icon button opening a popover with explanatory text. `gdu-edit-partition-dialog.blp:62-101` |
| **`styles ["property"]`** | Applies "property" style class to rows showing key-value data. Used in 8+ files. |

### C. Form Input Patterns
| Pattern | Description |
|---|---|
| **`Adw.EntryRow`** | Text field with `title:`, `apply` signal, `notify::text`. `gdu-create-filesystem-page.blp:9` |
| **`Adw.PasswordEntryRow`** | Password field. Three-field pattern (current/new/confirm). `gdu-change-passphrase-dialog.blp:51-63` |
| **`Adw.SwitchRow`** | Toggle switch with `title:` and `subtitle:`. `gdu-encryption-options-dialog.blp:42` |
| **`Adw.SpinRow`** | Numeric spinner with `Adw.PreferencesGroup` + `Adjustment`. `gdu-benchmark-dialog.blp:56-68` |
| **`Adw.ComboRow` + `StringList` model** | Dropdown with inline model. `gdu-resize-volume-dialog.blp:97-117` |
| **`Adw.ButtonRow`** | Destructive row with `activated` signal. `gdu-mount-options-dialog.blp:144-151` |
| **LUKS password strength** | `LevelBar` with offsets + `Label` for hints after password entry. `gdu-change-passphrase-dialog.blp:72-86` |

### D. Navigation & Structural Patterns
| Pattern | Description |
|---|---|
| **`Adw.OverlaySplitView`** | Sidebar + content adaptive split. `gdu-window.blp:14` |
| **`Adw.Breakpoint`** | Responsive collapse at `max-width: 682sp`. `gdu-window.blp:5-13` |
| **`Adw.ToastOverlay`** | Wrapping content for toast notifications. `gdu-drive-view.blp:38` |
| **`GtkStack` + `GtkStackPage`** | Multi-page switching (options/results, wizard steps). `gdu-benchmark-dialog.blp:47-149` |
| **`Adw.StatusPage`** | Empty-state page with icon + title. `gdu-window.blp:70` |
| **`Adw.Clamp`** | Content width clamping with `maximum-size` + `tightening-threshold`. `gdu-image-mounter-window.blp:23` |
| **`Adw.MultiLayoutView` + `Adw.Layout`** | Adaptive layout switching (horizontal ↔ vertical). `gdu-drive-header.blp:5-62` |
| **`Adw.ExpanderRow`** | Expandable row for block device details. `gdu-block-row.blp:4` |
| **`GtkNotebook`** | Tabbed settings (Standby/APM/AAM/Write Cache). `gdu-disk-settings-dialog.blp:35` |
| **`GtkListBox`** | Navigation sidebar (`styles ["navigation-sidebar"]`) and boxed-list partitions. `gdu-window.blp:34` |
| **`GtkScale` + `Adjustment`** | Slider for partition sizing. `gdu-create-partition-page.blp:13-15` |

### E. Action & Feedback Patterns
| Pattern | Description |
|---|---|
| **`suggested-action` / `destructive-action` styles** | Buttons with style classes. Format = destructive, Done = suggested. `gdu-format-disk-dialog.blp:26` |
| **`bind … inverted`** | Bidirectional toggle between close/cancel button visibility. `gdu-benchmark-dialog.blp:10` |
| **`sensitive: bind … inverted`** | Disable groups when a master switch is off. `gdu-encryption-options-dialog.blp:50` |
| **`Adw.Banner`** | Warning/info banners in dialogs and forms. `gdu-create-confirm-page.blp:9` `gdu-unlock-dialog.blp:36` |
| **`Adw.Spinner` overlay** | Transparent spinner over content during background work. `gdu-mount-options-dialog.blp:157` |
| **`notify::active` signals** | Trigger callbacks when switches change. `gdu-create-filesystem-page.blp:112` |
| **`apply` signal** | Used on EntryRow for deferred validation. `gdu-create-filesystem-page.blp:11` |

### F. Legacy `.ui` Patterns
| Pattern | Description |
|---|---|
| **`GtkTreeView` in `GtkScrolledWindow`** | SMART attributes table. `gdu-ata-smart-dialog.ui:199-213` |
| **`GtkGrid` key-value layout** | Row/column manual grid for label-value pairs. `gdu-ata-smart-dialog.ui:23-175` |
| **`GtkMenuButton` with `menu_model`** | Menu button referencing a GMenu model. `gdu-ata-smart-dialog.ui:230` |

---

## 3. Best Code Examples to Link

### Top-level Window with Sidebar
**File:** `gdu-window.blp:4-79`  
Demonstrates: `Adw.ApplicationWindow`, `Adw.OverlaySplitView`, `Adw.Breakpoint` for responsive collapse, `GtkListBox` navigation sidebar, `Adw.StatusPage` empty state, `GtkStack` for page switching, `GtkToggleButton` sidebar toggle, menu model definitions.

### Full Preferences Dialog
**File:** `gdu-format-disk-dialog.blp:4-114`  
Demonstrates: `Adw.Dialog` ↔ `Adw.ToolbarView` ↔ `Adw.HeaderBar` pattern, `Adw.WindowTitle`, `Adw.PreferencesPage`, `Adw.ActionRow` with `activatable-widget`, `CheckButton` radio groups, `[suffix] Switch` toggles, `[suffix] MenuButton` popover info, `destructive-action` and `suggested-action` styles.

### Multi-step Wizard Dialog
**File:** `gdu-benchmark-dialog.blp:4-149`  
Demonstrates: `GtkStack` with `GtkStackPage` (options → results), `Adw.SpinRow` with `Adjustment`, `Adw.SwitchRow`, `Adw.ActionRow` with `styles ["property"]` for read-only results, `bind … inverted` for button visibility, crossfade `transition-type`.

### Form with Validation
**File:** `gdu-change-passphrase-dialog.blp:4-87`  
Demonstrates: Three `Adw.PasswordEntryRow` fields, `GtkLevelBar` with strength offsets, `Adw.Banner` with `use-markup`, `notify::text` signal for validation on every keystroke, `styles ["dim-label", "explanation-label"]`.

### Adaptive Layout (Horizontal ↔ Vertical)
**File:** `gdu-drive-header.blp:4-107`  
Demonstrates: `Adw.MultiLayoutView` with two `Adw.Layout` variants, `Adw.LayoutSlot` with `id:` referencing slot children, conditional alignment via `bind $get_alignment_from_layout_name()`.

### AlertDialog with Custom Content
**File:** `gdu-take-ownership-dialog.blp:1-47`  
Demonstrates: `Adw.AlertDialog` with `heading:`, `extra-child:` → `Adw.PreferencesGroup` → `Adw.ActionRow`, `responses` with `suggested` flag, `Popover` info.

### Row with Radio Buttons
**File:** `gdu-create-filesystem-page.blp:57-104`  
Demonstrates: `Adw.ActionRow` with `activatable-widget` + `[prefix] CheckButton` groups using `action-name`/`action-target`. Set of 4 filesystem type choices as mutually exclusive CheckButtons.

### Unlock Dialog (End-to-End Auth)
**File:** `gdu-unlock-dialog.blp:4-142`  
Demonstrates: Multiple `Adw.Banner` for keyring/veracrypt warnings, `Adw.PasswordEntryRow`, `Adw.EntryRow` for PIM, `Adw.ActionRow` with `[suffix] Button` for keyfile chooser, `visible: bind`, `Adw.PreferencesGroup` with conditional visibility, inline `Popover` definitions with `Label`.

### Drive Settings (Legacy Notebook)
**File:** `gdu-disk-settings-dialog.blp:4-350`  
Demonstrates: `GtkNotebook` with 4 tabs (Standby, APM, AAM, Write Cache), `GtkScale` with `Adjustment`, `GtkSwitch`, `GtkComboBoxText`, `GtkGrid` for label-value layouts, `styles ["heading", "caption", "dim-label"]`.

### SMART Dialog (Legacy `.ui`)
**File:** `gdu-ata-smart-dialog.ui:1-270`  
Demonstrates: `AdwDialog` with `AdwToolbarView` + `AdwHeaderBar`, `GtkTreeView` + `GtkScrolledWindow` for table data, `GtkGrid` for status K/V labels, `GtkSwitch`, `GtkMenuButton` with `menu_model`, manual row/column layout.

### Shortcuts Dialog
**File:** `shortcuts-dialog.blp:1-86`  
Demonstrates: `Adw.ShortcutsDialog` → `Adw.ShortcutsSection` → `Adw.ShortcutsItem` with `title:` and `accelerator:`.

### Image Mounter Window (Status Page + Radio Actions)
**File:** `gdu-image-mounter-window.blp:4-139`  
Demonstrates: `Adw.ApplicationWindow`, `Adw.ToastOverlay`, `Adw.StatusPage` with `child:` content, `Adw.Clamp`, `Adw.PreferencesGroup` with `Adw.ActionRow` + `[prefix] CheckButton` radio groups, `bind $window_title()`, `bind $button_label()`, `styles ["pill", "suggested-action"]`.

### Expander Row with Property Rows
**File:** `gdu-block-row.blp:4-109`  
Demonstrates: `Adw.ExpanderRow` with `[prefix]` + `[suffix]` slots, `Adw.Clamp` for level bar, `GtkLevelBar`, `GtkSpinner`, `Adw.ActionRow` with `styles ["property"]` + `subtitle-selectable`, menu model with submenu.
