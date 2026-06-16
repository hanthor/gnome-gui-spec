# Skill: Language & Library Quickstart

> Pick your language. Each section is self-contained — copy the files and run.

---

## Python + PyGObject

**Uses**: meson, blueprint-compiler, flatpak-pip-generator or flatpak-pypi

### meson.build (root)
```meson
project('myapp', version: '0.1.0', meson_version: '>= 1.0.0')
i18n = import('i18n')
gnome = import('gnome')
python = import('python')
py = python.find_installation('python3')

dependency('gtk4', version: '>= 4.12')
dependency('libadwaita-1', version: '>= 1.4')

subdir('data')
subdir('src')
subdir('po')
gnome.post_install(glib_compile_schemas: true, gtk_update_icon_cache: true, update_desktop_database: true)
```

### src/meson.build
```meson
pkgdatadir = get_option('prefix') / get_option('datadir') / meson.project_name()

blueprints = custom_target('blueprints',
  input: files('window.blp', 'preferences.blp'),
  output: '.',
  command: [find_program('blueprint-compiler'), 'batch-compile', '@OUTPUT@', '@CURRENT_SOURCE_DIR@', '@INPUT@'],
)

gnome.compile_resources('myapp',
  'myapp.gresource.xml',
  gresource_bundle: true,
  install: true,
  install_dir: pkgdatadir,
  dependencies: blueprints,
)

configure_file(input: 'myapp.in', output: 'myapp', configuration: conf, install: true, install_dir: get_option('bindir'))

install_data(['main.py', '__init__.py', 'window.py'],
  install_dir: pkgdatadir / 'myapp')
```

### src/main.py
```python
import sys, gi
gi.require_version('Gtk', '4.0')
gi.require_version('Adw', '1')
from gi.repository import Gtk, Adw, Gio

@Gtk.Template(resource_path='/org/example/MyApp/window.ui')
class MyWindow(Adw.ApplicationWindow):
    __gtype_name__ = 'MyWindow'
    def __init__(self, **kwargs):
        super().__init__(**kwargs)

class MyApp(Adw.Application):
    def __init__(self):
        super().__init__(application_id='org.example.MyApp')
        self.create_action('quit', lambda *_: self.quit(), ['<primary>q'])
        self.create_action('about', self._on_about)
    def do_activate(self):
        self.win = MyWindow(application=self)
        self.win.present()
    def _on_about(self, *args):
        Adw.AboutDialog(application_name='My App', version='0.1.0', developer_name='Me', developers=['Me'], license_type=Gtk.License.GPL_3_0).present(self.win)
    def create_action(self, name, cb, shortcuts=None):
        a = Gio.SimpleAction.new(name, None)
        a.connect('activate', cb)
        self.add_action(a)
        if shortcuts: self.set_accels_for_action(f'app.{name}', shortcuts)

if __name__ == '__main__':
    MyApp().run(sys.argv)
```

### Flatpak manifest (Python)
```yaml
id: org.example.MyApp
runtime: org.gnome.Platform
runtime-version: '47'
sdk: org.gnome.Sdk
command: myapp
modules:
  - name: myapp
    buildsystem: meson
    sources:
      - type: dir
        path: .
    build-commands:
      - pip3 install --prefix=/app --no-deps .
```

**Key packages**: `python3-gi`, `gir1.2-gtk-4.0`, `gir1.2-adw-1`, `blueprint-compiler`

---

## Rust + gtk4-rs

**Uses**: cargo, blueprint-compiler (build.rs), flatpak-cargo

### Cargo.toml
```toml
[package]
name = "myapp"
version = "0.1.0"
edition = "2021"

[dependencies]
gtk4 = { version = "0.9", features = ["v4_12"] }
adw = { version = "0.7", features = ["v1_4"] }
gio = "0.20"
glib = "0.20"

[build-dependencies]
blueprint-compiler = "0.12"
```

