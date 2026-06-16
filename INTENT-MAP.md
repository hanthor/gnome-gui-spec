# GNOME Intent → Implementation Map

> Maps user/agent goals to the correct GNOME pattern, the widget to use, and the best real-world code example across all audited apps.  
> **28 apps audited**. Pick your pattern → copy the linked code.

---

## Intent → Pattern → Best Implementation

### "I need an app window"
| Pattern | Widget | Best Example | Also See |
|---------|--------|-------------|----------|
| Standard window | `AdwApplicationWindow` | Decibels `window.blp:4` | Showtime `window.blp:35`, Papers `pps-window.blp:10` |
| Window + sidebar | `AdwOverlaySplitView` | Disk Utility `gdu-window.blp:14` | Baobab `baobab-main-window.ui:84` |
| Window + multi-layout | `AdwMultiLayoutView` | Disk Utility `gdu-drive-header.blp:5` | Papers `pps-document-view.blp:32` |
| Tabs in window | `AdwTabView` + `AdwTabBar` | Text Editor `editor-window.ui` | — |
| Previewer pop-out | `AdwApplicationWindow` (secondary) | Papers `pps-previewer-window.blp:10` | Loupe `window.ui` |

### "I need a header bar"
| Pattern | Widget | Best Example | Also See |
|---------|--------|-------------|----------|
| Simple title | `AdwHeaderBar` + `AdwWindowTitle` | Font Viewer `font-view-window.ui:36,141` | Decibels `header.blp:6` |
| Title + subtitle (center) | `GtkCenterBox` in `title-widget` | Text Editor `editor-window.ui` (title+subtitle) | — |
| ViewSwitcher in header | `AdwViewSwitcher` in `title-widget` | Settings `cc-mouse-panel.blp` | Clocks `window.ui`, Tavern `window.blp` |
| Breadcrumb in header | Custom widget in `title-widget` | Baobab `baobab-main-window.ui:56` (BaobabPathbar) | — |
| Overlay controls (no bar) | `Overlay` with buttons | Showtime `window.blp:127-436` | Loupe (shy header bar) |
| Flat style buttons | `.flat` class | Every app — e.g. Simple Scan `app-window.ui:199` | — |
| Suggested action button | `.suggested-action` | Every app — Disk Utility `gdu-format-disk-dialog.blp:26` | — |

### "I need page navigation"
| Pattern | Widget | Best Example | Also See |
|---------|--------|-------------|----------|
| 3-5 flat tabs | `AdwViewStack` + `AdwViewSwitcher` | Settings `cc-mouse-panel.blp` (Mouse/Touchpad/Stick) | Clocks `window.ui`, Baobab `baobab-main-window.ui:176` |
| Push/pop navigation | `AdwNavigationView` + `AdwNavigationPage` | Font Viewer `font-view-window.ui:29-218` | Baobab `baobab-main-window.ui:11`, Clocks `window.ui` |
| Sidebar + content | `AdwNavigationSplitView` | Nautilus (places) | Tavern `tap-page.blp` |
| Stack-based switching | `GtkStack` + `GtkStackPage` | Papers `pps-window.blp:15` (7 pages!) | Decibels `window.blp:11`, Showtime `window.blp:74` |
| Carousel onboarding | `AdwCarousel` + `AdwCarouselIndicatorDots` | Tour `paginator.ui` | Connections `onboarding-dialog.ui:37` (HdyCarousel) |
| Wizard/Assistant | `GtkStack` slide-left-right + Back/Forward | Initial Setup `gis-assistant.ui` | — |
| Inline tab switcher | `AdwInlineViewSwitcher` + `AdwViewStack` | Papers `pps-sidebar.blp:12,6` | — |

