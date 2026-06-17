# GNOME Builder — GUI Definition File Audit

**Source:** `sources/builder/` (GNOME Builder v50.1)
**Date:** 2025-06-17

---

## 5. File Counts

| Type | Count |
|------|-------|
| `.ui` files | **174** |
| `.blp` files | **0** (Blueprint not used) |

Of the 174 `.ui` files:
- 40 are in `src/libide/tweaks/` (Tweaks preferences system — demos & tests)
- 134 are production UI files across `src/libide/` core library and `src/plugins/`

---

## 3. Framework & Language

- **Language:** **C** (`src/main.c`, meson project declares `'c'`)
- **Build system:** Meson (`meson.build`)
- **GTK version:** GTK 4 (requires `lib="gtk" version="4.0"`)
- **Adwaita version:** Adw 1.0 (`requires lib="Adw" version="1.0"`)
- **Custom sub-library:** `Panel-1.0` — A Builder-specific docking/paneling framework (`PanelDock`, `PanelDockChild`, `PanelPaned`, `PanelFrame`, `PanelWidget`, `PanelToggleButton`, `PanelStatusbar`, `PanelOmniBar`, `PanelList`, `PanelListRow`)
- **Widget templates:** Defined via `<template class="..." parent="..."/>` in `.ui` files; instantiated from C code
- **Resource bundling:** `.gresource.xml` files aggregate `.ui` files per subsystem
- **Style schemes:** 23 GtkSourceView style schemes in `src/libide/gui/styles/` (`.xml` format, not CSS)

---

## 1. Widget Inventory

### GTK 4 Core Widgets

