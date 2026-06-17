# GNOME Intent → Implementation Map

> Maps user/agent goals to the correct GNOME pattern, the widget, and a **directly readable** code example.  
> All file paths are relative to repo root — use `read` tool directly.  
> **34 apps audited** (28 core + 6 dev tools: Boxes, Builder, D-Spy, Dconf Editor, Manuals, Sysprof).

---

## Intent → Pattern → Best Implementation

### App Window

| Intent | Widget | Best Code Example |
|--------|--------|-------------------|
| Standard window | `AdwApplicationWindow` | `sources/decibels/data/window.blp:4` |
| Window + sidebar | `AdwOverlaySplitView` | `sources/gnome-disk-utility/src/resources/ui/gdu-window.blp:14` |
| Window + adaptive multi-layout | `AdwMultiLayoutView` | `sources/gnome-disk-utility/src/resources/ui/gdu-drive-header.blp:5` |
| Tabbed documents | `AdwTabView` + `AdwTabBar` | `sources/gnome-text-editor/src/editor-window.ui` |
| Tabbed browser (TabView + TabOverview) | `AdwTabView` + `AdwTabBar` + `AdwTabOverview` + `AdwTabButton` | `sources/manuals/src/manuals-window.ui:137-400` |
| Nested split views (3-pane) | `AdwOverlaySplitView` ×2 nested | `sources/dspy/src/dspy-window.ui:42,48` |
| Wide/narrow layout swap | `AdwMultiLayoutView` + `AdwLayout` + `AdwLayoutSlot` | `sources/manuals/src/manuals-window.ui:63-400` |
| Previewer pop-out | `AdwApplicationWindow` (secondary) | `sources/papers/previewer/pps-previewer-window.blp:10` |
| Floating recording pad | `AdwWindow` + `GtkWindowHandle` | `sources/sysprof/src/sysprof/sysprof-recording-pad.ui:3-12` |

### Header Bar

| Intent | Widget | Best Code Example |
|--------|--------|-------------------|
| Simple title | `AdwHeaderBar` + `AdwWindowTitle` | `sources/gnome-font-viewer/src/font-view-window.ui:36` |
| Title + subtitle | `GtkCenterBox` in `title-widget` | `sources/gnome-text-editor/src/editor-window.ui` |
| ViewSwitcher in header | `AdwViewSwitcher` as `title-widget` | `sources/gnome-control-center/panels/mouse/cc-mouse-panel.blp` |
| ViewSwitcherBar in header (bottom) | `AdwViewSwitcherBar` | `sources/sysprof/src/sysprof/sysprof-counters-section.ui:47` |
| Breadcrumb in header | Custom widget as `title-widget` | `sources/gnome-baobab/data/ui/baobab-main-window.ui:56` |
| Split button in header | `AdwSplitButton` | `sources/builder/src/libide/gui/ide-run-button.ui:6` |
| Overlay chrome (video) | `Overlay` with floating buttons | `sources/showtime/showtime/gtk/window.blp:127` |
| Flat buttons | `.flat` CSS class | `sources/simple-scan/data/ui/app-window.ui:199` |
| Suggested action | `.suggested-action` | `sources/gnome-disk-utility/src/resources/ui/gdu-format-disk-dialog.blp:26` |

### Page Navigation

| Intent | Widget | Best Code Example |
|--------|--------|-------------------|
| 3-5 flat tabs | `AdwViewStack` + `AdwViewSwitcher` | `sources/gnome-control-center/panels/mouse/cc-mouse-panel.blp` |
| Tab bar (browser-style) | `AdwTabView` + `AdwTabBar` | `sources/manuals/src/manuals-window.ui:137,324` |
| Tab overview (narrow screen) | `AdwTabOverview` + `AdwTabButton` | `sources/manuals/src/manuals-window.ui:344,394` |
| Push/pop nav | `AdwNavigationView` + `AdwNavigationPage` | `sources/gnome-font-viewer/src/font-view-window.ui:29` |
| Sidebar + content | `AdwNavigationSplitView` | `sources/nautilus/src/resources/ui/nautilus-window.ui` |
| Stack switching (loading/content/error) | `GtkStack` + `GtkStackPage` | `sources/decibels/data/window.blp:11` |
| Stack with inline ViewSwitcherBar | `AdwViewStack` + `AdwViewSwitcherBar` | `sources/sysprof/src/sysprof/sysprof-counters-section.ui:30-47` |
| Carousel onboarding | `AdwCarousel` + `AdwCarouselIndicatorDots` | `sources/gnome-tour/data/resources/ui/paginator.ui` |
| Wizard/assistant | `GtkStack` slide + Back/Forward | `sources/gnome-initial-setup/gnome-initial-setup/gis-assistant.ui` |
| Inline tab switcher | `AdwInlineViewSwitcher` | `sources/papers/shell/resources/pps-sidebar.blp:12` |

