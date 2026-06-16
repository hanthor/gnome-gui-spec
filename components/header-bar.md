# AdwHeaderBar

**Package**: libadwaita-1  
**Use**: Window header with three alignment zones.

## Blueprint
```
Adw.HeaderBar {
  centering-policy: strict;
  show-start-title-buttons: false;
  show-end-title-buttons: false;

  title-widget: Adw.WindowTitle {
    title: _("My App");
  };

  [start]
  Button { icon-name: "document-open-symbolic"; tooltip-text: _("Open"); styles ["flat"]; }

  [end]
  MenuButton { icon-name: "open-menu-symbolic"; tooltip-text: _("Main Menu"); menu-model: primary_menu; }
}
```

## XML
```xml
<object class="AdwHeaderBar">
  <property name="centering-policy">strict</property>
  <property name="title-widget">
    <object class="AdwWindowTitle">
      <property name="title" translatable="yes">My App</property>
    </object>
  </property>
  <child type="start">
    <object class="GtkButton">
      <property name="icon-name">document-open-symbolic</property>
      <property name="tooltip-text" translatable="yes">Open</property>
      <style><class name="flat"/></style>
    </object>
  </child>
  <child type="end">
    <object class="GtkMenuButton">
      <property name="icon-name">open-menu-symbolic</property>
      <property name="tooltip-text" translatable="yes">Main Menu</property>
      <property name="menu-model">primary_menu</property>
    </object>
  </child>
</object>
```

## Slots
| Slot | Position | Content |
|------|----------|---------|
| `[start]` | Left | Primary actions (New, Open, Back) |
| `title-widget` | Center | AdwWindowTitle or AdwViewSwitcher |
| `[end]` | Right | Menu button, secondary actions |

## Button Rules
- **Must use `.flat` style** (no visible background)
- **Must have `tooltip-text`**
- Icon-only OR icon+label (not label-only)

## Centering Policies
| Policy | Effect |
|--------|--------|
| `strict` | Title strictly centered |
| `loose` | Title shifts to avoid overlap |

## Code (Rust)
```rust
let header = adw::HeaderBar::new();
header.set_centering_policy(adw::CenteringPolicy::Strict);
let title = adw::WindowTitle::new("My App", "");
header.set_title_widget(Some(&title));
```

## Code (Python)
```python
header = Adw.HeaderBar()
header.set_centering_policy(Adw.CenteringPolicy.STRICT)
header.set_title_widget(Adw.WindowTitle(title="My App", subtitle=""))
```

## Code (C)
```c
AdwHeaderBar *header = ADW_HEADER_BAR(adw_header_bar_new());
adw_header_bar_set_centering_policy(header, ADW_CENTERING_POLICY_STRICT);
```

## See Also
- skills/header-bar.md
