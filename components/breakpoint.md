# AdwBreakpoint + AdwBreakpointBin

**Package**: libadwaita-1  
**Use**: Adaptive layout — change UI at width thresholds.

## Blueprint (BreakpointBin style)
```
Adw.BreakpointBin {
  width-request: 300;

  Adw.Breakpoint {
    condition ("max-width: 500sp")
    setters {
      header_bar.title-widget: null;
      view_switcher_bar.reveal: true;
    }
  }

  child: Adw.ToolbarView { /* content */ };
}
```

## XML (AdwBreakpoint objects)
```xml
<object class="AdwBreakpoint">
  <condition>max-width: 650sp</condition>
  <setter object="layout" property="layout-name">narrow</setter>
</object>
<object class="AdwBreakpoint">
  <condition>max-width: 400sp</condition>
  <setter object="open_button_stack" property="visible-child-name">narrow</setter>
</object>
```

## Standard Breakpoints
| Condition | Effect |
|-----------|--------|
| `max-width: 400sp` | Icon-only buttons |
| `max-width: 500sp` | ViewSwitcherBar revealed |
| `max-width: 590sp` | Narrow layout |
| `max-width: 600sp` | ViewSwitcherBar revealed |
| `max-width: 650sp` | Full layout switch |

`sp` = scaled pixels (font-relative).

## Common Setter Targets
| Setter | What it does |
|--------|-------------|
| `header_bar.title-widget: null` | Remove title widget |
| `view_switcher_bar.reveal: true` | Show bottom switcher |
| `some_row.compact: true` | Compact custom rows |
| `flow.max-children-per-line: 2` | Reduce grid columns |
| `box.margin-start: 8` | Reduce margins |
| `layout.layout-name: "narrow"` | Switch layout in MultiLayoutView |

## See Also
- skills/adaptive-layout.md
