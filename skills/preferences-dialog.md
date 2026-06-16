# Skill: Add a Preferences Dialog

## Goal
Add a standard GNOME preferences dialog accessible via Ctrl+comma.

## Blueprint Template
```
Adw.PreferencesDialog {
  search-enabled: true;
  content-width: 600;

  Adw.PreferencesPage {
    Adw.PreferencesGroup {
      title: _("Appearance");
      description: _("These settings control how the app looks.");

      Adw.SwitchRow {
        title: _("_Dark Mode");
        use-underline: true;
      }

      Adw.ComboRow {
        title: _("_Theme");
        use-underline: true;
        model: StringList { strings [_("Light"), _("Dark"), _("System")] };
      }
    }

    Adw.PreferencesGroup {
      title: _("Behavior");

      Adw.SpinRow {
        title: _("_Font Size");
        use-underline: true;
        numeric: true;
        adjustment: Adjustment { lower: 8; upper: 32; step-increment: 1; };
      }
    }

    Adw.PreferencesGroup {
      Adw.ButtonRow {
        title: _("_Clear History");
        use-underline: true;
        styles ["destructive-action"];
        activated => $on_clear_history_cb(template);
      }
    }
  }
}
```

## GSettings Schema
```xml
<schemalist>
  <schema id="org.example.MyApp" path="/org/example/MyApp/">
    <key name="dark-mode" type="b"><default>false</default><summary>Dark mode</summary></key>
    <key name="font-size" type="i"><default>12</default><summary>Font size</summary></key>
  </schema>
</schemalist>
```

## Menu Integration
```xml
<menu id="primary_menu">
  <section>
    <item>
      <attribute name="label" translatable="yes">P_references</attribute>
      <attribute name="action">win.show-preferences</attribute>
      <attribute name="accel">&lt;control&gt;comma</attribute>
    </item>
    <item>
      <attribute name="label" translatable="yes">_Keyboard Shortcuts</attribute>
      <attribute name="action">app.shortcuts</attribute>
    </item>
  </section>
</menu>
```

## Python Code
```python
from gi.repository import Adw, Gio

class MyApp(Adw.Application):
    def __init__(self):
        super().__init__(application_id='org.example.MyApp')
        self.create_action('shortcuts', self._on_shortcuts)

class MyWindow(Adw.ApplicationWindow):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        show_prefs = Gio.SimpleAction.new('show-preferences', None)
        show_prefs.connect('activate', self._on_preferences)
        self.add_action(show_prefs)
    
    def _on_preferences(self, action, param):
        builder = Gtk.Builder.new_from_resource('/org/example/MyApp/preferences.ui')
        dialog = builder.get_object('preferences_dialog')
        dialog.present(self)
```

## GSettings Binding (C)
```c
GSettings *settings = g_settings_new ("org.example.MyApp");
g_settings_bind (settings, "dark-mode", switch, "active", G_SETTINGS_BIND_DEFAULT);
```

## Real App References
- gnome-text-editor/src/editor-preferences-dialog.ui
- nautilus/src/resources/ui/nautilus-preferences-dialog.blp
- gnome-calculator/src/ui/math-preferences.blp
