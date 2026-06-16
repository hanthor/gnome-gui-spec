# GNOME Music GUI Audit

**Source:** `sources/gnome-music/data/ui/` (33 .ui files, no .blp)
**Framework:** GTK 4 + libadwaita (Adw)

---

## 1. Widget Inventory

### Adwaita Widgets (Adw*)

| Widget | Files |
|---|---|
| **AdwApplicationWindow** | Window.ui:4 (template parent) |
| **AdwNavigationView** | Window.ui:20 |
| **AdwNavigationPage** | Window.ui:22, AlbumNavigationPage.ui:4, ArtistNavigationPage.ui:4, SearchView.ui:3, AlbumsSearchNavigationPage.ui:4, ArtistsSearchNavigationPage.ui:4, StatusNavigationPage.ui:3 (template parent) |
| **AdwToolbarView** | Window.ui:14,26; AlbumNavigationPage.ui:7; ArtistNavigationPage.ui:7; SearchView.ui:7; AlbumsSearchNavigationPage.ui:7; ArtistsSearchNavigationPage.ui:7; StatusNavigationPage.ui:7; PlaylistDialog.ui:9 |
| **AdwHeaderBar** | HeaderBar.ui:5, SearchHeaderBar.ui:5, AlbumNavigationPage.ui:9, ArtistNavigationPage.ui:9, AlbumsSearchNavigationPage.ui:9, ArtistsSearchNavigationPage.ui:9, PlaylistDialog.ui:11 |
| **AdwWindowTitle** | AlbumNavigationPage.ui:11 |
| **AdwOverlaySplitView** | ArtistsView.ui:6, PlaylistsView.ui:6 |
| **AdwViewStack** | Window.ui:32 |
| **AdwToastOverlay** | Window.ui:18 |
| **AdwBin** | AlbumsView.ui:4, ArtistsView.ui:4, PlaylistsView.ui:4 (template parent); PlaylistsView.ui:22 (child object); AlbumWidget.ui:3, HeaderBar.ui:3, SearchHeaderBar.ui:3 |
| **AdwClamp** | AlbumWidget.ui:5, ArtistAlbumsWidget.ui:7, PlaylistsWidget.ui:6,18, PlayerToolbar.ui:117, SearchView.ui:19, AlbumsSearchNavigationPage.ui:18, ArtistsSearchNavigationPage.ui:18, StatusNavigationPage.ui:19 |
| **AdwStatusPage** | StatusNavigationPage.ui:10, SearchView.ui:183 |
| **AdwDialog** | PlaylistDialog.ui:4 |
| **AdwPreferencesDialog** | PreferencesDialog.ui:3 |
| **AdwPreferencesPage** | PreferencesDialog.ui:6 |
| **AdwPreferencesGroup** | PreferencesDialog.ui:8,43 |
| **AdwComboRow** | PreferencesDialog.ui:11,26 |
| **AdwSwitchRow** | PreferencesDialog.ui:46 |
| **AdwShortcutsDialog** | shortcuts-dialog.ui:3 |
| **AdwShortcutsSection** | shortcuts-dialog.ui:5,40,93 |
| **AdwShortcutsItem** | shortcuts-dialog.ui:8,14,20,26,32,43,49,55,61,67,73,79,85,96,102,108,114 |

### GTK Widgets (Gtk*)

