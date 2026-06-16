# Skill: Radio Button Groups

## Goal: Add mutually-exclusive option groups in preferences.

## The GNOME Pattern: CheckButton in ActionRow Prefix

Do NOT use GtkRadioButton. Use GtkCheckButton with the `group` property.

## Blueprint
```
Adw.PreferencesGroup {
  title: _("Update Policy");

  Adw.ActionRow {
    title: _("_Automatic");
    subtitle: _("Automatically check for and download updates");
    use-underline: true;
    activatable-widget: auto_radio;

    [prefix]
    CheckButton auto_radio {
      valign: center;
      active: true;                 /* default selection */
    }
  }

  Adw.ActionRow {
    title: _("_Manual");
    subtitle: _("Updates must be done manually");
    use-underline: true;
    activatable-widget: manual_radio;

    [prefix]
    CheckButton manual_radio {
      valign: center;
      group: auto_radio;            /* links to previous button */
    }
  }
}
```

## XML
```xml
<object class="AdwPreferencesGroup">
  <child>
    <object class="AdwActionRow">
      <property name="title" translatable="yes">_Automatic</property>
      <property name="subtitle" translatable="yes">Automatically check for updates</property>
      <property name="activatable-widget">auto_radio</property>
      <child type="prefix">
        <object class="GtkCheckButton" id="auto_radio">
          <property name="valign">center</property>
          <property name="active">True</property>
        </object>
      </child>
    </object>
  </child>
  <child>
    <object class="AdwActionRow">
      <property name="title" translatable="yes">_Manual</property>
      <property name="subtitle" translatable="yes">Updates must be done manually</property>
      <property name="activatable-widget">manual_radio</property>
      <child type="prefix">
        <object class="GtkCheckButton" id="manual_radio">
          <property name="valign">center</property>
          <property name="group">auto_radio</property>
        </object>
      </child>
    </object>
  </child>
</object>
```

## Rules
- **Always use `GtkCheckButton`** (NOT `GtkRadioButton` or `GtkCheckButton` widget directly)
- Place in `[prefix]` slot of `AdwActionRow`
- Set `activatable-widget` so clicking the row toggles the button
- Link via `group` property (first button has no group, subsequent buttons point to first)
- `valign: center` on every CheckButton
- Optionally include subtitle for context

## GAction binding variant (Nautilus)
```xml
<object class="GtkCheckButton" id="date_format_simple_button">
  <property name="valign">center</property>
  <property name="action-name">preferences.date-time-format</property>
  <property name="action-target">'simple'</property>
</object>
```

## Real App References
- nautilus/src/resources/ui/nautilus-preferences-dialog.blp (Date format radio)
- gnome-software/src/gs-prefs-dialog.ui (Update policy radio)
- gnome-control-center/panels/multitasking/cc-multitasking-panel.blp (Workspace radio)
