# AdwSpinRow

**Package**: libadwaita-1  
**Use**: Numeric input with spin buttons in preferences.

## Blueprint
```
Adw.SpinRow {
  title: _("_Font Size");
  use-underline: true;
  numeric: true;
  digits: 0;
  climb-rate: 1;
  value: 12;

  adjustment: Adjustment {
    lower: 8;
    upper: 32;
    step-increment: 1;
    page-increment: 4;
  };
}
```

## XML
```xml
<object class="AdwSpinRow">
  <property name="title" translatable="yes">Spaces Per _Tab</property>
  <property name="use-underline">True</property>
  <property name="numeric">true</property>
  <property name="digits">0</property>
  <property name="climb-rate">1</property>
  <property name="adjustment">
    <object class="GtkAdjustment">
      <property name="lower">1</property>
      <property name="upper">32</property>
      <property name="step-increment">1</property>
      <property name="page-increment">4</property>
      <property name="value">8</property>
    </object>
  </property>
</object>
```

## Properties
| Property | Type | Required | Notes |
|----------|------|----------|-------|
| `title` | string | **Yes** | With `_` accent |
| `use-underline` | bool | **Yes** | |
| `adjustment` | GtkAdjustment | **Yes** | Lower, upper, step |
| `numeric` | bool | No | Only allow digits |
| `digits` | int | No | Decimal places |
| `climb-rate` | int | No | Acceleration |
| `value` | double | No | Initial value |

## Code (Python)
```python
from gi.repository import Gtk

row = Adw.SpinRow()
row.set_title("_Font Size")
row.set_use_underline(True)
row.set_numeric(True)
row.set_digits(0)
row.set_climb_rate(1)

adj = Gtk.Adjustment(value=12, lower=8, upper=32, step_increment=1, page_increment=4)
row.set_adjustment(adj)

# Bind to GSettings
settings.bind("font-size", adj, "value", Gio.SettingsBindFlags.DEFAULT)
```

## Code (Rust)
```rust
use gtk::Adjustment;
let row = adw::SpinRow::new();
row.set_title("_Font Size");
row.set_use_underline(true);
row.set_numeric(true);
let adj = Adjustment::new(12.0, 8.0, 32.0, 1.0, 4.0, 0.0);
row.set_adjustment(&adj);
```

## Real App References
- gnome-text-editor (tab width, indent width)
- gnome-calculator (number of decimals)
- nautilus (hidden — not used in prefs, but pattern is standard)