### "I need preferences/settings"
| Pattern | Widget | Best Example | Also See |
|---------|--------|-------------|----------|
| Full prefs dialog | `AdwPreferencesDialog` | Disk Utility `gdu-format-disk-dialog.blp:4-114` | Baobab `baobab-preferences-dialog.ui`, Simple Scan `preferences-dialog.ui` |
| Prefs as navigation page | `AdwNavigationPage` + `AdwPreferencesPage` | Font Viewer `font-view-window.ui:214` | — |
| Dynamic prefs (C code) | `AdwPreferencesGroup` created in code | Font Viewer `font-view-window.c:populate_grid()` | — |
| Prefs with search | `search-enabled: true` | Nautilus `nautilus-preferences-dialog.blp` | Text Editor `editor-preferences-dialog.ui` |
| Radio group (CheckButton prefix) | `AdwActionRow` + `[prefix] CheckButton` | Disk Utility `gdu-create-filesystem-page.blp:57-104` (best!) | Software `gs-prefs-dialog.ui`, Nautilus |
| Toggle group (AdwToggle) | `AdwToggleGroup` + `AdwToggle` | Simple Scan `preferences-dialog.ui:31-53` | Settings (Mouse primary button) |

### "I need form inputs"
| Pattern | Widget | Best Example | Also See |
|---------|--------|-------------|----------|
| Text entry row | `AdwEntryRow` | Disk Utility `gdu-create-filesystem-page.blp:9` | Papers `pps-annotation-properties-dialog.blp:103` |
| Password entry | `AdwPasswordEntryRow` | Disk Utility `gdu-change-passphrase-dialog.blp:51-63` | Simple Scan `authorize-dialog.ui:32` |
| Numeric spinner | `AdwSpinRow` + `Adjustment` | Disk Utility `gdu-benchmark-dialog.blp:56-68` | Papers `pps-annotation-properties-dialog.blp:49` |
| Dropdown/combo | `AdwComboRow` + `StringList` | Disk Utility `gdu-resize-volume-dialog.blp:97-117` | Simple Scan `preferences-dialog.ui:67` |
| Switch/toggle | `AdwSwitchRow` | Disk Utility `gdu-encryption-options-dialog.blp:42` | Every prefs dialog |
| Color picker | `ColorDialogButton` | Papers `pps-annotation-properties-dialog.blp:18` | — |
| Font picker | `FontDialogButton` | Papers (inline in `pps-document-view.blp`) | — |
| Slider/scale | `GtkScale` + `Adjustment` + marks | Simple Scan `preferences-dialog.ui:99-105` | Decibels `playback-rate-button.blp:26`, Sound `cc-sound-panel.blp` |
| Search entry | `GtkSearchEntry` | Font Viewer `font-view-window.ui:44` | Papers `pps-search-box.blp:14` |

### "I need a list of items"
| Pattern | Widget | Best Example | Also See |
|---------|--------|-------------|----------|
| Simple static list | `GtkListBox` + `boxed-list` | Disk Utility `gdu-window.blp:34` | Nautilus |
| Rich list rows | `GtkListBoxRow` (grid layout) | Baobab `baobab-location-row.ui:3-95` | Settings custom rows |
| Column view (sortable) | `GtkColumnView` + `GtkSignalListItemFactory` | Baobab `baobab-folder-display.ui:7-140` (best!) | — |
| Grid view (tiles) | `GtkGridView` + `GtkBuilderListItemFactory` | Font Viewer `font-view-window.ui:63-130` | — |
| Flow box (wrapping) | `GtkFlowBox` + homogeneous | Connections `collection-view.ui:32` | Software (carousel tiles), Calculator |
| List view (signals) | `GtkListView` + `GtkSignalListItemFactory` | Papers `pps-find-sidebar.blp:30-36` | Papers `pps-sidebar-annotations.blp:22-41` |
| Tree list (expandable) | `GtkTreeExpander` + `GtkColumnView` | Baobab `baobab-file-cell.ui:5-24` | — |
| Selection model | `GtkSingleSelection` / `GtkNoSelection` / `GtkMultiSelection` | Papers various sidebars | Baobab `baobab-main-window.ui:103` |

