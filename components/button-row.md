# AdwButtonRow

**Package**: libadwaita-1  
**Use**: Clickable row that triggers an action or navigates.

## Blueprint
```
Adw.ButtonRow {
  title: _("Test _Settings");
  use-underline: true;
  end-icon-name: "go-next-symbolic";         /* always this icon */

  styles ["destructive-action"];              /* for destructive actions */

  activated => $on_test_clicked_cb(template);
}
```

## XML
```xml
<object class="AdwButtonRow">
  <property name="title" translatable="yes">Test _Settings</property>
  <property name="use-underline">True</property>
  <property name="end-icon-name">go-next-symbolic</property>
  <signal name="activated" handler="on_test_clicked"/>
</object>
```

## Properties
| Property | Type | Notes |
|----------|------|-------|
| `title` | string | **Required** — with `_` accent |
| `use-underline` | bool | Always `true` |
| `end-icon-name` | string | Always `go-next-symbolic` |
| `action-name` | string | Alternative to signal handler |

## Styles
| Style | When |
|-------|------|
| (none) | Standard navigation/action |
| `destructive-action` | Destructive action (Clear History, Remove Calendar, Delete Event) |

## Signal vs Action

**Signal handler** (Blueprint):
```
activated => $on_clicked_cb(template);
```

**GAction** (XML):
```xml
<property name="action-name">app.clear-history</property>
```

## When to Use
- Navigate to a sub-page (currency selection in Calculator)
- Trigger a destructive preferences action (Clear History, Reset)
- Open a test/diagnostic panel (Mouse Test Settings)
- Any preferences action that doesn't fit a Switch/Combo/Spin

## Real App References
- gnome-text-editor: Clear History (destructive-action)
- gnome-calendar: Delete Event (destructive-action), Remove Calendar (destructive-action)
- gnome-clocks: Remove Alarm (destructive-action)
- gnome-control-center: Test Settings panels
- gnome-calculator: Favorite Currencies navigation
