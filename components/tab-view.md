# AdwTabView + AdwTabBar

## AdwTabView + AdwTabBar

```xml
<object class="AdwTabView" id="tab_view">
  <property name="hexpand">true</property>
  <property name="vexpand">true</property>
  <property name="menu-model">tab_menu</property>
  <signal name="close-page" handler="on_tab_view_close_page_cb"/>
</object>
<object class="AdwTabBar" id="tab_bar">
  <property name="view">tab_view</property>
</object>
```

**TabBar placement**: In the `[top]` slot of `AdwToolbarView`, below the HeaderBar.

## AdwTabView + AdwTabBar + AdwTabOverview + AdwTabButton

**Full tabbed-browser pattern for multi-document apps.**

```xml
<object class="AdwTabView" id="tab_view">
  <property name="hexpand">true</property>
  <property name="vexpand">true</property>
  <property name="menu-model">tab_menu</property>
  <signal name="close-page" handler="on_tab_close"/>
  <property name="child">
    <!-- page content goes here, one per AdwTabPage -->
  </property>
</object>
```

**TabBar (wide layout)**:
```xml
<object class="AdwTabBar" id="tab_bar">
  <property name="view">tab_view</property>
</object>
```

**TabOverview + TabButton (narrow layout — replaces TabBar)**:
```xml
<object class="AdwTabOverview">
  <property name="child">tab_view</property>
</object>
<object class="AdwTabButton">
  <property name="view">tab_view</property>
</object>
```

**Real usage**: `sources/manuals/src/manuals-window.ui:137-400` — wide layout uses `AdwTabBar`, narrow layout uses `AdwTabOverview` + `AdwTabButton`.