### "I need user feedback"
| Pattern | Widget | Best Example | Also See |
|---------|--------|-------------|----------|
| Toast notification | `AdwToast` + `AdwToastOverlay` | Loupe `image_window.rs` (trash+undo) | Disk Utility `gdu-drive-view.blp:38` |
| Persistent banner | `AdwBanner` | Baobab `baobab-main-window.ui:80-82` | Disk Utility `gdu-create-confirm-page.blp:9`, Papers `pps-document-view.blp:109` |
| Empty state | `AdwStatusPage` | Decibels `empty.blp:11-30` (best simple!) | Text Editor `editor-window.ui`, Weather `window.ui` |
| Error state | `Adw.StatusPage` | Decibels `error.blp:11-31` | Papers `pps-window.blp:34,64` |
| Loading state | `GtkStack` + `AdwSpinner` | Tavern `browse-page.blp` (Stack loading/content) | Decibels, Font Viewer |
| Loading with progress | `GtkProgressBar` + `AdwSpinner` | Papers `pps-loader-view.blp:25-43` | Initial Setup (loading page) |
| Info bar | `GtkInfoBar` + action buttons | Text Editor `editor-info-bar.ui` (discard unsaved) | Papers `pps-progress-message-area.blp:5` |
| Info popover | `GtkMenuButton` + `GtkPopover` | Disk Utility `gdu-edit-partition-dialog.blp:62-101` | Software `gs-prefs-dialog.ui` (header-suffix) |
| Confirmation dialog | `AdwAlertDialog` | Papers `pps-document-view.blp:243-265` | Disk Utility `gdu-take-ownership-dialog.blp` |
| Inline reveal | `GtkRevealer` + banner | Simple Scan `drivers-dialog.ui:59-64` | Connections `notification.ui` |

### "I need modal dialogs"
| Pattern | Widget | Best Example | Also See |
|---------|--------|-------------|----------|
| Standard modal (Adw) | `AdwDialog` + `AdwToolbarView` | Disk Utility `gdu-benchmark-dialog.blp:4` (best!) | Papers `pps-annotation-properties-dialog.blp:4` |
| Alert/confirmation | `AdwAlertDialog` | Papers `pps-document-view.blp:243` | Disk Utility `gdu-take-ownership-dialog.blp:4` |
| Multi-step wizard | `GtkStack` in `AdwDialog` | Disk Utility `gdu-benchmark-dialog.blp:47-149` | — |
| Task panel (side sheet) | `AdwDialog` + header | Tavern `task-panel.blp` | — |
| Password unlock | `AdwDialog` + `AdwPasswordEntryRow` | Disk Utility `gdu-unlock-dialog.blp:4-142` (best!) | Simple Scan `authorize-dialog.ui` |

### "I need drag-and-drop"
| Pattern | Widget | Best Example | Also See |
|---------|--------|-------------|----------|
| File drop target | `GtkDropTarget` | Baobab `baobab-main-window.ui:244-246` | Showtime `window.blp:50`, Papers `pps-window.blp:175` |
| Drop overlay (visual feedback) | `Overlay` + `Revealer` + `AdwStatusPage` | Decibels `drag-overlay.blp:10-19` | Showtime `window.blp:49` |

### "I need search"
| Pattern | Widget | Best Example | Also See |
|---------|--------|-------------|----------|
| Search bar (header) | `GtkSearchBar` + `GtkSearchEntry` | Connections `collection-view.ui:19` | — |
| Inline search entry | `GtkSearchEntry` | Font Viewer `font-view-window.ui:44` | Papers `pps-search-box.blp:14` |
| Search with options | `GtkSearchEntry` + MenuButton | Papers `pps-search-box.blp:4-71` (best!) | — |
| Filter → Sort → List | Search → StringFilter → SortListModel → View | Font Viewer `font-view-window.ui:44-100` | Baobab |
| Search provider (GNOME Shell) | DBus search provider | Tavern `search_provider.py` | Text Editor |

### "I need keyboard shortcuts"
| Pattern | Widget | Best Example | Also See |
|---------|--------|-------------|----------|
| Shortcuts dialog | `AdwShortcutsDialog` + `AdwShortcutsSection` | Disk Utility `shortcuts-dialog.blp:4-86` | Every app |
| Inline shortcuts | `GtkShortcutController` + `GtkShortcut` | Baobab `baobab-main-window.ui:186-212` | Papers `pps-document-view.blp`, Font Viewer `font-view-window.ui:12` |
| Modifier+key to action | `GAction` + `set_accels_for_action` | Every app — `<control>q`, `<control>comma` | — |