### Preferences / Settings

| Intent | Widget | Best Code Example |
|--------|--------|-------------------|
| Full preferences dialog | `AdwPreferencesDialog` | `sources/gnome-disk-utility/src/resources/ui/gdu-format-disk-dialog.blp:4` |
| Prefs as nav page | `AdwNavigationPage` + `AdwPreferencesPage` | `sources/gnome-font-viewer/src/font-view-window.ui:214` |
| Prefs with search | `search-enabled: true` | `sources/nautilus/src/resources/ui/nautilus-preferences-dialog.blp` |
| Radio group (CheckButton prefix) | `AdwActionRow` + `[prefix] CheckButton` | `sources/gnome-disk-utility/src/resources/ui/gdu-create-filesystem-page.blp:57` |
| Toggle group (AdwToggle) | `AdwToggleGroup` + `AdwToggle` | `sources/simple-scan/data/ui/preferences-dialog.ui:31` |
| Destructive ButtonRow | `AdwButtonRow` + `.destructive-action` | `sources/gnome-calendar/src/gui/event-editor/gcal-event-editor-dialog.blp` |

### Form Inputs

| Intent | Widget | Best Code Example |
|--------|--------|-------------------|
| Text entry row | `AdwEntryRow` | `sources/gnome-disk-utility/src/resources/ui/gdu-create-filesystem-page.blp:9` |
| Text entry with no-emoji hint | `AdwEntryRow` + `input-hints="no-emoji"` | `sources/dspy/src/dspy-window.ui:1412` |
| Password entry | `AdwPasswordEntryRow` | `sources/gnome-disk-utility/src/resources/ui/gdu-change-passphrase-dialog.blp:51` |
| Numeric spinner | `AdwSpinRow` + `Adjustment` | `sources/gnome-disk-utility/src/resources/ui/gdu-benchmark-dialog.blp:56` |
| Dropdown/combo | `AdwComboRow` + `StringList` | `sources/gnome-disk-utility/src/resources/ui/gdu-resize-volume-dialog.blp:97` |
| Binary toggle | `AdwSwitchRow` | `sources/gnome-disk-utility/src/resources/ui/gdu-encryption-options-dialog.blp:42` |
| ActionRow with toggle Switch suffix | `AdwActionRow` + `activatable-widget` + `GtkSwitch` suffix | `sources/sysprof/src/sysprof/sysprof-greeter.ui:262` |
| Color picker | `ColorDialogButton` | `sources/papers/shell/resources/pps-annotation-properties-dialog.blp:18` |
| Font picker | `FontDialogButton` | `sources/papers/shell/resources/pps-document-view.blp` (inline) |
| Slider/scale with marks | `GtkScale` + `Adjustment` | `sources/simple-scan/data/ui/preferences-dialog.ui:99` |
| Search entry | `GtkSearchEntry` | `sources/gnome-font-viewer/src/font-view-window.ui:44` |
| Search entry with bidirectional filter binding | `GtkSearchEntry` + `<binding>` to `GtkStringFilter.search` | `sources/dspy/src/dspy-window.ui:192` |

### Lists & Grids

