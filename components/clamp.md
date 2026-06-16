# AdwClamp

**Package**: libadwaita-1  
**Use**: Constrain content to a maximum readable width.

## Blueprint
```
Adw.Clamp {
  maximum-size: 720;
  tightening-threshold: 680;

  /* child content — won't exceed 720px wide */
}
```

## XML
```xml
<object class="AdwClamp">
  <property name="maximum-size">1200</property>
  <property name="tightening-threshold">1100</property>
  <child>
    <object class="GtkBox" id="content_box">
      <!-- content that stays clamped -->
    </object>
  </child>
</object>
```

## Properties
| Property | Type | Notes |
|----------|------|-------|
| `maximum-size` | int | Maximum child width in px |
| `tightening-threshold` | int | Start squeezing below this width |

## Common Values
| Content Type | maximum-size | App |
|---|---|---|
| Package details | `720` | Tavern |
| Browse page | `1200` | Tavern, Brewfile |
| Task panel items | `500` | Tavern |
| Search bar | `420` | Tavern |

## When to Use
- **Always** wrap scrollable content pages in Clamp
- Prevent text/content from stretching absurdly wide on ultrawide monitors
- `maximum-size` should be appropriate to content type:
  - Text-heavy: 600-720
  - Image/tile grid: 900-1200
  - Search bar: 400-500

## Combined with ScrolledWindow
```
ScrolledWindow {
  hscrollbar-policy: never;      /* no horizontal scroll */
  vexpand: true;

  child: Adw.Clamp {
    maximum-size: 1200;

    child: Box {
      orientation: vertical;
      spacing: 16;
      margin-start: 20;
      margin-end: 20;
      margin-top: 12;
      margin-bottom: 40;
      /* content */
    };
  };
}
```

## Rules
- Always set `hscrollbar-policy: never` on the ScrolledWindow parent
- Clamp goes INSIDE ScrolledWindow
- Use `tightening-threshold` slightly less than `maximum-size` for smooth transition
- Content Box gets its own margin (not the Clamp)

## Real App References
- Tavern: browse-page.blp, package-details.blp, installed-page.blp, brewfile-page.blp
- gnome-calculator: search entry clamp
