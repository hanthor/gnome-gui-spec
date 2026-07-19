# App Architecture

> Window structure, navigation pattern choice, adaptive strategy, project layout.
> Extracted from GNOME HIG v47 + 34 app audits.

### 4.1 Window Structure

```
AdwApplicationWindow
├── AdwBreakpoint (adaptive conditions)
├── GtkShortcutController (keyboard shortcuts)
└── AdwToolbarView / AdwMultiLayoutView
    ├── [top] AdwHeaderBar
    │   ├── [start] primary actions (flat buttons)
    │   ├── [center] AdwWindowTitle or AdwViewSwitcher
    │   └── [end] menu buttons, secondary actions
    ├── content: main area
    └── [bottom] AdwViewSwitcherBar or status bar
```

**Rules**:
- Primary windows: independent, resizable
- `width-request: 360` minimum (universal)
- Secondary windows (prefs, properties): modal to primary
- Close via Escape on dialogs/secondary windows

### 4.2 Navigation Patterns — Pick ONE

| Pattern | Widget | When |
|---------|--------|------|
| **View Switcher** | `AdwViewSwitcher` + `AdwViewStack` | 3-5 equal-importance pages |
| **Sidebar** | `AdwNavigationSplitView` | 6+ views or dynamic content |
| **Tabs** | `AdwTabView` + `AdwTabBar` | Multiple documents |
| **Stack + Back** | `AdwNavigationView` | Hierarchical drill-down |
| **Menu modes** | Menu items + `AdwViewStack` | 6+ modes (Calculator) |

**Never mix navigation patterns.** If you need sub-pages AND flat switching, nest them: `AdwNavigationView` containing an `AdwViewStack` page (Clocks pattern).

### 4.3 Adaptive Strategy

1. Design from narrowest width first, expand up
2. Use `AdwBreakpoint` with `sp` (scaled pixel) conditions
3. Common narrow adaptations: ViewSwitcher → ViewSwitcherBar, sidebar → BottomSheet, label+icon → icon-only buttons
4. Use `AdwMultiLayoutView` for complete layout swaps, `AdwBreakpointBin` for property changes

## Project File Structure

```
my-gnome-app/
├── data/
│   ├── org.example.MyApp.desktop.in
│   ├── org.example.MyApp.gschema.xml
│   ├── org.example.MyApp.metainfo.xml
│   └── icons/
├── src/
│   ├── main.c (or main.rs, main.py)
│   ├── my-app-window.blp
│   ├── my-app-preferences.blp
│   ├── my-app-window.c (logic)
│   └── widgets/
├── po/                    # Translations
├── meson.build
└── README.md
```