| Widget | Est. Usage | Key Files (paths relative to `sources/builder/`) |
|--------|-----------|---------------------------------------------------|
| `GtkLabel` | 133 | Ubiquitous across nearly all `.ui` files |
| `GtkBox` | 131 | Primary layout container everywhere |
| `GtkButton` | 74 | All plugin UIs, headers, search bars, dialogs |
| `GtkListItem` | 68 | `src/plugins/messages/gbp-messages-panel.ui:27`, `src/libide/gui/ide-search-popover.ui:213`, `src/plugins/testui/gbp-testui-panel.ui:26`, `src/plugins/todo/gbp-todo-panel.ui:44`, `src/plugins/manuals/gbp-manuals-panel.ui:76`, `src/libide/tweaks/ide-tweaks-combo-row.ui:12`, `src/plugins/create-project/gbp-create-project-widget.ui:133` |
| `GtkScrolledWindow` | 43 | Scroll containers across all panels and editors |
| `GtkStackPage` | 42 | Stack-based page switching across many panels |
| `GtkImage` | 33 | Icons in buttons, list rows, headers |
| `GtkTreeViewColumn` | 30 | `src/plugins/debuggerui/ide-debugger-breakpoints-view.ui:10+`, `src/plugins/flatpak/gbp-flatpak-install-dialog.ui:90+`, `src/plugins/grep/gbp-grep-panel.ui:26` |
| `GtkCellRendererText` | 29 | Within GtkTreeViewColumn in debugger, flatpak, grep |
| `GtkListBox` | 24 | `src/plugins/buildui/gbp-buildui-targets-dialog.ui:43`, `src/plugins/newcomers/gbp-newcomers-section.ui:25`, `src/libide/gui/ide-notifications-button.ui:28`, `src/libide/terminal/ide-terminal-popover.ui:27`, `src/plugins/shortcutui/gbp-shortcutui-dialog.ui:69`, `src/plugins/project-tree/gbp-project-tree-pane.ui:76` |
| `GtkStack` | 23 | Multi-page panels everywhere |
| `GtkBuilderListItemFactory` | 21 | List factories across all GtkListView/GtkColumnView uses |
| `GtkMenuButton` | 19 | Menu buttons in headers, search bars, omnibar |
| `GtkPopover` | 18 | `src/libide/gtk/ide-entry-popover.ui:4`, `src/libide/gui/ide-notifications-button.ui:15`, `src/libide/gui/ide-omni-bar.ui:8`, `src/libide/terminal/ide-terminal-popover.ui:3`, `src/plugins/grep/gbp-grep-panel.ui:84`, `src/plugins/find-other-file/gbp-find-other-file-popover.ui:3`, `src/plugins/vcsui/gbp-vcsui-switcher-popover.ui:3`, `src/plugins/buildui/gbp-buildui-status-popover.ui:3`, `src/plugins/symbol-tree/gbp-symbol-popover.ui:3` |
| `GtkListView` | 14 | Modern list widget across plugins (tree, status, symbols, etc.) |
| `GtkGrid` | 11 | `src/libide/editor/ide-editor-search-bar.ui:6`, `src/libide/terminal/ide-terminal-search.ui:6`, `src/plugins/grep/gbp-grep-panel.ui:46`, `src/plugins/buildui/gbp-buildui-pane.ui:12`, `src/plugins/debuggerui/ide-debugger-breakpoints-view.ui:9` |
| `GtkSearchEntry` | 10 | Search/filter inputs in many panel footers |
| `GtkCheckButton` | 10 | `src/plugins/grep/gbp-grep-panel.ui:91-108`, `src/libide/greeter/ide-greeter-row.ui:16`, `src/plugins/buildui/gbp-buildui-targets-dialog.ui:35` |
| `GtkTreeView` | 9 | Legacy tree widgets: debugger breakpoints, flatpak install, grep results |
| `GtkRevealer` | 8 | Slide-in/out animations (search bars, info bars, notifications) |
| `GtkNoSelection` | 8 | Read-only list models (messages, build status, todos, VCS) |
| `GtkShortcut` | 8 | Keyboard shortcut definitions (terminal, webkit page, search popover) |
| `GtkEntry` | 8 | Text entries in environment editors, popovers, search |
| `GtkListStore` | 7 | TreeView model backends (debugger, flatpak, vcs) |
| `GtkSeparator` | 7 | Visual dividers in search bars, webkit page |
| `GtkOverlay` | 6 | Text editor page, primary workspace, search preview, terminal page, URL bar |
| `GtkShortcutsShortcut` | 6 | Shortcut hints (search popover, frame placeholder) |
| `GtkEventControllerKey` | 6 | Key capture in entries, terminals, search bars |
| `GtkGestureClick` | 6 | Click events in terminal, URL bar, IDE frame |
| `GtkToggleButton` | 5 | Search bar replace toggle, greeter selection mode |
| `GtkInscription` | 5 | List row text display (search results, todo panel, URL bar) |
| `GtkText` | 5 | Editable text in custom entries (search, grep, URL bar) |
| `GtkFilterListModel` | 4 | Build status popover (errors/warnings), shortcut search |
| `GtkColumnViewColumn` | 4 | Messages panel column view |
| `GtkSingleSelection` | 4 | Tree view, project tree, search |
| `GtkShortcutController` | 4 | Terminal, webkit page, search popover |
| `GtkProgressBar` | 4 | Page overlay loading bars, URL bar, notifications |
| `GtkSizeGroup` | 4 | Button size matching (info bar, URL bar, shortcut dialog) |
| `GtkSourceView` | 3 | `src/libide/editor/ide-editor-page.ui:24`, `src/libide/editor/ide-file-search-preview.ui:8`, `src/plugins/codeshot/gbp-codeshot-window.ui:16` |
| `GtkActionBar` | 3 | `src/libide/greeter/ide-greeter-workspace.ui:91,100`, `src/plugins/shortcutui/gbp-shortcutui-dialog.ui:94` |
| `GtkCustomFilter` | 2 | `src/plugins/buildui/gbp-buildui-status-popover.ui:118-119` |
| `GtkInfoBar` | 2 | `src/libide/editor/ide-editor-info-bar.ui:9,53` (file access + unsaved restore) |
| `GtkEventControllerFocus` | 2 | URL bar editable, editor source view |
| `GtkCenterBox` | 2 | `src/libide/gui/ide-header-bar.ui:24`, `src/libide/webkit/ide-webkit-page.ui:21` |
| `GtkViewport` | 2 | Greeter workspace, create-project widget |
| `GtkStackSwitcher` | 2 | `src/plugins/vcsui/gbp-vcsui-switcher-popover.ui:11`, `src/plugins/buildui/gbp-buildui-status-popover.ui:11` |
| `GtkSourceBuffer` | 2 | File search preview buffer, codeshot window |
| `GtkSourceMap` | 1 | `src/libide/editor/ide-source-map.ui:5` (overview minimap) |
| `GtkScrollbar` | 1 | `src/libide/editor/ide-scrollbar.ui:5` (custom overlay scrollbar) |
| `GtkColumnView` | 1 | `src/plugins/messages/gbp-messages-panel.ui:11` |
| `GtkDropTargetAsync` | 1 | `src/libide/terminal/ide-terminal.ui:76` |
| `GtkPicture` | 1 | `src/libide/gui/ide-style-variant-preview.ui:15` |
| `GtkLinkButton` | 1 | `src/libide/plugins/ide-plugin-view.ui:77` (website link) |
| `GtkHeaderBar` | 1 | Meson template (non-Adw) |
| `GtkFlowBox` | 1 | Theme selector |
| `GtkTreeExpander` | 1 | Test panel |
| `GtkTreeStore` | 1 | Templates file tree |
| `GtkStringList` | 1 | Models |
| `GtkStringFilter` | 1 | `src/plugins/shortcutui/gbp-shortcutui-dialog.ui:103` |
| `GtkCustomSorter` | 1 | `src/plugins/shortcutui/gbp-shortcutui-dialog.ui:131` |
| `GtkSignalListItemFactory` | 1 | `src/libide/tree/ide-tree.ui:18` |
| `GtkCellRendererToggle` | 1 | Debugger breakpoints enabled column |
| `GtkCellRendererPixbuf` | 1 | Templates file tree icons |
| `GtkEventControllerMotion` | 1 | `src/libide/editor/ide-scrollbar.ui:11` |
| `GtkShortcutsWindow` | 1 | Builder shortcuts help |
| `GtkShortcutsSection` | 1 | Builder shortcuts sections |
| `GtkShortcutsGroup` | 1 | Builder shortcuts groups |
| `GtkListHeader` | 1 | `src/plugins/manuals/gbp-manuals-panel.ui:43` (section headers) |
| `GtkTreeSelection` | 1 | Flatpak install dialog |
| `GtkCssProvider` | 1 | `src/libide/gtk/ide-install-button.ui:43` |

