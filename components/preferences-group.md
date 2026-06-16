# AdwPreferencesPage + AdwPreferencesGroup

**Package**: libadwaita-1  
**Use**: Settings sections — the #1 pattern in GNOME.

## Blueprint
```
Adw.PreferencesPage {
  Adw.PreferencesGroup {
    title: _("Appearance");
    description: _("These settings control how the app looks.");   /* optional */

    Adw.SwitchRow { title: _("_Dark Mode"); use-underline: true; }
    Adw.ComboRow  { title: _("_Theme"); use-underline: true; model: theme_model; }
    Adw.SpinRow   { title: _("_Font Size"); use-underline: true; adjustment: font_adj; }
    Adw.ButtonRow { title: _("_Advanced…"); end-icon-name: "go-next-symbolic"; }
  }

  Adw.PreferencesGroup {
    title: _("Behavior");
    /* more rows */
  }
}
```

## XML
```xml
<object class="AdwPreferencesPage">
  <child>
    <object class="AdwPreferencesGroup">
      <property name="title" translatable="yes">Appearance</property>
      <property name="description" translatable="yes">Control how the app looks.</property>
      <child>
        <object class="AdwSwitchRow">
          <property name="title" translatable="yes">_Dark Mode</property>
          <property name="use-underline">True</property>
        </object>
      </child>
    </object>
  </child>
</object>
```

## PreferencesGroup Properties
| Property | Type | Notes |
|----------|------|-------|
| `title` | string | **Required** — section heading |
| `description` | string | Optional — context text |
| `header-suffix` | widget | Info button, level bar, test button |
| `separate-rows` | bool | Add separators between rows |

## Row Types
| Widget | Purpose |
|--------|---------|
| `AdwSwitchRow` | Binary on/off |
| `AdwActionRow` + widget | Custom control |
| `AdwComboRow` | Single-select from list |
| `AdwSpinRow` | Numeric value |
| `AdwButtonRow` | Navigate/trigger (→ arrow) |
| `AdwExpanderRow` | Expandable section |

## Code (Rust)
```rust
let page = adw::PreferencesPage::new();
let group = adw::PreferencesGroup::new();
group.set_title("Appearance");
let row = adw::SwitchRow::new();
row.set_title("Dark Mode");
group.add(&row);
page.add(&group);
```

## See Also
- skills/preferences-dialog.md
- components/switch-row.md
- components/action-row.md
- components/combo-row.md
