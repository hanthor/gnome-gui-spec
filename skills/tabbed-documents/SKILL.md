# Skill: Tabbed Documents

## Goal: Support multiple open documents in an editor/viewer.

## Full Template

```xml
<object class="Adw.TabView" id="tab_view">
  <property name="hexpand">true</property>
  <property name="vexpand">true</property>
  <property name="menu-model">tab_menu</property>
  <signal name="close-page" handler="on_close_page"/>
  <signal name="setup-menu" handler="on_setup_menu"/>
  <signal name="create-window" handler="on_create_window"/>
</object>

<object class="Adw.TabBar" id="tab_bar">
  <property name="view">tab_view</property>
</object>
```

**Place TabBar in the [top] slot of AdwToolbarView, below the HeaderBar.**

## Adding Pages

**C**:
```c
AdwTabPage *page = adw_tab_view_add_page (tab_view, child_widget, NULL);
adw_tab_page_set_title (page, "Document.txt");
adw_tab_page_set_tooltip (page, "/home/user/Document.txt");
```

**Python**:
```python
page = self.tab_view.add_page(child_widget)
page.set_title("Document.txt")
page.set_tooltip("/home/user/Document.txt")
```

## Tab Context Menu

```xml
<menu id="tab_menu">
  <section>
    <item>
      <attribute name="label" translatable="yes">Move _Left</attribute>
      <attribute name="action">page.move-left</attribute>
      <attribute name="accel">&lt;control&gt;&lt;shift&gt;&lt;alt&gt;Page_Up</attribute>
    </item>
    <item>
      <attribute name="label" translatable="yes">Move _Right</attribute>
      <attribute name="action">page.move-right</attribute>
    </item>
  </section>
  <section>
    <item>
      <attribute name="label" translatable="yes">_Move to New Window</attribute>
      <attribute name="action">page.move-to-new-window</attribute>
    </item>
  </section>
  <section>
    <item>
      <attribute name="label" translatable="yes">Close _Other Tabs</attribute>
      <attribute name="action">win.close-other-pages</attribute>
    </item>
    <item>
      <attribute name="label" translatable="yes">_Close</attribute>
      <attribute name="action">win.close-current-page</attribute>
      <attribute name="accel">&lt;control&gt;w</attribute>
    </item>
  </section>
</menu>
```

## Tab Page Properties
- `title`: Tab label
- `tooltip`: Full file path
- `icon`: File type icon
- `indicator-icon`: Modified indicator
- `loading`: Show spinner
- `pinned`: Prevent closing
- `needs-attention`: Badge indicator

## Real App Reference
- gnome-text-editor/src/editor-window.ui (full implementation)
