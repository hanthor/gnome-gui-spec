# Layout Recipes

> Copy-paste window skeletons for standard GNOME app shapes.

### 5.1 Standard Preferences Window

```xml
<object class="AdwPreferencesDialog" id="preferences_dialog">
  <property name="search-enabled">true</property>
  <property name="content-width">600</property>
  <child>
    <object class="AdwPreferencesPage">
      <object class="AdwPreferencesGroup">
        <property name="title" translatable="yes">Section Title</property>
        <property name="description" translatable="yes">Optional context description</property>
        <!-- rows here -->
      </object>
    </object>
  </child>
</object>
```

### 5.2 Standard Main Window

```
Adw.ApplicationWindow {
  width-request: 360;
  default-width: 600;
  default-height: 500;

  Adw.Breakpoint {
    condition ("max-width: 500sp");
    setters { view_switcher_bar.reveal: true; }
  }

  content: Adw.ToolbarView {
    [top] Adw.HeaderBar {
      title-widget: Adw.WindowTitle { title: _("My App"); };
    }
    content: /* your content */
    [bottom] Adw.ViewSwitcherBar { stack: stack; }
  };
}
```

### 5.3 ViewSwitcher App Template

```
Adw.ApplicationWindow {
  Adw.Breakpoint { condition ("max-width: 500sp"); setters { bar.reveal: true; }; }

  Adw.ToolbarView {
    [top] Adw.HeaderBar {
      title-widget: Adw.ViewSwitcher { stack: stack; policy: wide; };
    }
    content: Adw.ViewStack stack {
      Adw.ViewStackPage { name: "a"; title: _("_First"); icon-name: "…-symbolic"; child: …; }
      Adw.ViewStackPage { name: "b"; title: _("_Second"); icon-name: "…-symbolic"; child: …; }
      Adw.ViewStackPage { name: "c"; title: _("_Third"); icon-name: "…-symbolic"; child: …; }
    };
    [bottom] Adw.ViewSwitcherBar bar { stack: stack; }
  };
}
```

### 5.5 MultiLayout Wide/Narrow Template

**From Manuals — swaps entire layout structure at a breakpoint using AdwMultiLayoutView.**

```
Adw.ApplicationWindow {
  width-request: 360;

  Adw.Breakpoint {
    condition ("max-width: 600sp");
    setters { multi_layout.layout-name: "narrow"; }
  }

  content: Adw.MultiLayoutView multi_layout {
    ["wide"] Adw.Layout {
      Adw.LayoutSlot "statusbar" { PanelStatusbar { ... } }
      Adw.LayoutSlot "stack" {
        Adw.TabView tabs { }
        Adw.TabBar tab_bar { view: tabs; }
      }
    }
    ["narrow"] Adw.Layout {
      Adw.LayoutSlot "sidebar_contents" {
        Adw.NavigationSplitView {
          Adw.NavigationPage sidebar { ... }
          Adw.NavigationPage content {
            Adw.ToolbarView {
              [top] Adw.HeaderBar { Adw.TabButton { view: tabs; } }
              content: Adw.TabOverview { child: tabs; }
              [bottom] toolbar { ... }
            }
          }
        }
      }
    }
  }
}
```

### 5.6 Tabbed Browser Template (Wide/Narrow)

**From Manuals — browser-style tabbed UI with AdwTabView + AdwTabBar (wide) / AdwTabOverview + AdwTabButton (narrow).**

```
Adw.ApplicationWindow {
  Adw.Breakpoint { condition ("max-width: 600sp"); settlers { multi_layout.layout-name: "narrow"; }; }

  Adw.MultiLayoutView multi_layout {
    ["wide"] Adw.Layout {
      AdwTabView tabs { menu-model: tab_menu; }
      AdwTabBar tab_bar { view: tabs; }
      // tabs content: one AdwTabPage per document
    }
    ["narrow"] Adw.Layout {
      Adw.TabOverview { child: tabs; }
      Adw.HeaderBar {
        [end] Adw.TabButton { view: tabs; }
        [end] Gtk.MenuButton { menu-model: primary_menu; }
      }
    }
  }
}
```

---