| Widget | Files |
|---|---|
| **GtkBox** | AlbumTile.ui:4, ArtistSearchTile.ui:5, ArtistTile.ui:3,6; VolumeButton.ui:3; RepeatModeButton.ui:3; PlaylistControls.ui:17; PlaylistsWidget.ui:3; ArtistAlbumsWidget.ui:4; TwoLineTip.ui:3 (template parent); + ~30 child instances across files |
| **GtkFlowBoxChild** | AlbumCover.ui:3, ArtistSearchTile.ui:3 (template parent) |
| **GtkListBoxRow** | SongWidget.ui:4, DiscBox.ui:4, PlaylistDialogRow.ui:3, PlaylistTile.ui:3 (template parent) |
| **GtkListItem** | DiscListItem.ui:4 (template parent) |
| **GtkActionBar** | PlayerToolbar.ui:4 (template parent) |
| **GtkPopoverMenu** | SongWidgetMenu.ui:3 (template parent) |
| **GtkScrolledWindow** | AlbumsView.ui:6, ArtistsView.ui:8,20; AlbumNavigationPage.ui:16, ArtistNavigationPage.ui:12, PlaylistsView.ui:8, PlaylistsWidget.ui:15, SearchView.ui:15, AlbumsSearchNavigationPage.ui:12, ArtistsSearchNavigationPage.ui:12, PlaylistDialog.ui:147 |
| **GtkGridView** | AlbumsView.ui:8 |
| **GtkListView** | ArtistsView.ui:10 |
| **GtkFlowBox** | AlbumsSearchNavigationPage.ui:30, ArtistsSearchNavigationPage.ui:30, SearchView.ui:71,128 |
| **GtkListBox** | AlbumWidget.ui:114, ArtistAlbumsWidget.ui:11, DiscBox.ui:9, PlaylistsView.ui:11, PlaylistsWidget.ui:22, PlaylistDialog.ui:151, SearchView.ui:163 |
| **GtkStack** | PlaylistControls.ui:22, PlaylistDialog.ui:54, SearchView.ui:10 |
| **GtkStackPage** | PlaylistControls.ui:37, SearchView.ui:12,180 |
| **GtkOverlay** | Window.ui:29 |
| **GtkButton** | AlbumWidget.ui:80, PlayerToolbar.ui:69,83,101; PlaylistControls.ui:59,95; PlaylistDialog.ui:26,35,115,188; SearchView.ui:48,105 |
| **GtkMenuButton** | AlbumWidget.ui:93, HeaderBar.ui:8, PlayerToolbar.ui:? (via RepeatModeButton+VolumeButton), PlaylistControls.ui:110, RepeatModeButton.ui:5, SearchView.ui:?, SongWidget.ui:117, VolumeButton.ui:5 |
| **GtkToggleButton** | HeaderBar.ui:18, SearchHeaderBar.ui:8, VolumeButton.ui:20 |
| **GtkPopover** | VolumeButton.ui:15 |
| **GtkEntry** | PlaylistControls.ui:46, PlaylistDialog.ui:96,174 |
| **GtkLabel** | ~50 instances across nearly every file |
| **GtkImage** | AlbumTile.ui:9, AlbumWidget.ui:19, ArtistSearchTile.ui:11, ArtistTile.ui:9, PlayerToolbar.ui:20,93; PlaylistDialogRow.ui:20, PlaylistTile.ui:8, PlaylistDialog.ui:75, SearchView.ui:59,116, SongWidget.ui:11,25 |
| **GtkPicture** | StatusNavigationPage.ui:27 |
| **GtkScale** | VolumeButton.ui:32 |
| **GtkAdjustment** | VolumeButton.ui:35 |
| **GtkProgressBar** | Window.ui:39 |
| **GtkStringList** | PreferencesDialog.ui:14,30 |
| **GtkSizeGroup** | SongWidget.ui:148 |
| **GtkDragSource** | SongWidget.ui:129 |
| **GtkDropTarget** | SongWidget.ui:137 |
| **GtkEventControllerKey** | Window.ui:8, PlaylistControls.ui:48 |
| **GtkEventControllerFocus** | PlaylistDialog.ui:108,181 |

### Custom Widgets (defined in Python but used in .ui)