### build.rs
```rust
use blueprint_compiler::compile;
fn main() {
    compile("src/window.blp", "src/org.example.MyApp.gresource.xml");
}
```

### src/main.rs
```rust
use gtk::prelude::*;
use adw::prelude::*;

mod imp;
mod window;

fn main() {
    let app = adw::Application::builder()
        .application_id("org.example.MyApp")
        .build();
    app.connect_activate(|app| {
        let window = window::MyWindow::new(app);
        window.present();
    });
    app.run();
}
```

### src/window.rs
```rust
use gtk::{gio, glib};
use adw::{prelude::*, ApplicationWindow};
use gtk::subclass::prelude::*;

glib::wrapper! {
    pub struct MyWindow(ObjectSubclass<imp::MyWindow>)
        @extends gtk::Widget, gtk::Window, adw::ApplicationWindow,
        @implements gio::ActionGroup, gio::ActionMap;
}
impl MyWindow {
    pub fn new(app: &adw::Application) -> Self {
        glib::Object::builder().property("application", app).build()
    }
}
mod imp {
    use super::*;
    #[derive(Default)]
    pub struct MyWindow;
    #[glib::object_subclass]
    impl ObjectSubclass for MyWindow {
        const NAME: &'static str = "MyWindow";
        type Type = super::MyWindow;
        type ParentType = adw::ApplicationWindow;
    }
    impl ObjectImpl for MyWindow {}
    impl WidgetImpl for MyWindow {}
    impl WindowImpl for MyWindow {}
    impl ApplicationWindowImpl for MyWindow {}
}
```

### Flatpak manifest (Rust)
```json
{
  "id": "org.example.MyApp",
  "runtime": "org.gnome.Platform",
  "runtime-version": "47",
  "sdk": "org.gnome.Sdk",
  "sdk-extensions": ["org.freedesktop.Sdk.Extension.rust-stable"],
  "command": "myapp",
  "modules": [
    {
      "name": "myapp",
      "buildsystem": "simple",
      "build-options": {
        "append-path": "/usr/lib/sdk/rust-stable/bin",
        "env": { "CARGO_HOME": "/run/build/myapp/cargo" }
      },
      "build-commands": [
        "cargo --offline fetch --manifest-path Cargo.toml",
        "cargo --offline build --release",
        "install -D target/release/myapp /app/bin/myapp"
      ],
      "sources": [
        { "type": "dir", "path": "." },
        "generated-sources.json"
      ]
    }
  ]
}
```

Generate `generated-sources.json` with `flatpak-cargo-generator.py Cargo.lock -o generated-sources.json`.

**Key crates**: `gtk4`, `adw`, `gio`, `glib`, `blueprint-compiler` (build-dep)

---

## C + GTK4 + libadwaita

**Uses**: meson, blueprint-compiler

### meson.build (root)
```meson
project('myapp', 'c', version: '0.1.0', meson_version: '>= 1.0.0')
i18n = import('i18n')
gnome = import('gnome')

gtk_dep = dependency('gtk4', version: '>= 4.12')
adw_dep = dependency('libadwaita-1', version: '>= 1.4')

subdir('data')
subdir('src')
subdir('po')
gnome.post_install(glib_compile_schemas: true, gtk_update_icon_cache: true, update_desktop_database: true)
```

### src/meson.build
```meson
blueprints = custom_target('blueprints',
  input: files('window.blp'),
  output: '.',
  command: [find_program('blueprint-compiler'), 'batch-compile', '@OUTPUT@', '@CURRENT_SOURCE_DIR@', '@INPUT@'],
)

src = gnome.compile_resources('myapp',
  'myapp.gresource.xml',
  gresource_bundle: true,
  source_dir: meson.current_build_dir(),
  dependencies: blueprints,
)

executable('myapp',
  'main.c', 'window.c', src,
  dependencies: [gtk_dep, adw_dep],
  install: true,
)
```