| Intent | Widget | Best Code Example |
|--------|--------|-------------------|
| Simple static list | `GtkListBox` + `.boxed-list` | `sources/gnome-disk-utility/src/resources/ui/gdu-window.blp:34` |
| Rich list rows (grid layout) | `GtkListBoxRow` template | `sources/gnome-baobab/data/ui/baobab-location-row.ui:3` |
| Column view (sortable) | `GtkColumnView` + `GtkSignalListItemFactory` | `sources/gnome-baobab/data/ui/baobab-folder-display.ui:7` |
| Column view (inline builder factories) | `GtkColumnView` + `GtkBuilderListItemFactory` (inline) | `sources/sysprof/src/sysprof/sysprof-cpu-section.ui:139` |
| Grid view (tiles) | `GtkGridView` + `GtkBuilderListItemFactory` | `sources/gnome-font-viewer/src/font-view-window.ui:63` |
| Flow box (wrapping cards) | `GtkFlowBox` + homogeneous | `sources/gnome-connections/src/ui/collection-view.ui:32` |
| List view (signals) | `GtkListView` + `GtkSignalListItemFactory` | `sources/papers/shell/resources/pps-find-sidebar.blp:30` |
| List view (inline builder factories) | `GtkListView` + `GtkBuilderListItemFactory` (inline CDATA) | `sources/dspy/src/dspy-window.ui:112-156` |
| List view with section headers | `GtkListView` + `header-factory` → `GtkListHeader` | `sources/dspy/src/dspy-window.ui:567-584` |
| Tree list (expandable rows) | `GtkTreeExpander` + `GtkColumnView` | `sources/gnome-baobab/data/ui/baobab-file-cell.ui:5` |
| Inscription cells (text-overflow) | `GtkInscription` in column/list cells | `sources/sysprof/src/sysprof/sysprof-cpu-section.ui:206` |
| Single selection | `GtkSingleSelection` | `sources/gnome-baobab/data/ui/baobab-main-window.ui:103` |
| Multi selection | `GtkMultiSelection` | `sources/papers/shell/resources/pps-sidebar-attachments.blp:29` |
| No selection | `GtkNoSelection` | `sources/gnome-baobab/data/ui/baobab-folder-display.ui:18` |

### User Feedback

| Intent | Widget | Best Code Example |
|--------|--------|-------------------|
| Toast + undo | `AdwToast` + `AdwToastOverlay` | `sources/loupe/src/widgets/image_window.rs` (trash+Undo) |
| Persistent banner | `AdwBanner` | `sources/gnome-baobab/data/ui/baobab-main-window.ui:80` |
| Empty state | `AdwStatusPage` | `sources/decibels/data/empty.blp:11` |
| Error state | `AdwStatusPage` | `sources/decibels/data/error.blp:11` |
| Loading (inline spinner) | `AdwSpinner` | `sources/decibels/data/player.blp` |
| Loading with progress | `AdwSpinner` + `GtkProgressBar` | `sources/papers/shell/resources/pps-loader-view.blp:25` |
| Unsaved changes warning | `GtkInfoBar` (warning, with action buttons) | `sources/gnome-text-editor/src/editor-info-bar.ui` |
| Operation progress | `GtkInfoBar` + `GtkProgressBar` | `sources/papers/shell/resources/pps-progress-message-area.blp:5` |
| Info popover (header-suffix) | `GtkMenuButton` + `GtkPopover` + `GtkLabel` | `sources/gnome-disk-utility/src/resources/ui/gdu-edit-partition-dialog.blp:62` |
| Confirmation dialog | `AdwAlertDialog` | `sources/papers/shell/resources/pps-document-view.blp:243` |
| Animated reveal | `GtkRevealer` | `sources/simple-scan/data/ui/drivers-dialog.ui:59` |

### Modal Dialogs

| Intent | Widget | Best Code Example |
|--------|--------|-------------------|
| Standard modal | `AdwDialog` + `AdwToolbarView` | `sources/gnome-disk-utility/src/resources/ui/gdu-benchmark-dialog.blp:4` |
| Alert / confirmation | `AdwAlertDialog` | `sources/papers/shell/resources/pps-document-view.blp:243` |
| Multi-step wizard dialog | `GtkStack` inside `AdwDialog` | `sources/gnome-disk-utility/src/resources/ui/gdu-benchmark-dialog.blp:47` |
| Task panel (side sheet) | `AdwDialog` | `sources/gnome-disk-utility/src/resources/ui/gdu-drive-view.blp:30` |
| Password unlock dialog | `AdwDialog` + `AdwPasswordEntryRow` + `AdwBanner` | `sources/gnome-disk-utility/src/resources/ui/gdu-unlock-dialog.blp:4` |
| Form dialog (legacy) | `GtkWindow` + `AdwHeaderBar` as `titlebar` | `sources/simple-scan/data/ui/authorize-dialog.ui:4` |
| Disk image mounter | `AdwApplicationWindow` + `AdwStatusPage` + radio rows | `sources/gnome-disk-utility/src/resources/ui/gdu-image-mounter-window.blp:4` |

