# GtkMenuButton + Menu Model

**Package**: gtk4  
**Use**: Hamburger menu, context menus, popovers.

## Primary Menu (Hamburger)

```xml
<menu id="primary_menu">
  <section>
    <item>
      <attribute name="label" translatable="yes">_New Window</attribute>
      <attribute name="action">app.new-window</attribute>
      <attribute name="accel">&lt;control&gt;n</attribute>
    </item>
  </section>
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
    <item>
      <attribute name="label" translatable="yes">A_bout My App</attribute>
      <attribute name="action">app.about</attribute>
    </item>
  </section>
</menu>
```

## Blueprint
```
menu primary_menu {
  section {
    item { label: _("_New Window"); action: "app.new-window"; }
  }
  section {
    item { label: _("P_references"); action: "win.show-preferences"; }
    item { label: _("_Keyboard Shortcuts"); action: "app.shortcuts"; }
    item { label: _("A_bout"); action: "app.about"; }
  }
}
```

## Menu Button (Header Bar)
```xml
<object class="GtkMenuButton">
  <property name="icon-name">open-menu-symbolic</property>
  <property name="tooltip-text" translatable="yes">Main Menu</property>
  <property name="menu-model">primary_menu</property>
</object>
```

## Standard Section Order
1. View/mode switching
2. Primary actions (New, Open, Save)
3. Secondary actions (Find, Print)
4. Window controls (Fullscreen)
5. **Preferences, Keyboard Shortcuts, About**

## Special Attributes
| Attribute | Effect |
|-----------|--------|
| `hidden-when="action-disabled"` | Hide when action unavailable |
| `display-hint="inline-buttons"` | Render as button row |
| `custom` | Trigger custom handler |

## Context Menu (Tab)
```xml
<menu id="tab_menu">
  <section>
    <item>
      <attribute name="label" translatable="yes">Move _Left</attribute>
      <attribute name="action">page.move-left</attribute>
    </item>
  </section>
  <section>
    <item>
      <attribute name="label" translatable="yes">_Close</attribute>
      <attribute name="action">win.close-current-page</attribute>
      <attribute name="accel">&lt;control&gt;w</attribute>
    </item>
  </section>
</menu>
```

## See Also
- skills/preferences-dialog.md (menu wiring)
- skills/delete-with-undo.md (destructive menu items)