### Adwaita (Adw) Widgets

| Widget | Est. Usage | Key Files |
|--------|-----------|-----------|
| `AdwHeaderBar` | 17 | Header bars in every AdwToolbarView |
| `AdwToolbarView` | 16 | Primary layout pattern: editor workspace, primary workspace, tweaks, codeshot, create-project, clone page, shortcutui, flatpak, build-targets, meson template |
| `AdwPreferencesGroup` | 34 | Tweaks system (preferences across all tweaks pages) |
| `AdwPreferencesPage` | 6 | `src/libide/tweaks/ide-tweaks-panel.ui:13`, `src/plugins/buildui/gbp-buildui-targets-dialog.ui:11`, `src/plugins/create-project/gbp-create-project-widget.ui:11`, `src/plugins/shortcutui/gbp-shortcutui-dialog.ui:17` |
| `AdwComboRow` | 7 | `src/plugins/create-project/gbp-create-project-widget.ui:115,122,125` (language, license, template), tweaks combo row |
| `AdwEntryRow` | 12 | `src/plugins/create-project/gbp-create-project-widget.ui:16,48,82` (name, app ID, location) |
| `AdwActionRow` | 7 | Build targets dialog, tweaks, various rows |
| `AdwShortcutLabel` | 7 | `src/libide/gtk/ide-shortcut-accel-dialog.ui:96`, `src/libide/gui/ide-frame.ui:24,44,64,84`, `src/libide/gui/ide-search-popover.ui:279`, `src/plugins/shortcutui/gbp-shortcutui-row.ui:5` |
| `AdwStatusPage` | 5 | `src/libide/gui/ide-frame.ui:5` (empty workspace), `src/libide/gui/ide-search-popover.ui:83` (empty search), `src/libide/greeter/ide-greeter-workspace.ui:78` (no projects), `src/plugins/shortcutui/gbp-shortcutui-dialog.ui:50` (no matches), `src/plugins/todo/gbp-todo-panel.ui:12` (loading) |
| `AdwSpinner` | 5 | `src/libide/gui/ide-search-popover.ui:54`, `src/plugins/buildui/gbp-buildui-targets-dialog.ui:20`, `src/plugins/buildui/gbp-buildui-status-popover.ui:26`, `src/plugins/codeui/gbp-codeui-code-action-dialog.ui:29`, `src/plugins/vcsui/gbp-vcsui-clone-page.ui:67` |
| `AdwWindowTitle` | 4 | Editor workspace, primary workspace, greeter workspace |
| `AdwBin` | 12 | Drop highlight, style variant preview, debugger views, notification view |
| `AdwClamp` | 2 | `src/libide/gui/ide-primary-workspace.ui:70` (omnibar centering), `src/libide/greeter/ide-greeter-workspace.ui:64` (greeter section centering) |
| `AdwSplitButton` | 1 | `src/libide/gui/ide-run-button.ui:6` |
| `AdwDialog` | 2 | `src/libide/gui/ide-search-popover.ui:3`, `src/plugins/flatpak/gbp-flatpak-install-dialog.ui:14` |
| `AdwNavigationView` | 2 | `src/libide/greeter/ide-greeter-workspace.ui:6`, `src/libide/tweaks/ide-tweaks-window.ui:23` |
| `AdwNavigationPage` | 6 | Greeter page, tweaks panel, tweaks panel list, create-project widget, clone page |
| `AdwNavigationSplitView` | 1 | `src/libide/tweaks/ide-tweaks-window.ui:19` (preferences sidebar) |
| `AdwBreakpoint` | 1 | `src/libide/tweaks/ide-tweaks-window.ui:10` (fold sidebar on small screens) |
| `AdwShortcutsItem` | 2 | Shortcuts search UI |
| `AdwShortcutsSection` | 1 | Shortcuts search |
| `AdwShortcutsDialog` | 1 | Shortcuts help overlay |
| `AdwSwitchRow` | 2 | `src/plugins/create-project/gbp-create-project-widget.ui:128` (version control toggle) |
| `AdwWindow` | 6 | Shortcut accelerator dialog, tweaks window, codeshot window, shortcutui dialog, build targets dialog |