### Adaptive Layout

| Intent | Widget | Best Code Example |
|--------|--------|-------------------|
| Simple property changes | `AdwBreakpointBin` + `AdwBreakpoint` | `sources/gnome-baobab/data/ui/baobab-main-window.ui:157` |
| Full layout swap | `AdwMultiLayoutView` + `AdwLayout` | `sources/gnome-disk-utility/src/resources/ui/gdu-drive-header.blp:5` |
| Wide/narrow with AdwMultiLayoutView | `AdwMultiLayoutView` + `AdwLayout` + `AdwLayoutSlot` (named slots) | `sources/manuals/src/manuals-window.ui:262-400` |
| Sidebar collapse | `AdwBreakpoint` → `collapsed: true` | `sources/gnome-disk-utility/src/resources/ui/gdu-window.blp:5` |
| Two-tier breakpoints (nested splits) | `AdwBreakpoint` ×2 (700sp overlay, 500sp split) | `sources/dspy/src/dspy-window.ui:29-40` |
| ViewSwitcher → ViewSwitcherBar | `AdwBreakpoint` (500sp) | `sources/gnome-control-center/panels/mouse/cc-mouse-panel.blp` |
| Narrow sidebar (BottomSheet) | `AdwBottomSheet` | `sources/gnome-text-editor/src/editor-window.ui` |
| Content width clamping | `AdwClamp` | `sources/decibels/data/player.blp:13` |

### Drag & Drop

| Intent | Widget | Best Code Example |
|--------|--------|-------------------|
| File drop target | `GtkDropTarget` + `actions="copy"` | `sources/gnome-baobab/data/ui/baobab-main-window.ui:244` |
| Drop overlay feedback | `Overlay` + `Revealer` + `AdwStatusPage` | `sources/decibels/data/drag-overlay.blp:10` |

### Search & Filtering

| Intent | Widget | Best Code Example |
|--------|--------|-------------------|
| Search bar (toggleable) | `GtkSearchBar` + `GtkSearchEntry` | `sources/gnome-connections/src/ui/collection-view.ui:19` |
| Inline search entry | `GtkSearchEntry` | `sources/gnome-font-viewer/src/font-view-window.ui:44` |
| Search with find options | `GtkSearchEntry` + `GtkMenuButton` (options) | `sources/papers/shell/resources/pps-search-box.blp:4` |
| Filter → Sort → List pipeline | SearchEntry → StringFilter → SortListModel → View | `sources/gnome-font-viewer/src/font-view-window.ui:44-100` |
| Bidirectional search-filter binding | `GtkSearchEntry` + `bind-source`/`bind-property` to `GtkStringFilter.search` (sync-create|bidirectional) | `sources/dspy/src/dspy-window.ui:192` |
| Multi-field OR filter | `GtkAnyFilter` + `GtkStringFilter` ×N on different properties | `sources/sysprof/src/sysprof/sysprof-dbus-section.ui:82` |
| Boolean compound filter | `GtkBoolFilter` + `GtkEveryFilter` (invert, AND-chain) | `sources/manuals/src/manuals-bundle-dialog.ui:113-148` |
| Incremental filter for large data | `GtkFilterListModel` + `.set_incremental(True)` | `sources/sysprof/src/sysprof/sysprof-dbus-section.ui:79` |

### Keyboard Shortcuts

| Intent | Widget | Best Code Example |
|--------|--------|-------------------|
| Shortcuts window | `AdwShortcutsDialog` + `AdwShortcutsSection` | `sources/gnome-disk-utility/src/resources/ui/shortcuts-dialog.blp:4` |
| Inline shortcuts | `GtkShortcutController` + `GtkShortcut` | `sources/gnome-baobab/data/ui/baobab-main-window.ui:186` |
| App-wide accels | `gtk_application_set_accels_for_action()` | `sources/loupe/src/widgets/image_window.ui` (Ctrl+Q, Ctrl+comma) |