| Widget | Referenced in |
|---|---|
| **StarToggle** | SongWidget.ui |
| **SmoothScale** | PlayerToolbar.ui |
| **RepeatModeButton** | PlayerToolbar.ui |
| **VolumeButton** | PlayerToolbar.ui |
| **AlbumCover** | AlbumsSearchNavigationPage.ui, ArtistsSearchNavigationPage.ui, SearchView.ui (via GtkFlowBox children) |
| **AlbumTile** | FlowBox entries |
| **ArtistTile** | ArtistsView FlowBox |
| **ArtistSearchTile** | FlowBox entries |
| **DiscBox** | DiscListItem.ui |
| **DiscListItem** | GtkListView factory |
| **HeaderBar** | Window.ui (via AdwToolbarView top-bar) |
| **SearchHeaderBar** | SearchView.ui (via AdwToolbarView top-bar) |
| **PlayerToolbar** | Window.ui (bottom bar) |
| **PlaylistControls** | PlaylistsView sidebar detail |
| **PlaylistDialogRow** | PlaylistDialog GtkListBox rows |
| **PlaylistDialog** | triggered from code |
| **PlaylistTile** | PlaylistsView sidebar |
| **SongWidget** | GtkListBox row in album/playlist/song lists |

---

## 2. Patterns Demonstrated

### A. App Shell — AdwApplicationWindow + AdwNavigationView + AdwToolbarView
- **Window.ui** — layered shell: `AdwApplicationWindow > AdwToolbarView[top-bar + bottom-bar] > AdwToastOverlay > AdwNavigationView > AdwNavigationPage > AdwToolbarView[raised top-bar] > GtkOverlay > AdwViewStack`
- HeaderBar injected via top-bar property on AdwToolbarView
- PlayerToolbar injected via bottom-bar property on outer AdwToolbarView
- Key property: `top-bar-style: raised`, `bottom-bar-style: raised`

### B. Navigation — AdwNavigationPage sub-pages
- **AlbumNavigationPage.ui, ArtistNavigationPage.ui, SearchView.ui, StatusNavigationPage.ui, AlbumsSearchNavigationPage.ui, ArtistsSearchNavigationPage.ui** — all extend `AdwNavigationPage`
- Each wraps content in `AdwToolbarView > GtkScrolledWindow` pattern
- `AdwNavigationPage.tag` used for programmatic lookup (e.g. `"mainview"`, `"searchview"`, `"status"`)

### C. Split Sidebar — AdwOverlaySplitView
- **ArtistsView.ui** — sidebar: `GtkScrolledWindow > GtkListView` with `navigation-sidebar` style class; content: `GtkScrolledWindow`
- **PlaylistsView.ui** — sidebar: `GtkScrolledWindow > GtkListBox`; content: `AdwBin`

### D. Content Clamping — AdwClamp
- Nearly every content page uses `AdwClamp` with `maximum-size` (1000, 1600, 620) to constrain width
- **AlbumWidget.ui:5**, **SearchView.ui:19**, **PlayerToolbar.ui:117**, **StatusNavigationPage.ui:19**, **AlbumsSearchNavigationPage.ui:18**, **ArtistsSearchNavigationPage.ui:18**

### E. Status/Empty States — AdwStatusPage
- **StatusNavigationPage.ui:10** — `AdwStatusPage` with `icon_name` for the app's initial/loading state
- **SearchView.ui:183** — `AdwStatusPage` inside a `GtkStackPage` named `"status"` for empty search results

### F. Grid/Flow Views — GtkGridView, GtkFlowBox
- **AlbumsView.ui:8** — `GtkGridView` with `max-columns: 10`, `single-click-activate: True`
- **AlbumsSearchNavigationPage.ui:30**, **ArtistsSearchNavigationPage.ui:30**, **SearchView.ui:71,128** — `GtkFlowBox` with `min/max_children_per_line`, `row/column_spacing`, `homogeneous`

### G. List Views & Factories — GtkListView + GtkListItem
- **ArtistsView.ui:10** — `GtkListView` for sidebar
- **DiscListItem.ui** — `GtkListItem` template with **binding** expressions using `<lookup name="item">GtkListItem</lookup>` and `<lookup name="disc_nr" type="CoreDisc">` to bind model properties
- DiscListItem is the only file using `<binding>` — demonstrates the GtkListItem factory binding pattern

