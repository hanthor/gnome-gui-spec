# GNOME Text Editor — GUI Audit

**Framework**: C + GTK 4 + libadwaita + GtkSourceView 5  
**UI Format**: GtkBuilder XML (.ui)  
**ID**: org.gnome.TextEditor

## Architecture
- `AdwApplication` → `EditorWindow` (AdwApplicationWindow)
- `AdwMultiLayoutView` with two `AdwLayout` children: "wide" and "narrow"
- Session management: saves/restores open tabs

## Key Patterns
1. **MultiLayoutView**: Two complete layout definitions (wide/narrow), switched by breakpoints
2. **AdwTabView + AdwTabBar**: Tabbed document editing
3. **AdwOverlaySplitView**: Properties sidebar (end-position, 350px min)
4. **AdwBottomSheet**: Properties panel on narrow screens (replaces sidebar)
5. **AdwStatusPage**: Empty state with suggested-action pill button
6. **GtkSourceView** embedded in preferences for live preview
7. **GtkFlowBox**: Theme/style scheme selector
8. **EditorFullscreenBox**: Fullscreen header/tab bar management
9. **AdwBreakpoint objects**: `max-width: 650sp` (narrow layout), `max-width: 400sp` (icon-only buttons)

## Header Bar
- Start: Open (MenuButton with popover + wide/narrow variants via Stack), New Tab
- Center: GtkCenterBox with title, subtitle, modified indicator
- End: Fullscreen restore button, Properties toggle, Primary menu
- Adaptive: Open button switches from label+icon (wide) to icon-only (narrow)

## Preferences
- `AdwPreferencesDialog` (not inline)
- `AdwPreferencesGroup` sections: Appearance, Font, Display, Spelling, Line Wrap, Indentation, Behavior
- Custom `EditorPreferencesSwitch` and `EditorPreferencesSpin` widgets with `schema-key` binding
- `AdwExpanderRow` + Switch `[action]` for expandable settings (Custom Font)
- `AdwButtonRow` with `.destructive-action` for Clear History
- `AdwComboRow` with custom model + expression binding

## Menu Patterns
- `primary_menu_model`: Standard sections (theme, zoom, new window, save, find/print, fullscreen, prefs/shortcuts/about)
- `tab_menu`: Tab context menu (move left/right, move to new window, close other/close)

## Shortcuts
- F11: Toggle fullscreen
- Alt+W: Toggle word wrap
- F9: Toggle properties sidebar
- Ctrl+,: Preferences
- Ctrl+N: New window (not new tab — that's handled by tab bar)

## Noteworthy
- `.flat` style on header bar menu buttons
- `.circular` style on sidebar row remove buttons
- `GtkInscription` used instead of GtkLabel for ellipsized text
- `GtkShortcutController` on window and toggle buttons