### Accessibility

| Intent | Best Code Example |
|--------|-------------------|
| Accessible labels on widgets | `sources/showtime/showtime/gtk/window.blp:150` |
| Mnemonic widgets (`use-underline` + `_`) | Every app — standard pattern |
| ATK child objects | `sources/gnome-connections/src/ui/topbar.ui:22` |
| Accessibility relations | `sources/gnome-initial-setup/gnome-initial-setup/pages/privacy/gis-privacy-page.ui` |

### CSS / Styling

| Intent | Classes | Best Code Example |
|--------|---------|-------------------|
| Card tiles | `.card` | `sources/papers/shell/resources/pps-sidebar-thumbnails.blp` |
| Property rows (read-only key-value) | `styles ["property"]` + `subtitle-selectable` | `sources/gnome-disk-utility/src/resources/ui/gdu-drive-view.blp:41` |
| Dim secondary text | `.dim-label` + `.caption` | `sources/gnome-baobab/data/ui/baobab-location-row.ui:39` |
| Numeric aligned text | `.numeric` | `sources/gnome-baobab/data/ui/baobab-size-cell.ui` |
| Raised toolbar | `top-bar-style: raised` | `sources/gnome-baobab/data/ui/baobab-main-window.ui:54` |
| Circular icon backgrounds | `styles ["symbolic-circular"]` | `sources/gnome-baobab/data/ui/baobab-location-row.ui:12` |

---

## Component Usage Matrix

