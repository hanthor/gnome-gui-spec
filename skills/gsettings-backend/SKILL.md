# Skill: GSettings Backend for Preferences

## Goal: Store app preferences using the GNOME standard GSettings/GSchema system.

## GSchema XML

File: `data/org.example.MyApp.gschema.xml`

```xml
<?xml version="1.0" encoding="UTF-8"?>
<schemalist gettext-domain="myapp">
  <schema id="org.example.MyApp" path="/org/example/MyApp/">
    <key name="window-width" type="i">
      <default>800</default>
      <summary>Window width</summary>
    </key>
    <key name="window-height" type="i">
      <default>600</default>
      <summary>Window height</summary>
    </key>
    <key name="window-maximized" type="b">
      <default>false</default>
      <summary>Window maximized state</summary>
    </key>
    <key name="dark-mode" type="b">
      <default>false</default>
      <summary>Use dark theme</summary>
    </key>
    <key name="font-size" type="i">
      <default>12</default>
      <summary>Font size in points</summary>
      <range min="8" max="32"/>
    </key>
  </schema>
</schemalist>
```

**Key types**: `b` (bool), `i` (int), `s` (string), `d` (double), `as` (string array), `(ss)` (string tuple)

## Meson Build Integration

```meson
install_data(
  'org.example.MyApp.gschema.xml',
  install_dir: get_option('datadir') / 'glib-2.0' / 'schemas',
)

gnome.post_install(
  glib_compile_schemas: true,
)
```

## Binding Widgets

**C**:
```c
GSettings *settings = g_settings_new ("org.example.MyApp");
g_settings_bind (settings, "dark-mode", switch, "active", G_SETTINGS_BIND_DEFAULT);
g_settings_bind (settings, "font-size", spin_button, "value", G_SETTINGS_BIND_DEFAULT);
```

**Python**:
```python
from gi.repository import Gio
settings = Gio.Settings.new("org.example.MyApp")
settings.bind("dark-mode", switch, "active", Gio.SettingsBindFlags.DEFAULT)
settings.bind("font-size", spin_button, "value", Gio.SettingsBindFlags.DEFAULT)
```

**Rust**:
```rust
use gio::Settings;
let settings = Settings::new("org.example.MyApp");
settings.bind("dark-mode", &switch, "active").build();
```

## Window State Save/Restore

**C**:
```c
// Save on close
g_settings_set_int (settings, "window-width", width);
g_settings_set_int (settings, "window-height", height);
g_settings_set_boolean (settings, "window-maximized", maximized);

// Restore on open
gtk_window_set_default_size (window,
    g_settings_get_int (settings, "window-width"),
    g_settings_get_int (settings, "window-height"));
if (g_settings_get_boolean (settings, "window-maximized"))
    gtk_window_maximize (window);
```

## Custom Preference Widget Pattern (Text Editor style)

```xml
<object class="EditorPreferencesSwitch">
  <property name="title" translatable="yes">Display _Line Numbers</property>
  <property name="schema-key">show-line-numbers</property>
</object>
```

The custom widget reads `schema-key` and binds to GSettings internally.

## Real App References
- gnome-text-editor/data/org.gnome.TextEditor.gschema.xml
- Tavern: .flatpak-build/files/share/glib-2.0/schemas/dev.hanthor.Tavern.Devel.gschema.xml
