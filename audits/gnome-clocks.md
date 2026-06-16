# GNOME Clocks — GUI Audit

**Framework**: C (likely Vala initially) + GTK 4 + libadwaita  
**UI Format**: GtkBuilder XML (.ui)  
**ID**: org.gnome.clocks

## Architecture
- `ClocksWindow` (AdwApplicationWindow) with `hide-on-close: True`
- `AdwToastOverlay` wrapping everything
- `AdwNavigationView` → `AdwNavigationPage` (main) → AdwToolbarView
- Sub-pages pushed onto NavigationView for details (city detail, alarm ringing)

## Navigation Pattern
```
AdwNavigationView
├── AdwNavigationPage "main_page"
│   └── AdwToolbarView
│       ├── [top] ClocksHeaderBar (custom, ViewSwitcher)
│       ├── content: AdwViewStack (4 pages)
│       │   ├── world  (globe-symbolic)
│       │   ├── alarm  (alarm-symbolic)
│       │   ├── stopwatch (stopwatch-symbolic)
│       │   └── timer  (timer-symbolic)
│       └── [bottom] AdwViewSwitcherBar
├── AdwNavigationPage "world_subpage" (city detail)
├── AdwNavigationPage "alarm_subpage" (ringing, can-pop: false)
└── ...
```

## Key Patterns
1. **ViewSwitcher + NavigationView combo**: Flat pages + drill-down subpages
2. **Breakpoints**: `max-width: 600sp` triggers ViewSwitcherBar
3. **Custom HeaderBar widget**: ClocksHeaderBar manages stack and switcher_bar
4. **ViewStackPage icons**: Each page has `icon-name` property (globe, alarm, stopwatch, timer)
5. **Toast overlay**: Wraps entire NavigationView for transient messages
6. **`can-pop: false`**: Prevents back-navigation from alarm ringing page

## Adaptive
- Width 600sp breakpoint: hides ViewSwitcher in header, reveals ViewSwitcherBar
- Minimum: `width-request: 360, height-request: 294`

## Dialogs
- Alarm setup: AdwDialog-based
- Timer setup: custom dialog
- World location: dialog with search
- Sound chooser: dialog with list rows

## Notable
- `hide-on-close: True` — app stays running when window closed
- `GtkEventControllerKey` for global key handling
- Each "Face" is a custom widget (ClocksWorldFace, ClocksAlarmFace, etc.)