### WebKit

| Widget | Est. Usage | Key Files |
|--------|-----------|-----------|
| `WebKitWebView` | 1 | `src/libide/webkit/ide-webkit-page.ui:85` |
| `WebKitSettings` | 1 | `src/libide/webkit/ide-webkit-page.ui:112` |

### Custom Builder Widgets (Ide*, Gbp*, Panel*)

Over 70 custom widget types defined. Major categories:

**Core IDE widgets (`Ide*`):**
`IdeEditorPage`, `IdeEditorSearchBar`, `IdeEditorWorkspace`, `IdeEditorInfoBar`, `IdeFileSearchPreview`, `IdeScrollbar`, `IdeSourceMap`, `IdeSourceView`, `IdeSearchPreview`, `IdeGreeterWorkspace`, `IdeGreeterRow`, `IdeGreeterButtonsSection`, `IdeEntryPopover`, `IdeInstallButton`, `IdeSearchEntry`, `IdeShortcutAccelDialog`, `IdeFrame`, `IdeHeaderBar`, `IdeNotificationView`, `IdeNotificationsButton`, `IdeNotificationListBoxRow`, `IdeNotificationStack`, `IdeOmniBar`, `IdePage`, `IdePrimaryWorkspace`, `IdeRunButton`, `IdeSearchPopover`, `IdeStyleVariantPreview`, `IdePluginView`, `IdeTerminalPage`, `IdeTerminal`, `IdeTerminalSearch`, `IdeTerminalPopover`, `IdeTerminalPopoverRow`, `IdeTree`, `IdeTreeExpander`, `IdeUrlBar`, `IdeWebkitPage`, `IdeWebkitWorkspace`, `IdeJoinedMenu`, `IdeUniqueListModel`, `IdeVcsCloneRequest`, `IdeTemplateInput`, `IdeProgressIcon`, `IdeGrid`, `IdeScrubberRevealer`, `IdeEnvironmentEditorRow`, `IdeEnumObject`, `IdeSettings`

**Panel system (`Panel*`):**
`PanelDock`, `PanelDockChild`, `PanelPaned`, `PanelFrame`, `PanelWidget`, `PanelStatusbar`, `PanelToggleButton`, `PanelOmniBar`, `PanelList`, `PanelListRow`

**Tweaks system (`IdeTweaks*`):**
`IdeTweaks`, `IdeTweaksSection`, `IdeTweaksPage`, `IdeTweaksGroup`, `IdeTweaksSetting`, `IdeTweaksWidget`, `IdeTweaksChoice`, `IdeTweaksSwitch`, `IdeTweaksRadio`, `IdeTweaksCombo`, `IdeTweaksSpin`, `IdeTweaksProperty`, `IdeTweaksEntry`, `IdeTweaksFont`, `IdeTweaksInfo`, `IdeTweaksCaption`, `IdeTweaksFactory`, `IdeTweaksDirectory`, `IdeTweaksWindow`, `IdeTweaksPanel`, `IdeTweaksPanelList`, `IdeTweaksPanelListRow`, `IdeTweaksComboRow`

**Plugin widgets (`Gbp*`):**
Over 40 plugin-specific widgets — see pattern section below.

---

## 2. GNOME / Adwaita Patterns Demonstrated

### Core Application Architecture

