# Skill: Add ViewSwitcher Navigation

## Goal: Add flat page switching with 3-5 tabs to your app.

## Blueprint Template
```
Adw.ApplicationWindow {
  width-request: 360;

  Adw.Breakpoint {
    condition ("max-width: 500sp")
    setters { view_switcher_bar.reveal: true; }
  }

  content: Adw.ToolbarView {
    [top] Adw.HeaderBar {
      title-widget: Adw.ViewSwitcher {
        stack: main_stack;
        policy: wide;
      };
    };

    content: Adw.ViewStack main_stack {
      Adw.ViewStackPage {
        name: "page1";
        title: _("_First");
        use-underline: true;
        icon-name: "icon-one-symbolic";
        child: /* your widget */;
      }
      Adw.ViewStackPage {
        name: "page2";
        title: _("_Second");
        use-underline: true;
        icon-name: "icon-two-symbolic";
        child: /* your widget */;
      }
      Adw.ViewStackPage {
        name: "page3";
        title: _("_Third");
        use-underline: true;
        icon-name: "icon-three-symbolic";
        child: /* your widget */;
      }
    };

    [bottom] Adw.ViewSwitcherBar view_switcher_bar {
      stack: main_stack;
      reveal: false;
    }
  };
}
```

## ViewStackPage Properties
| Property | Required | Notes |
|----------|----------|-------|
| `name` | **Yes** | Internal identifier for programmatic switching |
| `title` | **Yes** | Display label with `_` for access key |
| `use-underline` | **Yes** | Always `true` |
| `icon-name` | Recommended | Symbolic icon name |
| `child` | **Yes** | The content widget |
| `visible` | No | `false` to hide conditionally |
| `needs-attention` | No | Badge indicator on the tab |

## Breakpoint Setup
```
Adw.Breakpoint {
  condition ("max-width: 500sp")   /* or 600sp for Clocks */
  setters {
    view_switcher_bar.reveal: true;   /* show bottom bar */
  }
}
```
At narrow widths, the `AdwViewSwitcherBar` appears at the bottom. The header bar switcher is automatically hidden (via `policy: wide` on `AdwViewSwitcher`).

## Rules
- **3-5 views only**. If you need more, use a sidebar.
- Give views roughly equal label length
- Nouns, not verbs: "Albums" not "Show Albums"
- Each view is equal importance (flat hierarchy)
- If you need sub-pages, nest inside `AdwNavigationView`

## Real App References
- gnome-control-center/panels/mouse/cc-mouse-panel.blp (Mouse/Touchpad/Pointing Stick)
- gnome-clocks/data/ui/window.ui (World/Alarms/Stopwatch/Timer)
- gnome-calendar (Month/Week/Year)
