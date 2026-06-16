# AdwApplicationWindow

**Package**: libadwaita-1  
**Base**: GtkApplicationWindow  
**Use**: Primary window for every GNOME app.

## Blueprint
```
Adw.ApplicationWindow {
  width-request: 360;
  height-request: 294;
  default-width: 600;
  default-height: 500;
  title: _("My App");
  hide-on-close: false;           /* true for background apps */
}
```

## XML
```xml
<template class="MyWindow" parent="AdwApplicationWindow">
  <property name="width-request">360</property>
  <property name="height-request">294</property>
  <property name="default-width">600</property>
  <property name="default-height">500</property>
</template>
```

## Properties
| Property | Type | Default | Notes |
|----------|------|---------|-------|
| `width-request` | int | -1 | **Always 360** |
| `height-request` | int | -1 | **Always 294** |
| `default-width` | int | -1 | Content-appropriate |
| `default-height` | int | -1 | Content-appropriate |
| `hide-on-close` | bool | false | `true` for tray/background apps |
| `title` | string | null | Window title |

## Real Usage
| App | width-request | default-width | default-height |
|-----|--------------|---------------|----------------|
| Text Editor | 360 | — | — |
| Clocks | 360 | — | 294 |
| Loupe | 360 | 600 | 498 |
| Weather | — | 1050 | 650 |
| Tavern | 360 | 1100 | 750 |

## Code (Rust)
```rust
let window = adw::ApplicationWindow::new(app);
window.set_default_size(600, 500);
```

## Code (Python)
```python
class MyWindow(Adw.ApplicationWindow):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.set_default_size(600, 500)
```

## Code (C)
```c
AdwApplicationWindow *window = ADW_APPLICATION_WINDOW(
    adw_application_window_new(GTK_APPLICATION(app)));
gtk_window_set_default_size(GTK_WINDOW(window), 600, 500);
```

## See Also
- skills/adaptive-layout.md
- skills/header-bar.md
