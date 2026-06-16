# GNOME Files (Nautilus) — GUI Audit

**Framework**: C + GTK 4 + libadwaita  
**UI Format**: Blueprint (.blp)  
**ID**: org.gnome.Nautilus

## Architecture
- Complex multi-window app with extensive view system
- Separate window, properties window, preferences dialog
- Most UI defined in Blueprint `.blp` files

## Key Patterns

### Preferences Dialog
- `AdwPreferencesDialog` with `search-enabled: true`
- `AdwPreferencesGroup` with `description` property for context
- **Radio groups**: `CheckButton` in `[prefix]` of `AdwActionRow`, using `group: sibling_button` property
- `AdwSwitchRow`: Binary toggles (sort folders first, expandable folders, etc.)
- `AdwComboRow`: Multi-option settings (open action, search, thumbnails, count)

### Date/Time Format Radio Group
```
Adw.ActionRow {
  title: _("_Simple");
  [prefix] CheckButton date_format_simple_button {
    valign: center;
    action-name: "preferences.date-time-format";
    action-target: "'simple'";
  }
  activatable-widget: date_format_simple_button;
}
Adw.ActionRow {
  title: _("Deta_iled");
  [prefix] CheckButton date_format_detailed_button {
    group: date_format_simple_button;
    valign: center;
    action-name: "preferences.date-time-format";
    action-target: "'detailed'";
  }
}
```

### PreferencesGroup Patterns
- `description`: Context/explanation text below group title
- `title`: Section header
- Properties grouped semantically (General, Optional Actions, Performance, Date/Time)

## Views
- Grid View (icon view) with captions
- List View (column view)
- Both managed by `NautilusFilesView` → `Adw.Bin`
- `NautilusFloatingBar` overlay for selection actions

## Properties Window
- `Adw.Window` (secondary, modal)
- `width-request: 360, default-width: 480`
- Escape key closes via ShortcutController

## Dialogs
- `Adw.Window`-based: Batch rename, compress, file conflict, properties
- `AdwPreferencesDialog`: App preferences
- File chooser, new folder, search popover

## Notable
- Uses both Blueprint and traditional GtkBuilder XML
- `action-name` + `action-target` on CheckButtons for direct GAction binding
- Extensive use of ShortcutController for keyboard shortcuts
