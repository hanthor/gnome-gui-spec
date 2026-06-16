# Skill: Quick Start — New GNOME App From Scratch

## Goal: Create a minimal compliant GNOME app in one file.

## What You'll Build
A window with a header bar, two tabbed pages with ViewSwitcher, working adaptive layout, a hamburger menu with About, and a preferences dialog with one setting.

## Complete Blueprint (window.blp)

```
using Gtk 4.0;
using Adw 1;

template $MyWindow: Adw.ApplicationWindow {
  width-request: 360;
  height-request: 294;
  default-width: 600;
  default-height: 500;
  title: _("My App");

  Adw.Breakpoint {
    condition ("max-width: 500sp")
    setters { view_switcher_bar.reveal: true; }
  }

  content: Adw.ToolbarView {
    [top]
    Adw.HeaderBar {
      centering-policy: strict;

      title-widget: Adw.ViewSwitcher {
        stack: main_stack;
        policy: wide;
      };

      [end]
      MenuButton {
        icon-name: "open-menu-symbolic";
        tooltip-text: _("Main Menu");
        menu-model: primary_menu;
      }
    }

    content: Adw.ViewStack main_stack {
      Adw.ViewStackPage {
        name: "home";
        title: _("_Home");
        use-underline: true;
        icon-name: "go-home-symbolic";
        child: $MyHomePage {};
      }

      Adw.ViewStackPage {
        name: "about-page";
        title: _("_About");
        use-underline: true;
        icon-name: "info-symbolic";
        child: Adw.StatusPage {
          title: _("My App");
          description: _("A GNOME app built from the quick-start template.");
          icon-name: "application-x-executable-symbolic";
        };
      }
    };

    [bottom]
    Adw.ViewSwitcherBar view_switcher_bar {
      stack: main_stack;
      reveal: false;
    }
  };
}

menu primary_menu {
  section {
    item { label: _("P_references"); action: "win.show-preferences"; }
    item { label: _("_Keyboard Shortcuts"); action: "app.shortcuts"; }
    item { label: _("_About My App"); action: "app.about"; }
  }
}
```

## Preferences Blueprint (preferences.blp)

```
using Gtk 4.0;
using Adw 1;

Adw.PreferencesDialog preferences_dialog {
  search-enabled: true;
  content-width: 600;

  Adw.PreferencesPage {
    Adw.PreferencesGroup {
      title: _("Appearance");
      description: _("Control how the app looks.");

      Adw.SwitchRow {
        title: _("_Dark Mode");
        use-underline: true;
      }

      Adw.ComboRow {
        title: _("_Theme");
        use-underline: true;
        model: StringList {
          strings [_("Light"), _("Dark"), _("System")]
        };
      }
    }

    Adw.PreferencesGroup {
      Adw.ButtonRow {
        title: _("_Reset All Settings");
        use-underline: true;
        styles ["destructive-action"];
      }
    }
  }
}
```

## GSettings Schema (org.example.MyApp.gschema.xml)

```xml
<?xml version="1.0" encoding="UTF-8"?>
<schemalist gettext-domain="myapp">
  <schema id="org.example.MyApp" path="/org/example/MyApp/">
    <key name="window-width" type="i"><default>600</default><summary>Window width</summary></key>
    <key name="window-height" type="i"><default>500</default><summary>Window height</summary></key>
    <key name="window-maximized" type="b"><default>false</default><summary>Window maximized</summary></key>
    <key name="dark-mode" type="b"><default>false</default><summary>Use dark theme</summary></key>
  </schema>
</schemalist>
```

## Desktop Entry (org.example.MyApp.desktop.in)

```desktop
[Desktop Entry]
Name=My App
Comment=A GNOME application
Exec=myapp %U
Icon=@APPLICATION_ID@
Terminal=false
Type=Application
Categories=GNOME;GTK;Utility;
StartupNotify=true
DBusActivatable=true
```

## meson.build

```meson
project('myapp', version: '0.1.0', meson_version: '>= 1.0.0')
i18n = import('i18n')
gnome = import('gnome')
python = import('python')
py = python.find_installation('python3')
dependency('gtk4', version: '>= 4.12')
dependency('libadwaita-1', version: '>= 1.4')

APPLICATION_ID = 'org.example.MyApp'
conf = configuration_data()
conf.set('APPLICATION_ID', APPLICATION_ID)
conf.set('VERSION', meson.project_version())

subdir('data')
subdir('src')
subdir('po')

gnome.post_install(glib_compile_schemas: true, gtk_update_icon_cache: true, update_desktop_database: true)
```

## Python App (src/main.py)

```python
import sys
import gi
gi.require_version('Gtk', '4.0')
gi.require_version('Adw', '1')
from gi.repository import Gtk, Adw, Gio, GLib

@Gtk.Template(resource_path='/org/example/MyApp/window.ui')
class MyWindow(Adw.ApplicationWindow):
    __gtype_name__ = 'MyWindow'

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        # Preferences action
        show_prefs = Gio.SimpleAction.new('show-preferences', None)
        show_prefs.connect('activate', self._on_preferences)
        self.add_action(show_prefs)

    def _on_preferences(self, action, param):
        builder = Gtk.Builder.new_from_resource('/org/example/MyApp/preferences.ui')
        dialog = builder.get_object('preferences_dialog')
        dialog.present(self)

class MyApp(Adw.Application):
    def __init__(self):
        super().__init__(application_id='org.example.MyApp')
        self.create_action('quit', lambda *_: self.quit(), ['<primary>q'])
        self.create_action('shortcuts', self._on_shortcuts)
        self.create_action('about', self._on_about)

    def do_activate(self):
        self.window = MyWindow(application=self)
        self.window.present()

    def _on_shortcuts(self, action, param):
        pass  # TODO: show shortcuts window

    def _on_about(self, action, param):
        about = Adw.AboutDialog(
            application_name='My App',
            application_icon='org.example.MyApp',
            version='0.1.0',
            developer_name='Developer',
            developers=['Developer'],
            license_type=Gtk.License.GPL_3_0,
        )
        about.present(self.window)

    def create_action(self, name, callback, shortcuts=None):
        action = Gio.SimpleAction.new(name, None)
        action.connect('activate', callback)
        self.add_action(action)
        if shortcuts:
            self.set_accels_for_action(f'app.{name}', shortcuts)

def main():
    app = MyApp()
    return app.run(sys.argv)
```

## File Structure
```
myapp/
├── data/
│   ├── org.example.MyApp.desktop.in
│   └── org.example.MyApp.gschema.xml
├── src/
│   ├── main.py
│   ├── window.blp
│   ├── preferences.blp
│   ├── myapp.gresource.xml
│   └── meson.build
├── po/
│   └── meson.build
├── meson.build
└── README.md
```

## Checklist After Creating
- [ ] Replace `org.example.MyApp` with your app ID
- [ ] Replace `MyApp`/`MyWindow` with your app names
- [ ] Add your custom pages inside the ViewStack
- [ ] Wire up actual GSettings bindings
- [ ] Add app icon to `data/icons/`
- [ ] Add Metainfo file for AppStream
- [ ] Implement shortcuts window

## Next Skills to Read
- skills/gsettings-backend.md (wire up real settings)
- skills/delete-with-undo.md (when you add destructive actions)
- skills/header-bar.md (if you need custom header bar buttons)
