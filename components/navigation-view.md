# AdwNavigationView + AdwNavigationPage

```xml
<object class="AdwNavigationView" id="navigation_view">
  <object class="AdwNavigationPage" id="main_page">
    <property name="title" translatable="yes">Clocks</property>
    <object class="AdwToolbarView">
      <!-- main content -->
    </object>
  </object>
  <object class="AdwNavigationPage" id="detail_page">
    <property name="title" translatable="yes">City Detail</property>
    <property name="can-pop">True</property>
    <object class="GtkBox">
      <!-- detail content -->
    </object>
  </object>
</object>
```

**Properties**:
| Property | Type | Notes |
|----------|------|-------|
| `title` | string | Page title (shown in back button) |
| `can-pop` | bool | `false` to prevent back navigation |

**Push/pop in code**:
```c
adw_navigation_view_push (nav_view, 
    adw_navigation_page_new (child_widget, "Detail Title"));
```