### "I need accessibility"
| Pattern | Widget | Best Example | Also See |
|---------|--------|-------------|----------|
| Accessible labels | `accessibility { label: ...; }` | Showtime `window.blp:150-153` | Decibels `volume-button.blp:25-27`, Papers `pps-search-box.blp:41` |
| Mnemonic widgets | `use-underline` + `_` prefix | Every app | — |
| ATK objects | `AtkObject` accessible-name | Connections `topbar.ui:22` | — |

### "I need CSS styling"
| Pattern | Classes | Best Example | Also See |
|---------|---------|-------------|----------|
| Card tiles | `.card` | Papers (package tiles) | Software, Baobab |
| Property rows | `styles ["property"]` + `subtitle-selectable` | Disk Utility `gdu-drive-view.blp:41-44` | — |
| Dim secondary text | `.dim-label` + `.caption` | Every app | Baobab, Settings |
| Numeric alignment | `.numeric` | Baobab `baobab-size-cell.ui` | Every clock display |
| Raised toolbar | `top-bar-style: raised` | Baobab `baobab-main-window.ui:54` | — |
| Circular icons | `styles ["symbolic-circular"]` | Baobab `baobab-location-row.ui:12` | — |

---

## Component Usage Matrix

Shows which widget is used by which app with the best reference implementation.

| Component | Apps Using It | Best Code Example |
|-----------|--------------|-------------------|
| `AdwApplicationWindow` | **All 28 apps** | Decibels `window.blp:4` or Papers `pps-window.blp:10` |
| `AdwToolbarView` | 23 apps | Disk Utility `gdu-window.blp:17` |
| `AdwHeaderBar` | 25 apps | Font Viewer `font-view-window.ui:36` |
| `AdwPreferencesPage` | 12 apps | Disk Utility `gdu-format-disk-dialog.blp:4` |
| `AdwPreferencesGroup` | 14 apps | Disk Utility `gdu-format-disk-dialog.blp:37` |
| `AdwActionRow` | 13 apps | Disk Utility `gdu-format-disk-dialog.blp:39-53` |
| `AdwSwitchRow` | 8 apps | Disk Utility `gdu-encryption-options-dialog.blp:42` |
| `AdwComboRow` | 7 apps | Disk Utility `gdu-resize-volume-dialog.blp:97` |
| `AdwSpinRow` | 6 apps | Disk Utility `gdu-benchmark-dialog.blp:56` |
| `AdwEntryRow` | 6 apps | Disk Utility `gdu-create-filesystem-page.blp:9` |
| `AdwPasswordEntryRow` | 4 apps | Disk Utility `gdu-change-passphrase-dialog.blp:51` |
| `AdwExpanderRow` | 2 apps | Disk Utility `gdu-block-row.blp:4` |
| `AdwButtonRow` | 3 apps | Disk Utility `gdu-mount-options-dialog.blp:144` |
| `AdwViewStack` | 8 apps | Papers `pps-window.blp:15` (7 pages!) |
| `AdwViewSwitcher` | 5 apps | Settings `cc-mouse-panel.blp` |
| `AdwViewSwitcherBar` | 4 apps | Clocks `window.ui` |
| `AdwInlineViewSwitcher` | 1 app | Papers `pps-sidebar.blp:12` |
| `AdwNavigationView` | 3 apps | Font Viewer `font-view-window.ui:29` |
| `AdwNavigationPage` | 3 apps | Baobab `baobab-main-window.ui:13` |
| `AdwNavigationSplitView` | 2 apps | Tavern `tap-page.blp` |
| `AdwOverlaySplitView` | 5 apps | Disk Utility `gdu-window.blp:14` |
| `AdwCarousel` | 2 apps | Tour `paginator.ui` |
| `AdwCarouselIndicatorDots` | 2 apps | Tour `paginator.ui` |
| `AdwDialog` | 4 apps | Disk Utility `gdu-benchmark-dialog.blp:4` |
| `AdwAlertDialog` | 5 apps | Papers `pps-document-view.blp:243` |
| `AdwToastOverlay` | 7 apps | Loupe (trash undo) |
| `AdwToast` | 6 apps | Loupe `image_window.rs` (trash+Undo) |
| `AdwStatusPage` | 12 apps | Decibels `empty.blp:11` |
| `AdwBanner` | 5 apps | Baobab `baobab-main-window.ui:80` |
| `AdwBreakpointBin` | 6 apps | Baobab `baobab-main-window.ui:157` |
| `AdwBreakpoint` | 7 apps | Disk Utility `gdu-window.blp:5` |
| `AdwClamp` | 6 apps | Decibels `player.blp:13` |
| `AdwSpinner` | 10 apps | Decibels `player.blp` (various) |
| `AdwShortcutsDialog` | 8 apps | Disk Utility `shortcuts-dialog.blp:4` |
| `AdwAboutDialog` | 4 apps | Tavern `application.py:277` |
| `GtkColumnView` + `GtkSignalListItemFactory` | 3 apps | Baobab `baobab-folder-display.ui:7` |
| `GtkListView` + `GtkSignalListItemFactory` | 2 apps | Papers `pps-find-sidebar.blp:30` |
| `GtkGridView` + `GtkBuilderListItemFactory` | 2 apps | Font Viewer `font-view-window.ui:63` |
| `GtkFlowBox` | 4 apps | Connections `collection-view.ui:32` |
| `GtkListBox` + `.boxed-list` | 8 apps | Disk Utility `gdu-window.blp:34` |
| `GtkPopover` | 8 apps | Disk Utility `gdu-edit-partition-dialog.blp:62` |
| `GtkSearchEntry` | 5 apps | Font Viewer `font-view-window.ui:44` |
| `GtkRevealer` | 5 apps | Simple Scan `drivers-dialog.ui:59` |
| `GtkInfoBar` | 3 apps | Text Editor `editor-info-bar.ui` |
| `GtkShortcutController` | 6 apps | Baobab `baobab-main-window.ui:186` |
| `GtkDropTarget` | 3 apps | Baobab `baobab-main-window.ui:244` |
| `GtkLevelBar` | 2 apps | Baobab `baobab-location-row.ui:65` |
| `GtkScale` + `Adjustment` | 4 apps | Simple Scan `preferences-dialog.ui:99` |
| `GtkToggleGroup` | 4 apps | Simple Scan `preferences-dialog.ui:31` |

