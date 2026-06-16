# AdwActionRow

**Package**: libadwaita-1  
**Use**: Custom control row in preferences. Most flexible row type.

## Blueprint: ActionRow + Switch
```
Adw.ActionRow {
  title: _("Mouse _Acceleration");
  use-underline: true;
  subtitle: _("Recommended for most users");
  activatable-widget: accel_switch;

  [suffix]
  Switch accel_switch { valign: center; }
}
```

## Blueprint: ActionRow + Scale
```
Adw.ActionRow {
  title: _("Po_inter Speed");
  use-underline: true;
  activatable-widget: speed_scale;

  [suffix]
  Scale speed_scale {
    hexpand: true;
    adjustment: Adjustment { lower: -1; upper: 1; step-increment: 0.1; };
  }
}
```

## Blueprint: ActionRow + Radio (CheckButton prefix)
```
Adw.ActionRow {
  title: _("_Automatic");
  subtitle: _("Automatically check for updates");
  use-underline: true;
  activatable-widget: auto_radio;

  [prefix]
  CheckButton auto_radio { valign: center; active: true; }
}
```

## XML: ActionRow + Switch
```xml
<object class="AdwActionRow">
  <property name="title" translatable="yes">Mouse _Acceleration</property>
  <property name="use-underline">True</property>
  <property name="subtitle" translatable="yes">Recommended for most users</property>
  <property name="activatable-widget">accel_switch</property>
  <child type="suffix">
    <object class="GtkSwitch" id="accel_switch">
      <property name="valign">center</property>
    </object>
  </child>
</object>
```

## Slots
| Slot | Use |
|------|-----|
| `[prefix]` | CheckButton (radio), icon |
| `[suffix]` | Switch, Scale, Combo, Spin, Label, Image |
| `[suffix]` (multiple) | Stack widgets; last aligns right |

## Properties
| Property | Type | Notes |
|----------|------|-------|
| `title` | string | **Required** — with `_` accent |
| `use-underline` | bool | Always true |
| `subtitle` | string | Optional description |
| `activatable-widget` | id | Click row → activate widget |

## Code (Python)
```python
row = Adw.ActionRow()
row.set_title("Mouse _Acceleration")
row.set_use_underline(True)
row.set_subtitle("Recommended for most users")
switch = Gtk.Switch(valign=Gtk.Align.CENTER)
row.add_suffix(switch)
row.set_activatable_widget(switch)
```

## See Also
- skills/radio-group.md
- components/switch-row.md
- components/preferences-group.md
