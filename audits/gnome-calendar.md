# GNOME Calendar — GUI Audit

**Framework**: C + GTK 4 + libadwaita  
**UI Format**: GtkBuilder XML (.ui)  
**ID**: org.gnome.Calendar

## Architecture
- Main window with ViewSwitcher (Month, Week, Year views) + sidebar
- GcalWindow → AdwApplicationWindow
- Sidebar: mini calendar + source list (calendars to display)

## Key Patterns

### ViewSwitcher + Sidebar Combo
```
AdwApplicationWindow
├── [top] AdwHeaderBar
│   ├── [start] sidebar toggle + today button
│   ├── [center] AdwViewSwitcher (Month/Week/Year)
│   └── [end] search + new event + menu
└── AdwOverlaySplitView / AdwFlap
    ├── sidebar: mini calendar + calendar source list
    └── content: GtkStack (Month view / Week view / Year view)
```

### Notification/Event Creation
- Event editor: inline popover or sidebar panel
- Date/time pickers for event scheduling
- Calendar source management (local + online accounts)

## Notable
- Deep integration with evolution-data-server (EDS) for calendar storage
- GNOME Online Accounts integration
- Uses AdwFlap or OverlaySplitView for sidebar toggle
- ViewSwitcher labels: Month, Week, Year (standard 3-view pattern)
- Complex date calculation and rendering logic