| Component | Apps Using | Best Code Example |
|-----------|-----------|-------------------|
| `AdwApplicationWindow` | **All 34** | `sources/decibels/data/window.blp` |
| `AdwToolbarView` | 28 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-window.blp:17` |
| `AdwHeaderBar` | 31 apps | `sources/gnome-font-viewer/src/font-view-window.ui:36` |
| `AdwPreferencesPage` | 15 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-format-disk-dialog.blp:4` |
| `AdwPreferencesGroup` | 18 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-format-disk-dialog.blp:37` |
| `AdwActionRow` | 16 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-format-disk-dialog.blp:39` |
| `AdwSwitchRow` | 9 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-encryption-options-dialog.blp:42` |
| `AdwComboRow` | 8 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-resize-volume-dialog.blp:97` |
| `AdwSpinRow` | 6 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-benchmark-dialog.blp:56` |
| `AdwEntryRow` | 8 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-create-filesystem-page.blp:9` |
| `AdwPasswordEntryRow` | 4 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-change-passphrase-dialog.blp:51` |
| `AdwExpanderRow` | 3 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-block-row.blp:4` |
| `AdwButtonRow` | 3 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-mount-options-dialog.blp:144` |
| `AdwViewStack` | 10 apps | `sources/papers/shell/resources/pps-window.blp:15` |
| `AdwViewSwitcher` | 6 apps | `sources/gnome-control-center/panels/mouse/cc-mouse-panel.blp` |
| `AdwViewSwitcherBar` | 6 apps | `sources/gnome-clocks/data/ui/window.ui` |
| `AdwNavigationView` | 5 apps | `sources/gnome-font-viewer/src/font-view-window.ui:29` |
| `AdwNavigationSplitView` | 4 apps | `sources/nautilus/src/resources/ui/nautilus-window.ui` |
| `AdwOverlaySplitView` | 7 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-window.blp:14` |
| `AdwMultiLayoutView` | 3 apps | `sources/manuals/src/manuals-window.ui:63` |
| `AdwCarousel` | 2 apps | `sources/gnome-tour/data/resources/ui/paginator.ui` |
| `AdwTabView` | 3 apps | `sources/manuals/src/manuals-window.ui:137` |
| `AdwTabBar` | 3 apps | `sources/manuals/src/manuals-window.ui:324` |
| `AdwTabOverview` | 1 app | `sources/manuals/src/manuals-window.ui:344` |
| `AdwTabButton` | 1 app | `sources/manuals/src/manuals-window.ui:394` |
| `AdwSplitButton` | 1 app | `sources/builder/src/libide/gui/ide-run-button.ui:6` |
| `AdwDialog` | 6 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-benchmark-dialog.blp:4` |
| `AdwAlertDialog` | 5 apps | `sources/papers/shell/resources/pps-document-view.blp:243` |
| `AdwToastOverlay` | 8 apps | `sources/loupe/src/widgets/window.ui` |
| `AdwStatusPage` | 15 apps | `sources/decibels/data/empty.blp:11` |
| `AdwBanner` | 5 apps | `sources/gnome-baobab/data/ui/baobab-main-window.ui:80` |
| `AdwBreakpointBin` | 6 apps | `sources/gnome-baobab/data/ui/baobab-main-window.ui:157` |
| `AdwBreakpoint` | 9 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-window.blp:5` |
| `AdwClamp` | 8 apps | `sources/decibels/data/player.blp:13` |
| `AdwSpinner` | 13 apps | (ubiquitous) |
| `AdwSpinnerPaintable` | 1 app | `sources/manuals/src/manuals-window.ui:83` |
| `AdwShortcutsDialog` | 10 apps | `sources/gnome-disk-utility/src/resources/ui/shortcuts-dialog.blp:4` |
| `AdwAboutDialog` | 4 apps | `sources/gnome-clocks/src/window.c` |
| `GtkColumnView` | 5 apps | `sources/gnome-baobab/data/ui/baobab-folder-display.ui:7` |
| `GtkListView` | 6 apps | `sources/papers/shell/resources/pps-find-sidebar.blp:30` |
| `GtkGridView` | 2 apps | `sources/gnome-font-viewer/src/font-view-window.ui:63` |
| `GtkFlowBox` | 5 apps | `sources/gnome-connections/src/ui/collection-view.ui:32` |
| `GtkListBox` | 11 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-window.blp:34` |
| `GtkPopover` | 10 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-edit-partition-dialog.blp:62` |
| `GtkSearchEntry` | 9 apps | `sources/gnome-font-viewer/src/font-view-window.ui:44` |
| `GtkRevealer` | 7 apps | `sources/simple-scan/data/ui/drivers-dialog.ui:59` |
| `GtkInfoBar` | 5 apps | `sources/gnome-text-editor/src/editor-info-bar.ui` |
| `GtkShortcutController` | 9 apps | `sources/gnome-baobab/data/ui/baobab-main-window.ui:186` |
| `GtkDropTarget` | 4 apps | `sources/gnome-baobab/data/ui/baobab-main-window.ui:244` |
| `GtkLevelBar` | 2 apps | `sources/gnome-baobab/data/ui/baobab-location-row.ui:65` |
| `GtkScale` | 4 apps | `sources/simple-scan/data/ui/preferences-dialog.ui:99` |
| `AdwToggleGroup` | 4 apps | `sources/simple-scan/data/ui/preferences-dialog.ui:31` |
| `AdwInlineViewSwitcher` | 1 app | `sources/papers/shell/resources/pps-sidebar.blp:12` |
| `AdwWindowTitle` | 11 apps | `sources/gnome-disk-utility/src/resources/ui/gdu-benchmark-dialog.blp:39` |
| `ColorDialogButton` | 1 app | `sources/papers/shell/resources/pps-annotation-properties-dialog.blp:18` |
| `FontDialogButton` | 1 app | `sources/papers/shell/resources/pps-document-view.blp` |
| `GtkTreeExpander` | 3 apps | `sources/gnome-baobab/data/ui/baobab-file-cell.ui:5` |
| `GtkSignalListItemFactory` | 5 apps | `sources/gnome-baobab/data/ui/baobab-folder-display.ui:62` |
| `GtkBuilderListItemFactory` | 6 apps | `sources/dspy/src/dspy-window.ui:112` |
| `GtkInscription` | 3 apps | `sources/sysprof/src/sysprof/sysprof-cpu-section.ui:206` |
| `GtkAnyFilter` | 1 app | `sources/sysprof/src/sysprof/sysprof-dbus-section.ui:82` |
| `GtkBoolFilter` | 1 app | `sources/manuals/src/manuals-bundle-dialog.ui:113` |
| `GtkEveryFilter` | 1 app | `sources/manuals/src/manuals-bundle-dialog.ui:121` |
| `GtkFilterListModel` | 4 apps | `sources/dspy/src/dspy-window.ui:218` |
| `GtkSortListModel` | 4 apps | `sources/dspy/src/dspy-window.ui:225` |
| `GtkCustomSorter` | 2 apps | `sources/dspy/src/dspy-window.ui:227` |
| `GtkNoSelection` | 5 apps | `sources/dspy/src/dspy-window.ui:105` |
| `GtkListHeader` | 2 apps | `sources/dspy/src/dspy-window.ui:573` |
| `GtkFlattenListModel` | 1 app | `sources/sysprof/src/sysprof/sysprof-cpu-section.ui:140` |
| `GtkMapListModel` | 1 app | `sources/sysprof/src/sysprof/sysprof-mark-chart.ui:23` |
| `GtkMultiSelection` | 3 apps | `sources/sysprof/src/sysprof/sysprof-cpu-section.ui:220` |
| `GtkWindowHandle` | 1 app | `sources/sysprof/src/sysprof/sysprof-recording-pad.ui:12` |
| `GtkEntry` | 6 apps | `sources/dspy/src/dspy-simple-popover.ui:24` |
| `GtkTextView` | 3 apps | `sources/dspy/src/dspy-window.ui:1298` |
| `GtkOverlay` | 6 apps | `sources/sysprof/src/sysprof/sysprof-window.ui:224` |
| `GtkStringFilter` | 4 apps | `sources/dspy/src/dspy-window.ui:219` |
| `GtkStringSorter` | 3 apps | `sources/dspy/src/dspy-window.ui:319` |
| `GtkNumericSorter` | 1 app | `sources/sysprof/src/sysprof/sysprof-processes-section.ui` |