### src/main.c
```c
#include <gtk/gtk.h>
#include <adwaita.h>
#include "window.h"

static void my_app_activate(GApplication *app) {
    GtkWindow *window = GTK_WINDOW(g_object_new(MY_TYPE_WINDOW, "application", app, NULL));
    gtk_window_present(window);
}

int main(int argc, char *argv[]) {
    AdwApplication *app = adw_application_new("org.example.MyApp",
        G_APPLICATION_DEFAULT_FLAGS);
    g_signal_connect(app, "activate", G_CALLBACK(my_app_activate), NULL);
    return g_application_run(G_APPLICATION(app), argc, argv);
}
```

### src/window.h
```c
#pragma once
#include <gtk/gtk.h>
#include <adwaita.h>
G_BEGIN_DECLS
#define MY_TYPE_WINDOW (my_window_get_type())
G_DECLARE_FINAL_TYPE(MyWindow, my_window, MY, WINDOW, AdwApplicationWindow)
MyWindow *my_window_new(AdwApplication *app);
G_END_DECLS
```

### src/window.c
```c
#include "window.h"
struct _MyWindow { AdwApplicationWindow parent; };
G_DEFINE_TYPE(MyWindow, my_window, ADW_TYPE_APPLICATION_WINDOW)

static void my_window_init(MyWindow *self) {}
static void my_window_class_init(MyWindowClass *klass) {
    gtk_widget_class_set_template_from_resource(GTK_WIDGET_CLASS(klass),
        "/org/example/MyApp/window.ui");
}
MyWindow *my_window_new(AdwApplication *app) {
    return g_object_new(MY_TYPE_WINDOW, "application", app, NULL);
}
```

### Flatpak manifest (C)
```yaml
id: org.example.MyApp
runtime: org.gnome.Platform
runtime-version: '47'
sdk: org.gnome.Sdk
command: myapp
modules:
  - name: myapp
    buildsystem: meson
    sources:
      - type: dir
        path: .
```

**Key deps**: `gtk4-devel`, `libadwaita-devel`, `blueprint-compiler`

---

## Vala

**Uses**: meson, valac, blueprint-compiler

### meson.build (root)
```meson
project('myapp', 'vala', 'c', version: '0.1.0', meson_version: '>= 1.0.0')
i18n = import('i18n')
gnome = import('gnome')

gtk_dep = dependency('gtk4', version: '>= 4.12')
adw_dep = dependency('libadwaita-1', version: '>= 1.4')

subdir('data')
subdir('src')
subdir('po')
gnome.post_install(glib_compile_schemas: true, gtk_update_icon_cache: true, update_desktop_database: true)
```

### src/meson.build
```meson
blueprints = custom_target('blueprints',
  input: files('window.blp'),
  output: '.',
  command: [find_program('blueprint-compiler'), 'batch-compile', '@OUTPUT@', '@CURRENT_SOURCE_DIR@', '@INPUT@'],
)

src = gnome.compile_resources('myapp',
  'myapp.gresource.xml',
  gresource_bundle: true,
  source_dir: meson.current_build_dir(),
  dependencies: blueprints,
)

executable('myapp',
  'main.vala', 'window.vala', src,
  dependencies: [gtk_dep, adw_dep],
  install: true,
)
```

### src/main.vala
```vala
public class MyApp : Adw.Application {
    public MyApp() {
        Object(application_id: "org.example.MyApp");
    }
    protected override void activate() {
        var window = new MyWindow(this);
        window.present();
    }
    public static int main(string[] args) {
        return new MyApp().run(args);
    }
}
```

### src/window.vala
```vala
[GtkTemplate(ui = "/org/example/MyApp/window.ui")]
public class MyWindow : Adw.ApplicationWindow {
    public MyWindow(Adw.Application app) {
        Object(application: app);
    }
}
```

