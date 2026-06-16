# Skill: Adaptive Layout with Breakpoints

## Goal: Make your app work from 360px phone to wide desktop.

## Two Approaches

### Approach A: BreakpointBin (Settings style)
Use `AdwBreakpointBin` and set properties at breakpoints:

```
Adw.BreakpointBin {
  width-request: 300;
  height-request: 200;

  Adw.Breakpoint {
    condition ("max-width: 500sp")
    setters {
      header_bar.title-widget: null;       /* hide ViewSwitcher */
      view_switcher_bar.reveal: true;      /* show bottom bar */
      some_row.compact: true;               /* compact custom rows */
    }
  }

  child: Adw.ToolbarView { /* content */ };
}
```

### Approach B: MultiLayoutView (Text Editor style)
Use `AdwMultiLayoutView` with completely different layouts:

```xml
<object class="AdwMultiLayoutView">
  <child>
    <object class="AdwLayout">
      <property name="name">wide</property>
      <!-- Full desktop layout with sidebar -->
    </object>
  </child>
  <child>
    <object class="AdwLayout">
      <property name="name">narrow</property>
      <!-- Compact layout with bottom sheet -->
    </object>
  </child>
</object>
<object class="AdwBreakpoint">
  <condition>max-width: 650sp</condition>
  <setter object="multi_layout" property="layout-name">narrow</setter>
</object>
```

## Standard Breakpoint Values
| Condition | App | Effect |
|-----------|-----|--------|
| `max-width: 400sp` | Text Editor | Buttons become icon-only |
| `max-width: 500sp` | Settings | ViewSwitcherBar revealed |
| `max-width: 590sp` | Loupe | Layout switches to narrow |
| `max-width: 600sp` | Clocks | ViewSwitcherBar revealed |
| `max-width: 650sp` | Text Editor | Full layout switch |
| `min-width: 590sp` | Loupe | Layout switches to wide |

`sp` = scaled pixels (font-relative, respects accessibility).

## Common Narrow Adaptations
| Desktop (wide) | Mobile (narrow) |
|---|---|
| `AdwViewSwitcher` in header bar | `AdwViewSwitcherBar` at bottom |
| `AdwOverlaySplitView` sidebar | `AdwBottomSheet` |
| Label + Icon buttons | Icon-only buttons |
| Grid with 3 columns | Grid with 1-2 columns |
| `margin-start/end: 20` | `margin-start/end: 8` |

## AdwBottomSheet (narrow sidebar)
```xml
<object class="AdwBottomSheet">
  <property name="open" bind-source="toggle_btn" bind-property="active" bind-flags="bidirectional|sync-create"/>
  <property name="content"><!-- main content --></property>
  <property name="sheet"><!-- sidebar content --></property>
</object>
```

## Rules
- Start design from narrowest width first
- Test at 360px minimum
- Use `AdwClamp` with `maximum-size` to prevent over-wide content
- Never hide functionality at narrow widths — reorganize it

## Real App References
- gnome-control-center/panels/mouse/cc-mouse-panel.blp
- gnome-text-editor/src/editor-window.ui
- loupe/src/widgets/window.ui
