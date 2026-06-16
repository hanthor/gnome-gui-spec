# AdwSwitchRow

**Package**: libadwaita-1  
**Use**: Binary on/off toggle in preferences.

## Blueprint
```
Adw.SwitchRow {
  title: _("Display _Line Numbers");
  use-underline: true;
  subtitle: _("Show line numbers in the editor");  /* optional */
}
```

## XML
```xml
<object class="AdwSwitchRow">
  <property name="title" translatable="yes">Display _Line Numbers</property>
  <property name="use-underline">True</property>
  <property name="subtitle" translatable="yes">Show line numbers in the editor</property>
</object>
```

## Properties
| Property | Type | Required |
|----------|------|----------|
| `title` | string | **Yes** (with `_` accent) |
| `use-underline` | bool | **Yes** — always true |
| `subtitle` | string | No |
| `active` | bool | No (default: false) |

## Code (Rust)
```rust
let row = adw::SwitchRow::new();
row.set_title("_Dark Mode");
row.set_use_underline(true);
row.set_subtitle("Use dark theme");
```

## Code (Python)
```python
row = Adw.SwitchRow()
row.set_title("_Dark Mode")
row.set_use_underline(True)
row.set_subtitle("Use dark theme")
# Bind to GSettings
settings.bind("dark-mode", row, "active", Gio.SettingsBindFlags.DEFAULT)
```

## Code (C)
```c
AdwSwitchRow *row = ADW_SWITCH_ROW(adw_switch_row_new());
adw_preferences_row_set_title(ADW_PREFERENCES_ROW(row), _("_Dark Mode"));
adw_preferences_row_set_use_underline(ADW_PREFERENCES_ROW(row), TRUE);
g_settings_bind(settings, "dark-mode", adw_switch_row_get_activatable_widget(row), "active", G_SETTINGS_BIND_DEFAULT);
```

## When NOT to use
If you need a subtitle + switch, consider `AdwActionRow` + `GtkSwitch` in `[suffix]` for more layout control.

## See Also
- components/preferences-group.md
- components/action-row.md
