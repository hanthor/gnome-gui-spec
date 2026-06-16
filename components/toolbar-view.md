# AdwToolbarView

**Package**: libadwaita-1  
**Use**: Standard outer container for every GNOME window.

## Blueprint
```
Adw.ToolbarView {
  [top]    Adw.HeaderBar { }
  content: /* main widget */
  [bottom] Adw.ViewSwitcherBar { stack: main_stack; }
}
```

## XML
```xml
<object class="AdwToolbarView">
  <child type="top">
    <object class="AdwHeaderBar">...</object>
  </child>
  <property name="content">
    <object class="AdwPreferencesPage">...</object>
  </property>
  <child type="bottom">
    <object class="AdwViewSwitcherBar">...</object>
  </child>
</object>
```

## Slots
| Slot | Widget |
|------|--------|
| `[top]` | AdwHeaderBar (can stack multiple) |
| `content:` | Main content widget |
| `[bottom]` | Status bar, AdwViewSwitcherBar, AdwTabBar |

## Code (Rust)
```rust
let toolbar = adw::ToolbarView::new();
toolbar.add_top_bar(&header);
toolbar.set_content(Some(&page));
```

## Code (Python)
```python
toolbar = Adw.ToolbarView()
toolbar.add_top_bar(header)
toolbar.set_content(page)
```

## Code (C)
```c
AdwToolbarView *toolbar = ADW_TOOLBAR_VIEW(adw_toolbar_view_new());
adw_toolbar_view_add_top_bar(toolbar, GTK_WIDGET(header));
adw_toolbar_view_set_content(toolbar, GTK_WIDGET(page));
```

## See Also
- skills/header-bar.md
- skills/view-switcher.md