| Pattern | Description |
|---------|-------------|
| `AdwToolbarView` + `AdwHeaderBar` | Primary content layout for nearly every workspace and dialog: editor workspace, primary workspace, tweaks, codeshot, create-project, clone page, shortcutui, flatpak dialog, meson template |
| `AdwNavigationView` + `AdwNavigationPage` | Stack-based navigation used in the greeter (project picker) and preferences window (tweaks sidebar) |
| `AdwNavigationSplitView` | Split sidebar+content in preferences/tweaks window with collapsible sidebar |
| `AdwBreakpoint` | Adaptive folding: preferences sidebar collapses at `max-width: 560sp` |
| `AdwStatusPage` | Empty/loading states: empty workspace, no search results, no projects found, keyboard shortcut not found, loading TODOs |
| `AdwClamp` | Centered content with max-width: omnibar (800px), greeter sections (600px) |
| `AdwSplitButton` | Run button with dropdown menu for run targets |
| `AdwDialog` | Modern dialogs: global search popover, Flatpak install dialog |
| `AdwWindow` | Modern app windows: shortcut accel dialog, tweaks, codeshot, shortcutui, build targets |
| `AdwPreferencesPage` + `AdwPreferencesGroup` | System preferences / settings UI across the entire tweaks system |
| `AdwEntryRow` / `AdwComboRow` / `AdwSwitchRow` | Form rows inside preferences groups for create-project, build targets, tweaks |
| `AdwActionRow` | Actionable list rows with suffix widgets |
| `AdwSpinner` | Loading spinners in search, build targets, code actions, clone page |
| `AdwShortcutLabel` | Keyboard shortcut display in empty workspace helper, shortcut editing dialog, search results |
| `AdwBin` | Generic container used for drop highlights, debugger views, style preview |

### List & Column Patterns

| Pattern | Description |
|---------|-------------|
| `GtkListView` + `GtkBuilderListItemFactory` | Modern list widgets with inline XML templates; used in search results, build status popovers, project tree, find-other-file, manuals, symbols, todos, unit tests, VCS switcher |
| `GtkColumnView` + `GtkColumnViewColumn` | Multi-column data display with inline factories; used in Messages panel (time/severity/section/message columns) |
| `GtkNoSelection` + `GtkFilterListModel` | Read-only filtered lists for build diagnostics, messages, VCS branches/tags |
| `GtkStringFilter` + `GtkFilterListModel` | String-based filtering: shortcutui search with substring matching |
| `GtkCustomFilter` | Custom filter functions for build status (errors/warnings separation) |
| `GtkSingleSelection` | Single-select list model used in search, project tree |
| `GtkTreeView` + `GtkListStore` + `GtkTreeViewColumn` + `GtkCellRendererText` | Legacy tree views for debugger breakpoints, flatpak install, grep results |
| `GtkListBox` + `GtkListBoxRow` | Traditional list boxes for notifications, newcomer projects, terminal popover, build targets, shortcut search results |

### Search, Find & Navigation

| Pattern | Description |
|---------|-------------|
| `GtkSearchEntry` + `GtkSearchBar` pattern | Search entries in panels everywhere: project tree filter, todo filter, manuals filter, terminal popover search, symbols filter, greeter search, shortcuts search |
| `IdeSearchPopover` (extends `AdwDialog`) | Global "search for anything" dialog with prefix-based filtering (~=files, @=symbols, ?=docs, >=actions) |
| `GtkRevealer` + search bar pattern | Slide-up search reveal in editor page, terminal page, webkit page |
| `GtkText` + custom entry widget (`IdeSearchEntry`) | Custom search text entries with icon, placeholder, and match count display |
| `GtkMenuButton` + popover pattern | Options menus for search (regex, case, whole-word), build menu, header menus |
| `GtkStackSwitcher` + `GtkStack` | Tab switching in VCS popover (branches/tags), build status popover (errors/warnings) |
| `GtkInscription` + `GtkLabel` in list rows | Two-line list items (title + subtitle/caption) with ellipsizing |

### Editor Patterns

| Pattern | Description |
|---------|-------------|
| `GtkSourceView` | Core editor widget with monospace, line margins |
| `GtkSourceMap` | Overview minimap in editor |
| `GtkOverlay` + custom `IdeScrollbar` | Overlay scrollbar on top of editor |
| `GtkScrolledWindow` + `vscrollbar-policy=external` | External scrollbar for editor |
| `GtkInfoBar` | Info bars for file access errors and unsaved document recovery |
| `GtkRevealer` + slide-up transition | Search bar reveal/hide in editor and terminal |
| `IdeScrubberRevealer` | Custom revealer with scrubber (minimap) for editor page |

### Terminal Patterns

| Pattern | Description |
|---------|-------------|
| `VteTerminal` (`IdeTerminal`) | Embedded terminal widget |
| `GtkDropTargetAsync` (drag-and-drop) | File drop onto terminal (drag-enter, drag-leave, drop signals) |
| `GtkShortcutController` + `GtkShortcut` | Terminal clipboard shortcuts (Ctrl+Shift+C/V), right-click menu |
| `GtkGestureClick` (capture + bubble) | Multi-phase click handling for hyperlinks |
| `GtkRevealer` + `crossfade` | Terminal size display overlay |