---

## Framework Distribution

| Framework | Apps | Representative |
|-----------|------|---------------|
| **C + GTK4 + libadwaita** | 18 | Settings, Files, Clocks, Software, Calendar, Disk Utility, Baobab, Simple Scan, Connections, Characters, Font Viewer, Logs, Maps, System Monitor, Decibels |
| **Python + PyGObject** | 3 | Tavern, Showtime, Papers |
| **Rust + gtk4-rs** | 2 | Loupe, Tour |
| **Vala** | 1 | Calculator |
| **GJS (JS)** | 1 | Weather |
| **GTK 3 (legacy)** | 3 | Connections (libhandy), some system components |

---

## Common Issues Found Across Apps

| Issue | Apps Affected | Fix |
|-------|--------------|-----|
| **GTK3/Hdy instead of GTK4/Adw** | Connections, some Settings panels | Migrate to libadwaita |
| **Missing `use-underline` on controls** | Tavern (ViewStackPage, buttons) | Add `use-underline: true` + `_` prefix |
| **Non-standard spacing** (16px, 20px) | Tavern | Use 12, 18, or 24 |
| **No Preferences dialog** | Tavern, Decibels, Showtime | Add `AdwPreferencesDialog` |
| **No Keyboard Shortcuts window** | Tavern | Add `AdwShortcutsDialog` + `app.shortcuts` |
| **Hard-coded CSS values** | Tavern, Decibels | Use Adwaita classes, avoid `font-size: X` |
| **Over-custom CSS** | Showtime (many custom), Tavern | Lean on `.flat`, `.pill`, `.suggested-action`, `.circular` |
| **No accessibility annotations** | Most newer apps | Add `accessibility { label: ...; }` blocks |
| **Custom menu buttons instead of MenuButton** | Several | Use `GtkMenuButton` with `menu-model` |
| **Missing primary menu hamburger** | Some utilities | Add hamburger with About, Prefs, Shortcuts |
| **No search-enabled on prefs** | Most prefs dialogs | Add `search-enabled: true` |

---

*Compiled from 28 GNOME app audits. File paths reference the sources/ directory relative to this repo.*
