# App Templates

> Skeleton widget trees for the standard GNOME app shapes. For a full runnable
> scaffold see `../skills/quick-start/SKILL.md`.

### 5.1 Simple Utility App

```
AdwApplicationWindow
└── AdwToolbarView
    ├── [top] AdwHeaderBar (AdwWindowTitle)
    └── content: main widget
```

### 5.2 Settings/Control Panel (ViewSwitcher)

```
AdwApplicationWindow
├── AdwBreakpoint { condition ("max-width: 500sp"); setters { bar.reveal: true; }; }
└── AdwToolbarView
    ├── [top] AdwHeaderBar (AdwViewSwitcher { stack; policy: wide; })
    ├── content: AdwViewStack
    │   ├── AdwViewStackPage { name; title; icon-name; child: AdwPreferencesPage { ... } }
    │   └── ...
    └── [bottom] AdwViewSwitcherBar { stack; }
```

### 5.3 Document Editor (Tabs + Sidebar)

```
AdwApplicationWindow
├── AdwBreakpoint { condition ("max-width: 650sp"); setter { layout.layout-name: "narrow"; }; }
└── AdwMultiLayoutView
    ├── wide: AdwLayout
    │   └── AdwOverlaySplitView (sidebar="end", min-sidebar-width: 350)
    │       ├── content: AdwTabView + AdwTabBar
    │       └── sidebar: properties panel
    └── narrow: AdwLayout
        └── AdwBottomSheet
            ├── content: AdwTabView + AdwTabBar
            └── sheet: properties panel
```

### 5.4 Content Browser (Sidebar)

```
AdwApplicationWindow
└── AdwNavigationSplitView
    ├── sidebar: AdwNavigationPage list
    └── content: AdwNavigationView with content pages
```

### 5.5 Fullscreen Media Viewer

```
AdwApplicationWindow
└── AdwToastOverlay
    └── AdwViewStack { enable-transitions: true; }
        ├── main view: AdwToolbarView { [top] shy header bar }
        └── edit view
```

Dark theme by default for media apps.

### 5.6 Wizard / Assistant (gnome-initial-setup)

```
GtkBox (vertical)
├── GtkHeaderBar (no title buttons)
│   ├── [start] Cancel, Back
│   ├── [center] GtkLabel (bold title)
│   └── [end] Skip, Forward (suggested-action)
└── GtkStack (slide-left-right transition)
    ├── Welcome Page: AdwStatusPage + suggested-action pill button
    ├── Privacy Page: AdwPreferencesPage > AdwPreferencesGroup
    │   ├── GisPageHeader (96px icon, title-1, subtitle, centered)
    │   ├── AdwActionRow + GtkSwitch rows
    │   └── Footer Label (dim-label, centered)
    └── Summary Page: ...
```

**Use when**: Sequential setup flow where user progresses through pages in order.
**Navigation**: Back/Forward buttons. Forward is `suggested-action`. Skip button optional.
**Page header**: Large icon (96px, dim-label), `title-1`, centered subtitle — lots of whitespace.

### 5.7 Carousel Tour / Onboarding (gnome-tour)

```
AdwApplicationWindow (960×720)
└── PaginatorWidget > AdwToolbarView
    ├── [top] GtkHeaderBar
    │   └── [center] AdwCarouselIndicatorDots { carousel; }
    └── content: GtkOverlay
        ├── [overlay] Previous button (.circular, left side)
        ├── [overlay] Next button / Start button (.suggested-action + .circular, right side)
        └── AdwCarousel
            ├── ImagePageWidget (SVG picture, title-1 heading, body text)
            ├── ...
            └── ImagePageWidget (last page: .last-page CSS class)
```

**Use when**: Feature tour, onboarding slideshow, or image carousel.
**Navigation**: Previous/Next overlay buttons. Last page has `suggested-action` "Start" button.
**Page template**: SVG image (`GtkPicture`), `title-1` heading (margin-top: 36), `body` text (lines: 2).

### 5.8 MultiLayout Wide/Narrow (Manuals)

```
AdwApplicationWindow
├── AdwBreakpoint { condition ("max-width: 600sp"); setters { multi_layout.layout-name: "narrow"; }; }
└── AdwMultiLayoutView multi_layout
    ├── wide: AdwLayout
    │   ├── AdwLayoutSlot "statusbar"
    │   │   └── PanelStatusbar { [prefix] PathBar }
    │   └── AdwLayoutSlot "stack"
    │       ├── AdwTabView tabs { menu-model: tab_menu; }
    │       └── AdwTabBar tab_bar { view: tabs; }
    └── narrow: AdwLayout
        └── AdwLayoutSlot "sidebar_contents"
            └── AdwNavigationSplitView
                ├── sidebar: AdwNavigationPage list + search
                └── content: AdwNavigationPage
                    └── AdwToolbarView
                        ├── [top] AdwHeaderBar { AdwTabButton { view: tabs; } }
                        ├── content: AdwTabOverview { child: tabs; }
                        └── [bottom] toolbar
```

**Use when**: App needs completely different widget trees at different widths (not just property changes).
**Source**: `sources/manuals/src/manuals-window.ui`

### 5.9 Developer Inspector / Viewer App (D-Spy)

```
AdwApplicationWindow
├── AdwBreakpoint { condition ("max-width: 700sp"); setters { outer_split.collapsed: true; }; }
├── AdwBreakpoint { condition ("max-width: 500sp"); setters { inner_split.collapsed: true; signal::apply handler; }; }
└── AdwOverlaySplitView outer_split
    ├── content: AdwNavigationSplitView inner_split
    │   ├── sidebar: AdwNavigationView
    │   │   └── AdwNavigationPage
    │   │       └── AdwToolbarView
    │   │           ├── [top] AdwHeaderBar { AdwWindowTitle; GtkSearchEntry (bidirectional filter); }
    │   │           └── content: GtkListView (navigation-sidebar, no-selection)
    │   │               ├── factory: GtkBuilderListItemFactory (inline)
    │   │               └── model: GtkFilterListModel → GtkStringFilter → GtkSortListModel
    │   └── content: AdwNavigationView
    │       └── AdwNavigationPage (detail)
    │           └── AdwToolbarView
    │               ├── [top] AdwHeaderBar { AdwWindowTitle }
    │               └── content: GtkStack (empty / property / signal / method)
    │                   └── AdwPreferencesPage
    │                       └── AdwPreferencesGroup
    │                           └── AdwActionRow { subtitle-selectable: true; property CSS; }
    └── sidebar: (not used — one-pane in narrow mode)
```

**Use when**: Master-detail inspector/debugger with searchable lists and selectable property text.
**Key patterns**: `subtitle-selectable`, bidirectional filter binding, nested split views, inline `GtkBuilderListItemFactory`.