### Flatpak manifest (Vala)
```yaml
id: org.example.MyApp
runtime: org.gnome.Platform
runtime-version: '47'
sdk: org.gnome.Sdk
command: myapp
modules:
  - name: myapp
    buildsystem: meson
    sources:
      - type: dir
        path: .
```

**Key deps**: `vala`, `gtk4-devel`, `libadwaita-devel`, `blueprint-compiler`

---

## JavaScript + GJS

**Uses**: meson, blueprint-compiler (GJS imports GTK directly, no C compilation)

### meson.build (root) — same as Python
```meson
project('myapp', version: '0.1.0', meson_version: '>= 1.0.0')
i18n = import('i18n')
gnome = import('gnome')
dependency('gtk4', version: '>= 4.12')
dependency('libadwaita-1', version: '>= 1.4')
subdir('data')
subdir('src')
subdir('po')
gnome.post_install(glib_compile_schemas: true, gtk_update_icon_cache: true, update_desktop_database: true)
```

### src/main.js
```javascript
import Adw from 'gi://Adw';
import Gtk from 'gi://Gtk';
import Gio from 'gi://Gio';

pkg.initGettext();
pkg.initFormat();

class MyWindow extends Adw.ApplicationWindow {
    static {
        Gtk.WidgetClass.install_template_from_resource(
            this.$gtype, '/org/example/MyApp/window.ui');
    }
    constructor(params = {}) {
        super(params);
        this.init_template();
    }
}

class MyApp extends Adw.Application {
    constructor() {
        super({application_id: 'org.example.MyApp'});
        this.add_action(Gio.SimpleAction.new('quit', null))
            .connect('activate', () => this.quit());
        this.set_accels_for_action('app.quit', ['<primary>q']);
    }
    vfunc_activate() {
        const window = new MyWindow({application: this});
        window.present();
    }
}

export default function main(argv) {
    return new MyApp().run(argv);
}
```

### Flatpak manifest (GJS)
```yaml
id: org.example.MyApp
runtime: org.gnome.Platform
runtime-version: '47'
sdk: org.gnome.Sdk
command: myapp
modules:
  - name: myapp
    buildsystem: meson
    sources:
      - type: dir
        path: .
```

**Key packages**: `gjs`, `gir1.2-gtk-4.0`, `gir1.2-adw-1`, `blueprint-compiler`

---

## Quick Comparison

| | Python | Rust | C | Vala | GJS |
|---|---|---|---|---|---|
| Build system | meson | cargo (+build.rs) | meson | meson | meson |
| UI format | Blueprint→UI | Blueprint→UI | Blueprint→UI | Blueprint→UI | Blueprint→UI |
| Template class | `@Gtk.Template` decorator | `#[derive(glib::Properties)]` | `gtk_widget_class_set_template` | `[GtkTemplate]` attribute | `install_template_from_resource` |
| Import style | `gi.require_version()` | `use gtk::prelude::*` | `#include <gtk/gtk.h>` | `using Gtk;` | `import Gtk from 'gi://Gtk';` |
| Type safety | Runtime | **Compile-time** | Compile-time | Compile-time | Runtime |
| Startup speed | Medium | Medium | Fast | Fast | Slow |
| Flatpak complexity | Simple | **Complex** (cargo deps) | Simple | Simple | Simple |
| Best for | Prototyping, scripting | New apps, safety | Core GNOME apps | GNOME-native apps | Shell extensions |

---

## Common Dependencies (All Languages)

| Package | flatpak build dep | distro package |
|---------|-------------------|----------------|
| GTK 4 | `gtk4-devel` ≥ 4.12 | `libgtk-4-dev` |
| libadwaita | `libadwaita-devel` ≥ 1.4 | `libadwaita-1-dev` |
| Blueprint | `blueprint-compiler` | `blueprint-compiler` |
| AppStream | `appstream` | `appstream` |
| desktop-file-utils | `desktop-file-utils` | `desktop-file-utils` |