### Dialogs & Popovers

| Pattern | Description |
|---------|-------------|
| `GtkPopover` | Extensive use for: notifications, terminal runtime picker, entry popovers, find-other-file, VCS branch/tag switcher, build status, grep options, symbol tree |
| `AdwDialog` | Global search (1000×600 dialog), Flatpak SDK install confirmation |
| `AdwWindow` (modal, non-resizable) | Shortcut accelerator capture dialog (400×300) |
| `GtkActionBar` | Bottom action bars in greeter (selection mode), shortcutui (reset/edit) |

### Docking & Workspace Layout

| Pattern | Description |
|---------|-------------|
| `PanelDock` + `PanelDockChild` | Builder's custom docking system with start/center/end/bottom areas |
| `PanelPaned` | Resizable paned areas within dock (vertical + horizontal) |
| `PanelFrame` | Page content frame with built-in placeholder (AdwStatusPage) |
| `PanelStatusbar` | Bottom status bar with toggle buttons |
| `PanelToggleButton` | Toggle left/right/bottom panel visibility |
| `PanelOmniBar` (`IdeOmniBar`) | Center build/run omnibar with popover, notifications, build button, prefix/suffix, placeholder |

### Custom Input & Interaction

| Pattern | Description |
|---------|-------------|
| `GtkEventControllerKey` (capture phase) | Key handling in terminals, search entries, text fields |
| `GtkEventControllerFocus` | Focus tracking for URL bar enter/leave |
| `GtkEventControllerMotion` | Mouse motion for overlay scrollbar enter/leave |
| `GtkGestureClick` (capture+bubble phases) | Terminal hyperlink click detection, URL bar click-to-edit |
| `GtkShortcutController` | Global keyboard shortcuts in terminal, webkit page, search popover |
| `GtkSizeGroup` (horizontal mode) | Button size synchronization in info bars, URL bar, shortcut dialogs |
| `GtkCssProvider` | Dynamic CSS loading for install button progress animation |
| `GtkPicture` | Wallpaper image preview in style variant selector |

### Preferences / Tweaks System

| Pattern | Description |
|---------|-------------|
| `IdeTweaks` + `IdeTweaksSection` + `IdeTweaksPage` + `IdeTweaksGroup` + `IdeTweaksSetting` | Fully custom preferences hierarchy with sections, pages, groups, and typed settings |
| `IdeTweaksSwitch` / `IdeTweaksChoice` / `IdeTweaksRadio` / `IdeTweaksCombo` / `IdeTweaksSpin` / `IdeTweaksEntry` / `IdeTweaksFont` / `IdeTweaksDirectory` | Typed preference widgets for boolean, choice, combo, spin, text, font, directory settings |
| `IdeTweaksWindow` + `AdwNavigationSplitView` + `AdwBreakpoint` | Preferences window with adaptive sidebar |
| `IdeTweaksPanel` + `AdwPreferencesPage` | Preferences pages rendered into AdwPreferencesPage containers |
| `IdeTweaksPanelList` + `AdwNavigationPage` | Navigable list of settings panels |

### Plugin-Specific Patterns

| Pattern | Description |
|---------|-------------|
| `GbpCodeshotWindow` | Source code screenshot window — GtkSourceView in non-editable mode |
| `GbpCreateProjectWidget` + `AdwEntryRow`/`AdwComboRow`/`AdwSwitchRow` | Form-based project creation with real-time validation |
| `GbpNewcomersSection` + `GbpNewcomersProject` | Curated list of GNOME newcomer projects (hardcoded in UI) |
| `GbpMessagesPanel` + `GtkColumnView` | Multi-column message log (time, severity, section, message) |
| `GbpBuilduiPane` + `AdwActionRow` | Build status pipeline with stages list |
| `GbpBuilduiTargetsDialog` + `AdwPreferencesPage` | Build target selection with automatic discovery toggle |
| `GbpBuilduiStatusPopover` | StackSwitcher (errors/warnings) with GtkFilterListModel per tab |
| `GbpGrepPanel` + `GtkTreeView` | Find/replace in files with regex, case, whole-word options in popover |
| `GbpManualsPanel` + `GtkListHeader` | Documentation browser with section headers and since/deprecated tags |
| `GbpShortcutuiDialog` + `GtkStringFilter` + `GtkCustomSorter` | Keyboard shortcut search with filtering and sorting |
| `IdeDebuggerBreakpointsView` + `GtkTreeView` + `GtkCellRendererToggle` | Multi-column breakpoint table with checkboxes |
| `IdeDebuggerControls` + `GtkRevealer` | Debug controls bar (pause/continue/step-in/step-over/finish) using slide-right revealer |
| `GbpVcsuiSwitcherPopover` + `GtkStackSwitcher` | Branch/tag switcher using stacked pages |
| `GbpFlatpakInstallDialog` + `AdwDialog` + `GtkTreeView` | Flatpak SDK install confirmation with runtime list |
| `GbpTodoPanel` + `GtkInscription` | TODO/FIXME list with heading + caption two-line items |
| `GbpTestuiPanel` + `IdeTreeExpander` | Unit test tree with expandable items |
| `GbpSymbolPopover` + `GtkListView` | Symbol browser popover with search |
| `GbpFindOtherFilePopover` | Header/source switcher popover with icon-based file list |
| `GbpProjectTreePane` + `GtkListView` | Project file tree with search results stack |
| `GbpCodeuiRangeDialog` / `GbpCodeuiRenameDialog` / `GbpCodeuiCodeActionDialog` | Code refactoring dialogs |

