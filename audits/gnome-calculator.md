# GNOME Calculator — GUI Audit

**Framework**: Vala + GTK 4 + libadwaita  
**UI Format**: Blueprint (.blp)  
**ID**: org.gnome.Calculator

## Architecture
- MathWindow (AdwApplicationWindow)
- Button layouts per mode: basic, advanced, financial, programming, keyboard, conversion
- Menu-based mode switching (6 modes — too many for ViewSwitcher)

## Mode Switching
```blueprint
menu window_menu {
  section {
    item { label: _("_Basic"); action: "win.mode"; target: "basic"; }
    item { label: _("_Advanced"); action: "win.mode"; target: "advanced"; }
    item { label: _("_Financial"); action: "win.mode"; target: "financial"; }
    item { label: _("_Programming"); action: "win.mode"; target: "programming"; }
    item { label: _("_Keyboard"); action: "win.mode"; target: "keyboard"; }
    item { label: _("_Conversion"); action: "win.mode"; target: "conversion"; }
  }
}
```

## Preferences
- `AdwPreferencesDialog` (MathPreferencesDialog)
- `AdwSpinRow` with `numeric: true` and `value` property
- `AdwSwitchRow` for toggles (trailing zeroes, group digits)
- `AdwComboRow` with `StringList` model (angle units, word size)
- `AdwComboRow` with `model: StringList { strings [...] }`
- `AdwActionRow` → `AdwImage go-next-symbolic` for navigation to sub-pages
- **Sub-page**: `AdwNavigationPage` with search entry + list/filter for currency selection

## Key Patterns
1. **GAction-based mode switching**: `action: "win.mode"` with string targets
2. **Custom button layouts**: Different `.blp` files per mode (buttons-basic.blp, buttons-advanced.blp, etc.)
3. **Menu model with inline format options**: Result Format section with radio-like menu items
4. **`hidden-when: "action-disabled"`**: Hides menu items when action is not available
5. **Popover-based sub-widgets**: MathFunctionPopover, MathVariablePopover

## Preferences Sub-Navigation
```
Adw.NavigationPage "page_favorite_currencies" {
  title: _("Favorite Currencies");
  child: Adw.ToolbarView {
    [top] Adw.HeaderBar {}
    [top] Adw.Clamp { SearchEntry { placeholder-text: _("Search currencies"); } }
    content: Stack {
      Adw.PreferencesPage { Adw.PreferencesGroup { /* currency rows */ } }
      Adw.StatusPage { title: _("No Results Found"); /* empty search */ }
    }
  }
}
```

## Notable
- Vala language (`.vala` source files)
- `Adw.Clamp` for max-width constraint on search
- Stack switching for search results vs empty state
- `Gtk.StringList` used as ComboRow model
