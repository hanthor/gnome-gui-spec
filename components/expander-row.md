# AdwExpanderRow

**Package**: libadwaita-1  
**Use**: Expandable section in preferences with optional enable/disable switch.

## Blueprint
```
Adw.ExpanderRow {
  title: _("Custom _Font");
  use-underline: true;

  [action]
  Switch custom_font_switch {
    halign: end;
    valign: center;
  }

  /* Children are revealed when expanded */
  Adw.SpinRow { title: _("_Size"); adjustment: font_adj; }
  Gtk.Label { label: _("Choose a font from your system."); styles ["dim-label", "caption"]; }
}
```

## XML
```xml
<object class="AdwExpanderRow">
  <property name="title" translatable="yes">Custom _Font</property>
  <property name="use-underline">True</property>
  <property name="expanded" bind-source="use_custom_font" bind-property="active" bind-flags="sync-create|bidirectional"/>
  <child type="action">
    <object class="GtkSwitch" id="use_custom_font">
      <property name="halign">end</property>
      <property name="valign">center</property>
    </object>
  </child>
  <child>
    <object class="EditorPreferencesFont" id="custom_font">
      <property name="sensitive" bind-source="use_custom_font" bind-property="active" bind-flags="sync-create"/>
    </object>
  </child>
</object>
```

## Properties
| Property | Type | Notes |
|----------|------|-------|
| `title` | string | **Required** — with `_` accent |
| `use-underline` | bool | Always `true` |
| `expanded` | bool | Initial expand state |
| `subtitle` | string | Optional |

## Slots
| Slot | Use |
|------|-----|
| `[action]` / `<child type="action">` | Switch that enables/disables the content |
| default child | Content revealed when expanded (can have multiple children) |

## Binding Pattern
Bind `expanded` to the switch's `active` state so the expander opens/closes with the toggle:

```xml
<property name="expanded" bind-source="switch_id" bind-property="active" bind-flags="sync-create|bidirectional"/>
```

And bind child sensitivity to the switch:

```xml
<property name="sensitive" bind-source="switch_id" bind-property="active" bind-flags="sync-create"/>
```

## Code (Python)
```python
row = Adw.ExpanderRow()
row.set_title("Custom _Font")
row.set_use_underline(True)

switch = Gtk.Switch(halign=Gtk.Align.END, valign=Gtk.Align.CENTER)
row.add_action(switch)

child = Gtk.Label(label="Choose a font.")
row.add_row(child)
```

## When to Use
- Settings that have sub-settings gated by a toggle
- Advanced/optional features that most users won't need
- The `[action]` switch is optional — you can skip it for always-available expandable content

## Real App Reference
- gnome-text-editor/src/editor-preferences-dialog.ui (Custom Font section)
