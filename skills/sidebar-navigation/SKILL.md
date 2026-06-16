# Skill: Sidebar Navigation

## Goal: Add a sidebar for many views or dynamic content.

## Pattern: NavigationSplitView

```xml
<object class="Adw.NavigationSplitView" id="split_view">
  <property name="collapsed">false</property>

  <property name="sidebar">
    <object class="Adw.NavigationPage">
      <property name="title" translatable="yes">Locations</property>
      <property name="child">
        <!-- sidebar content: list of items -->
      </property>
    </object>
  </property>

  <property name="content">
    <object class="Adw.NavigationView">
      <!-- content pages -->
    </object>
  </property>
</object>
```

## Pattern: OverlaySplitView (properties sidebar)

```xml
<object class="Adw.OverlaySplitView" id="split_view">
  <property name="sidebar-position">end</property>
  <property name="show-sidebar">false</property>
  <property name="min-sidebar-width">350</property>
  <property name="content">
    <!-- main content -->
  </property>
  <property name="sidebar">
    <!-- properties panel -->
  </property>
</object>
```

**Toggle with a button**:
```xml
<object class="Gtk.ToggleButton" id="properties_button">
  <property name="active" bind-source="split_view" bind-property="show-sidebar" bind-flags="bidirectional|sync-create"/>
  <property name="icon-name">info-outline-symbolic</property>
  <property name="tooltip-text" translatable="yes">Document Properties</property>
</object>
```

## When to Use Which
| Pattern | When |
|---------|------|
| `AdwNavigationSplitView` | Permanent sidebar, many locations, dynamic lists |
| `AdwOverlaySplitView` | Toggleable properties panel, slides over content |
| `AdwFlap` | Foldable sidebar, adaptive collapse |

## Adaptive: OverlaySplitView → BottomSheet

For narrow screens, replace `AdwOverlaySplitView` with `AdwBottomSheet`:

```xml
<object class="Adw.BottomSheet">
  <property name="open" bind-source="toggle_btn" bind-property="active" bind-flags="bidirectional|sync-create"/>
  <property name="content"><!-- main --></property>
  <property name="sheet"><!-- sidebar content --></property>
</object>
```

## Real App References
- nautilus (NavigationSplitView for places)
- gnome-text-editor/src/editor-window.ui (OverlaySplitView + BottomSheet)
- Tavern: src/tap-page.blp (NavigationSplitView + Breakpoint collapse)