### H. List Views — GtkListBox rows (classic pattern)
- **SongWidget.ui** — `GtkListBoxRow` with rich internal layout (icons, labels, drag handle, menu button, StarToggle custom widget)
- **PlaylistTile.ui** — simpler `GtkListBoxRow` with icon + label
- **PlaylistDialogRow.ui** — `GtkListBoxRow` with checkbox pattern (selection icon)
- **DiscBox.ui** — `GtkListBoxRow` containing a nested `GtkListBox`

### I. Stack-based View Switching — GtkStack + GtkStackPage
- **SearchView.ui:10** — `GtkStack` with named pages ("main", "status")
- **PlaylistDialog.ui:54** — `GtkStack` for empty-vs-populated state
- **PlaylistControls.ui:22** — `GtkStack` for rename inline editing toggle

### J. Custom Widgets in .ui Templates
- **SmoothScale** (PlayerToolbar.ui), **StarToggle** (SongWidget.ui), **RepeatModeButton**, **VolumeButton**, **AlbumCover** — custom Python widgets referenced as `<object class="..."/>` directly in templates
- **VolumeButton.ui** — demonstrates inline `GtkPopover` declaration on a `GtkMenuButton.popover` property, with `GtkScale` + `GtkAdjustment`

### K. Preferences — AdwPreferencesDialog
- **PreferencesDialog.ui** — `AdwPreferencesDialog > AdwPreferencesPage > AdwPreferencesGroup > AdwComboRow / AdwSwitchRow`
- Uses `GtkStringList` model for combo rows

### L. Keyboard Shortcuts — AdwShortcutsDialog
- **shortcuts-dialog.ui** — standalone object (not template), organized into `AdwShortcutsSection` groups with `AdwShortcutsItem` entries using `action-name` or `accelerator`

### M. Drag & Drop — GtkDragSource + GtkDropTarget
- **SongWidget.ui:129,137** — inline `GtkDragSource` (prepare/drag-begin signals) and `GtkDropTarget` (drop signal) on a `GtkListBoxRow`

### N. Event Controllers in .ui
- **Window.ui:8** — `GtkEventControllerKey` on AdwApplicationWindow for global key handling
- **PlaylistControls.ui:48** — `GtkEventControllerKey` on GtkEntry for enter/escape handling
- **PlaylistDialog.ui:108,181** — `GtkEventControllerFocus` on GtkEntry for focus-enter signals

### O. Size Groups for Column Alignment
- **SongWidget.ui:148** — `GtkSizeGroup` (horizontal mode) grouping title_box, artist_box, album_duration_box to align columns across list rows

### P. Menu Models (GMenu)
- **PlaylistControls.ui:3-15** — inline `<menu id="playlistMenu">` with `<item>` entries using `action` attributes
- Referenced by `GtkMenuButton.menu-model` property

### Q. Style Classes
- `circular` — PlayerToolbar.ui buttons, VolumeButton, RepeatModeButton, PlaylistControls buttons
- `pill` — PlayerToolbar play button
- `flat` — SongWidget menu button, VolumeButton mute toggle
- `suggested-action` — PlaylistDialog Add button, PlaylistControls Done button
- `linked` — PlaylistDialog bottom bar, PlaylistControls rename box
- `navigation-sidebar` — ArtistsView sidebar GtkListView
- `search-header` — SearchView section headers
- `title-1` — PlaylistControls playlist name, StatusNavigationPage welcome title
- `body` — PlaylistControls song count, StatusNavigationPage description
- `boxed-list` — SearchView song list
- `bold-label` — SongWidget duration, PlayerToolbar title labels
- `numeric` — PlayerToolbar time labels
- `dim-label` — SongWidget track number
- `osd` — Window GtkProgressBar overlay
- `drag-handle` — SongWidget drag icon
- `grey-image` — PlaylistDialog empty-state icon
- `smooth-scale` — PlayerToolbar custom scale
- `songwidget` — SongWidget template root
- `view` — SearchView, PlaylistDialog template roots

---

## 3. Best Code Examples by Pattern

