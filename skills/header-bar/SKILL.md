# Skill: Build a Header Bar

## Goal: Construct a compliant GNOME header bar.

## Blueprint Template
```
Adw.HeaderBar {
  centering-policy: strict;
  show-start-title-buttons: false;
  show-end-title-buttons: false;

  title-widget: Adw.WindowTitle {
    title: _("My App");
  };
}
```

## Layout Slots
| Slot | Position | Content |
|------|----------|---------|
| `[start]` | Left | Primary actions (New, Open, Back) |
| `title-widget` | Center | WindowTitle or ViewSwitcher |
| `[end]` | Right | Menu button, secondary actions |

## Button Rules
- **All header bar buttons MUST be `.flat` style** (no visible background)
- **All header bar buttons MUST have `tooltip-text`**
- Icon-only: `icon-name="document-new-symbolic"`
- Icon + label: Wrap in `GtkBox` with spacing
- Primary menu: `icon-name="open-menu-symbolic"` on a `GtkMenuButton`

## Blueprint Example (full)
```
Adw.HeaderBar {
  centering-policy: strict;

  title-widget: Adw.WindowTitle { title: _("My App"); };

  [start]
  Button {
    icon-name: "document-open-symbolic";
    tooltip-text: _("Open");
    styles ["flat"];
    clicked => $on_open_cb(template);
  }

  [start]
  Button {
    icon-name: "tab-new-symbolic";
    tooltip-text: _("New Tab");
    styles ["flat"];
    action-name: "session.new-draft";
  }

  [end]
  MenuButton {
    icon-name: "open-menu-symbolic";
    tooltip-text: _("Main Menu");
    menu-model: primary_menu;
  }
}
```

## Centering Policies
| Policy | Behavior |
|--------|----------|
| `strict` | Title strictly centered (Weather) |
| `loose` | Title shifts to avoid overlap |

## Centered Title with Subtitle (Text Editor pattern)
```xml
<object class="AdwHeaderBar">
  <property name="title-widget">
    <object class="GtkBox">
      <property name="orientation">vertical</property>
      <property name="valign">center</property>
      <child>
        <object class="GtkCenterBox">
          <child type="start">
            <object class="GtkLabel" id="modified_indicator">
              <property name="label">•</property>
            </object>
          </child>
          <child type="center">
            <object class="GtkLabel" id="title">
              <property name="ellipsize">middle</property>
              <style><class name="title"/></style>
            </object>
          </child>
        </object>
      </child>
      <child>
        <object class="GtkCenterBox">
          <child type="center">
            <object class="GtkLabel" id="subtitle">
              <property name="ellipsize">middle</property>
              <style><class name="subtitle"/></style>
            </object>
          </child>
        </object>
      </child>
    </object>
  </property>
</object>
```

## Real App References
- gnome-text-editor/src/editor-window.ui
- gnome-clocks/data/ui/header-bar.ui
- gnome-weather/data/window.ui
