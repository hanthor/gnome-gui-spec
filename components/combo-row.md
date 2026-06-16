# AdwComboRow

**Package**: libadwaita-1  
**Use**: Dropdown single-select in preferences.

## Blueprint (StringList model)
```
Adw.ComboRow {
  title: _("_Angle Units");
  use-underline: true;

  model: StringList {
    strings [_("Degrees"), _("Radians"), _("Gradians")]
  };
}
```

## Blueprint (custom object model)
```
Adw.ComboRow {
  title: _("_Character");
  use-underline: true;
  model: indent_model;
  expression: <lookup name="name" type="EditorIndent"/>;
}
```

## XML
```xml
<object class="AdwComboRow">
  <property name="title" translatable="yes">_Character</property>
  <property name="use-underline">True</property>
  <property name="model">indent_model</property>
  <property name="expression">
    <lookup name="name" type="EditorIndent"/>
  </property>
</object>
```

## Properties
| Property | Type | Required |
|----------|------|----------|
| `title` | string | **Yes** (with `_` accent) |
| `use-underline` | bool | **Yes** |
| `model` | GListModel | **Yes** |
| `expression` | expression | Only for object models |
| `selected` | int | No (initial index) |

## Code (Python)
```python
from gi.repository import Gtk, Gio

row = Adw.ComboRow()
row.set_title("_Theme")
row.set_use_underline(True)

# String list model
strings = Gtk.StringList()
for s in ["Light", "Dark", "System"]:
    strings.append(s)
row.set_model(strings)
row.set_selected(0)
```

## Code (Rust)
```rust
use gtk::StringList;
let row = adw::ComboRow::new();
row.set_title("_Theme");
row.set_use_underline(true);
let model = StringList::new(&["Light", "Dark", "System"]);
row.set_model(Some(&model));
```

## Real App References
- gnome-control-center (angle units, word size)
- gnome-text-editor (indent character)
- nautilus (open action, search, thumbnails)
- gnome-calculator (angle units, currency display)