### Template System

| Pattern | Description |
|---------|-------------|
| `meson-templates/resources/src/window-gtk4.ui` | Templated window generation with {{Prefix}}, {{Title}}, {{if is_adwaita}} conditionals |
| `shortcuts-file.ui` | Template shortcut definitions |

### CSS Class Patterns (from all `.ui` files)

| CSS Class | Usage Context |
|-----------|---------------|
| `flat` | Flat-styled icon buttons: search bars, debug controls, header buttons, code actions |
| `dim-label` | Secondary/dimmed text labels throughout |
| `suggested-action` | Affirmative action buttons (install, create project, set shortcut) |
| `destructive-action` | Destructive buttons (remove projects, replace in project, reset shortcuts) |
| `circular` | Circular close buttons in search bars |
| `pill` | Pill-shaped buttons: open file, new terminal, create project |
| `boxed-list` | Preferences-style list box styling |
| `navigation-sidebar` | Sidebar list styling for tree view, project tree, todo panel, build stages |
| `caption` | Caption text styling (small/lighter text in list items) |
| `heading` | Heading text in list items and panels |
| `osd` | On-screen-display progress bars (overlays) |
| `menu` | Menu/popover styling for popovers |
| `image-button` | Button with image content |
| `small-button` | Compact buttons (circular close buttons) |
| `text-button` | Text-labeled buttons |
| `title-1` | Large title text (meson template) |
| `card` | Card-style containers |
| `search` | Search results styling |
| `statusbar` | Status bar styling for inline search entries |
| `toolbar` | Webkit page toolbar |
| `sidebar` | Sidebar panel styling |
| `undershoot-top` / `undershoot-bottom` | Scroll undershoot indicators for lists |
| `linked` | Linked widget groups |
| `view` | View/container styling |
| `data-table` | ColumnView data table styling |
| `warning` / `error` | Message type indicators |
| `selection-mode` | Greeter selection mode checkbox |
| `wallpaper` | Style variant wallpaper preview |
| `overlay-indicator` | Overlay scrollbar indicator |
| `drop-highlight` | Drag-drop highlight in terminal |
| `checkimage` | Check image for toggle in build targets |
| `notifications-list` / `notificationsbutton` | Notification popover styling |
| `popover-content-area` | Popover content container |
| `commandbox` / `commandentry` | Shell command editor |
| `search-popover` | Search popover styling |
| `global-search` | Global search dialog |
| `preview-bin` | Search preview pane |
| `style-schemes` | Style scheme container |
| `shortcutui` | Shortcut editor window |
| `codeshot` | Codeshot window |
| `devel` | Development/devel-style window |
| `since` / `deprecated` | Documentation tags (manuals browser) |
| `editor-scrolledview` | Editor scroll view |
| `body` | Notification body text |
| `error` | InfoBar error type |
| `small` | Small text |
| `greeter` | Greeter workspace |

---

## 4. Notable Design Elements

### Accessibility Annotations
- **No explicit `accessible` or `aria-*` attributes found** in any `.ui` files. Builder relies on GTK/Adwaita's built-in accessibility through AT-SPI rather than explicit annotations. Widget labels are translatable via `translatable="yes"` on nearly all user-visible strings.

### CSS and Theming
- **`property name="css-name"` (or `css-name`)** used in 4 files: global search (`search`), grep panel entries, tree view filter entries — to provide semantic CSS names distinct from widget class names
- **`property name="css-classes"`** used in IdeSearchPreview for `search-preview` class
- **23 GtkSourceView style schemes** (XML format — not CSS) providing dark/light themes: Builder Dark/Light, Arctic, Catppuccin Latte/Mocha, Fishtank, Horizon, Monokai Soda, Peninsula, Pixiefloss, Spacedust, Tokyo Night, Ubuntu, VSCode, XTerm

