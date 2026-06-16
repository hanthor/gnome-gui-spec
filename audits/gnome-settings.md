# GNOME Settings (gnome-control-center) — GUI Audit

**Framework**: C + GTK 4 + libadwaita  
**UI Format**: Blueprint (.blp)  
**ID**: org.gnome.Settings

## Architecture
- `AdwApplication` → `CcShell` window
- Each panel is a self-contained widget implementing `CcPanel` interface
- Panels loaded dynamically as plugins
- Sidebar navigation for panel list (not ViewSwitcher — too many panels)

## Key Patterns
1. **PreferencesPage + PreferencesGroup**: The canonical reference implementation
2. **BreakpointBin + Breakpoint**: Adaptive layout conditions (`max-width: 500sp`)
3. **ViewSwitcher + ViewStack**: Used WITHIN panels for sub-pages (Mouse→Touchpad→Pointing Stick)
4. **ViewSwitcherBar**: Bottom bar for narrow/mobile switching
5. **Custom row widgets**: CcListRow, CcSplitRow (illustrated 2-option), CcIllustratedRow (illustrated single), CcContentRow (abstract base)

## Control Usage
- `AdwSwitchRow`: For simple toggles
- `AdwActionRow` + Switch: Switch placed in `[suffix]` slot
- `AdwActionRow` + Scale: Speed/volume sliders in `[suffix]`
- `AdwSpinRow`: Numeric values
- `AdwButtonRow`: Navigation actions with `go-next-symbolic`
- `Adw.ComboRow`: Dropdown selections
- `AdwToggleGroup` + `AdwToggle`: Button group alternatives
- `CheckButton` in `[prefix]` of ActionRow: Radio groups
- `CcSplitRow`: Two-option illustrated picker with video/webm animations

## Adaptive Patterns
- `Adw.HeaderBar` title-widget: Switches between ViewSwitcher (wide) and WindowTitle (narrow)
- `CcSplitRow.compact` and various `.compact` properties toggle in breakpoints
- Minimum width: 300px

## Settings Storage
- GSettings exclusively (dconf backend)
- No custom config files

## Notable Details
- Info buttons (`CcListRowInfoButton`) in suffix for explanatory tooltips
- `header-suffix` on PreferencesGroup for group-level controls (e.g., sound test button, level bar)
- `AdwPreferencesRow` for custom non-standard rows (e.g., volume slider with label)