---

## Framework Distribution

| Framework | Count | Examples |
|-----------|-------|----------|
| **C + GTK4 + libadwaita** | 22 | Settings, Files, Clocks, Software, Calendar, Disk Utility, Baobab, Simple Scan, Connections, Characters, Font Viewer, Logs, Maps, System Monitor, Decibels, Epiphany, Console, Music, **Builder**, **D-Spy**, **Manuals**, **Sysprof** |
| **Python + PyGObject** | 3 | Tavern, Showtime, Papers |
| **Rust + gtk4-rs** | 2 | Loupe, Tour |
| **Vala** | 2 | Calculator, **Dconf Editor** |
| **GJS (JavaScript)** | 1 | Weather |
| **Vala + GTK3 / libhandy (legacy)** | 2 | **Boxes**, Connections |
| **GTK3 / libhandy (legacy)** | 2 | Dconf Editor, some Settings panels |

---

## Common Issues Found Across Apps

| Issue | Apps | Fix |
|-------|------|-----|
| GTK3/Hdy instead of GTK4/Adw | Connections, Boxes, Dconf Editor | Migrate to libadwaita |
| Missing `use-underline` on controls | Tavern (ViewStackPage labels, buttons) | Add `use-underline: true` + `_` prefix |
| Non-standard spacing (16px, 20px) | Tavern | Use 12, 18, or 24 |
| No Preferences dialog | Tavern, Decibels, Showtime | Add `AdwPreferencesDialog` |
| No Keyboard Shortcuts window | Tavern | Add `AdwShortcutsDialog` + `app.shortcuts` action |
| Hard-coded `font-size` in CSS | Tavern, Decibels | Use Adwaita classes: `.body`, `.caption`, `.title` |
| Over-custom CSS classes | Showtime, Tavern | Lean on `.flat`, `.pill`, `.suggested-action`, `.circular` |
| No accessibility annotations | Most newer apps | Add `accessibility { label: ...; }` blocks |
| No `search-enabled` on prefs | Most prefs dialogs | Add `search-enabled: true` |
| Menu missing standard items | Several | Add Preferences, Keyboard Shortcuts, About sections |
| `GtkHeaderBar` instead of `AdwHeaderBar` | Initial Setup, Tour | Upgrade to `AdwHeaderBar` |
| Duplicate `.ui` files (copy-paste) | Boxes (shared-folder-popover.ui) | Use GResource aliases or shared templates |
| Manual AtkObject children (GTK3-era) | Dconf Editor, Boxes | Use GTK4 `accessibility` property syntax |

---

*All paths relative to repo root. Use `read(path, offset=line)` to see the exact code.*