### Unusual Widget Configurations

1. **`GtkShortcut` trigger syntax** (`<ctrl>f`, `<shift>F10`, `Escape`): Programmatic shortcut definitions in terminal and webkit capture controllers, rather than using `<accelerator>` attributes
2. **`<![CDATA[ ... ]]>` inline XML templates**: `GtkBuilderListItemFactory` extensively uses CDATA sections to embed complete `<interface>` segments (with their own `<template class="GtkListItem">`) directly as a byte-string property
3. **`GtkStack.transition-type=crossfade` + `interpolate-size=True`**: Smooth size-interpolated transitions between stack pages in build status popover and VCS switcher
4. **`GtkScrolledWindow` `max-content-width`/`max-content-height`**: Controlled popover sizing using content constraints (300-600px range in many popovers)
5. **`property name="propagate-natural-width/height"`**: Popover list sizing from content in manuals, find-other-file, terminal popover, symbols
6. **`GtkGestureClick` with multiple propagation phases** (`capture` + `bubble`): Terminal uses both phases for hyperlink click detection — capture first to detect links, bubble for fallback
7. **`GtkShortcutController.propagation-phase=capture`**: Keyboard shortcuts in terminal capture before VTE processes them
8. **`GtkOverlay` with overlay progress bars**: Page loading progress shown as thin overlay bars (editor page, webkit URL bar, search preview) using `<class name="osd"/>` CSS
9. **`PanelToggleButton` referencing `dock`/`area` properties**: Builder's custom panel toggle buttons introspect dock instances for area/tooltip configuration
10. **`GtkSizeGroup` for button alignment**: Used to keep action buttons (discard/save, cancel/set, edit image/URL controls) the same width
11. **`GbpNewcomersProject`**: Hardcoded list of 11 GNOME projects embedded directly in `.ui` file — unusual for a data-driven UI
12. **`IdeTweaksSection.hidden-when`**: Sections conditionally shown/hidden based on application vs project preferences context
13. **`attribute name="display-hint" value="inline-buttons"`**: Menu sections displayed as inline button rows in context menus
14. **`GtkInscription` for rich text display**: Used in list items (search results, todo items, URL display) for advanced text overflow and multiline content — a GTK 4 novelty
15. **`ManualsTag` custom widget**: Inline badges showing "Since" and "Deprecated" version tags in the documentation browser

### Drag-and-Drop

Only **`GtkDropTargetAsync`** found in terminal (line 76 of `src/libide/terminal/ide-terminal.ui`). Signals connected: `drop`, `drag-enter`, `drag-leave` for file path drop support. No `GtkDragSource` widgets defined in any `.ui` file.

### Event Controllers

- **9 `GtkEventControllerKey`** instances — primarily in search bars and terminal for custom key capture
- **6 `GtkGestureClick`** instances — terminal link clicks, greeter row clicks, URL bar edit mode activation
- **4 `GtkShortcutController`** instances — terminal, webkit page, search popover
- **2 `GtkEventControllerFocus`** instances — editor source view, URL bar editable
- **1 `GtkEventControllerMotion`** instance — overlay scrollbar hover

### Menu System (GTK 4 `menu` elements)

Menu definitions are interleaved in `.ui` files (not standalone). Menus use the `<menu>`, `<section>`, `<item>`, `<attribute>` XML vocabulary. Key menus:
- `ide-editor-workspace-menu` (editor workspace)
- `ide-primary-workspace-menu` (primary project workspace)
- `ide-greeter-workspace-menu` (greeter)
- `ide-editor-page-menu` (context menu for editor page)
- `ide-source-view-popup-menu` (right-click context menu with inline buttons)
- `new-document-menu` — categories for new documents, terminals, browsers
- `terminal_menu` — terminal right-click
- `build_menu` — build action dropdown
- `severity_menu` — messages panel severity filter

Menu features demonstrated:
- **`display-hint="inline-buttons"`**: Clipboard and diagnostic sections rendered as icon button rows
- **`hidden-when="action-disabled"`**: Menu items auto-hidden when action unavailable
- **`role="check"`**: Check mark items for toggle states
- **`custom` attribute**: Theme selector custom widget injection
- **`page`/`group` attributes**: Organizing items for shortcuts help overlay
- **`verb-icon`**: Icon alternatives for menu items
- **`submenu`**: Nested menus for select/format sections
