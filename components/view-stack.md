# AdwViewStack + AdwViewSwitcher

**Package**: libadwaita-1  
**Use**: Flat page switching with 3-5 tabs.

## Blueprint
```
Adw.ViewStack main_stack {
  Adw.ViewStackPage {
    name: "page1";
    title: _("_First");
    use-underline: true;
    icon-name: "icon-one-symbolic";
    child: /* widget */;
  }
  Adw.ViewStackPage {
    name: "page2";
    title: _("_Second");
    use-underline: true;
    icon-name: "icon-two-symbolic";
    child: /* widget */;
  }
}

Adw.ViewSwitcher { stack: main_stack; policy: wide; }        /* in header bar */
Adw.ViewSwitcherBar { stack: main_stack; }                    /* bottom, narrow */
```

## XML
```xml
<object class="AdwViewStack" id="main_stack">
  <child>
    <object class="AdwViewStackPage">
      <property name="name">page1</property>
      <property name="title" translatable="yes">_First</property>
      <property name="use-underline">True</property>
      <property name="icon-name">icon-one-symbolic</property>
      <property name="child">...</property>
    </object>
  </child>
</object>
```

## ViewStackPage Properties
| Property | Required | Notes |
|----------|----------|-------|
| `name` | **Yes** | Internal identifier |
| `title` | **Yes** | Label with `_` accent |
| `use-underline` | **Yes** | Always `true` |
| `icon-name` | Recommended | Symbolic icon |
| `child` | **Yes** | Content widget |
| `visible` | No | `false` to hide |
| `needs-attention` | No | Badge indicator |

## Switching Programmatically
**Python**: `main_stack.set_visible_child_name("page2")`  
**C**: `adw_view_stack_set_visible_child_name(stack, "page2");`  
**Rust**: `stack.set_visible_child_name("page2");`

## See Also
- skills/view-switcher.md
- skills/adaptive-layout.md