| Pattern | File | Line | Why |
|---|---|---|---|
| **App Shell (window + navigation)** | `Window.ui` | 4-54 | Complete shell with ToolbarView, NavigationView, Overlay, ViewStack, bottom toolbar |
| **NavigationPage wrapper** | `AlbumNavigationPage.ui` | 4-20 | Canonical AdwNavigationPage > AdwToolbarView > AdwHeaderBar + GtkScrolledWindow |
| **OverlaySplitView sidebar** | `ArtistsView.ui` | 4-24 | sidebar (GtkListView) + content split with scroll areas |
| **AdwClamp content width** | `AlbumWidget.ui` | 5-8 | Clamp with max-size 1000 on album detail page |
| **AdwStatusPage empty state** | `StatusNavigationPage.ui` | 10 | Straightforward status page with icon |
| **StatusPage in stack** | `SearchView.ui` | 180-184 | StatusPage inside GtkStackPage for toggling search results vs empty |
| **GtkGridView** | `AlbumsView.ui` | 8-10 | Simple grid view with max-columns, single-click-activate |
| **GtkFlowBox responsive grid** | `SearchView.ui` | 128-142 | FlowBox with min/max children, spacing, selection_mode, signal |
| **GtkListView + factory binding** | `DiscListItem.ui` | 4-28 | Only file with `<binding>` — model lookup pattern for list factories |
| **GtkListBoxRow (rich row)** | `SongWidget.ui` | 4-156 | Complex row: drag handle, play icon, track #, title, artist, album, duration, star toggle, menu button, drag source, drop target, SizeGroup |
| **GtkSizeGroup alignment** | `SongWidget.ui` | 148-153 | Horizontal size group for column alignment across rows |
| **Drag & Drop in UI** | `SongWidget.ui` | 129-143 | GtkDragSource + GtkDropTarget inline with signals |
| **AdwPreferencesDialog** | `PreferencesDialog.ui` | 3-47 | Full preferences: page > groups > ComboRow (GtkStringList) + SwitchRow |
| **AdwShortcutsDialog** | `shortcuts-dialog.ui` | 3-120 | Sections, ShortcutsItem with action-name and accelerator |
| **AdwDialog** | `PlaylistDialog.ui` | 4-190 | Full dialog: AdwDialog > ToolbarView > HeaderBar + content stack + bottom bar with linked entry+button |
| **GtkStack page toggle** | `PlaylistControls.ui` | 22-68 | Stack with label page and rename-entry page |
| **GtkPopover inline** | `VolumeButton.ui` | 15-36 | GtkPopover declared on MenuButton.popover with Scale+Adjustment |
| **GtkMenuButton + GMenu** | `PlaylistControls.ui` | 1-15,110 | Inline menu model with actions, referenced by menu-model property |
| **Style class: circular buttons** | `PlayerToolbar.ui` | 69-81 (prev), 83-93 (play), 101-113 (next) | circular, pill, play/pause icon inside button |
| **Style class: suggested-action** | `PlaylistDialog.ui` | 35-43 | Suggested-action button for primary dialog action |
| **Style class: linked** | `PlaylistControls.ui` | 40-67 | Linked horizontal box for entry+button combo |
| **GtkEventControllerKey** | `Window.ui` | 8-11 | Key controller on window root for global keyboard shortcuts |
| **GtkEventControllerFocus** | `PlaylistDialog.ui` | 181-184 | Focus controller on entry for focus-dependent behavior |
| **Custom widget in template** | `PlayerToolbar.ui` | 133-140 | SmoothScale (custom) used alongside standard widgets |
| **GtkProgressBar overlay** | `Window.ui` | 39-43 | Overlay child with progress bar for loading state |
| **GtkPicture (SVG)** | `StatusNavigationPage.ui` | 27-31 | GtkPicture with can-shrink, keep-aspect-ratio loading an SVG from resource |
| **Translatable strings** | `PreferencesDialog.ui` | 11-24 | `translatable="yes"` on ComboRow titles; `GtkStringList` items with `<item translatable="yes">` |
