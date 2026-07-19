# Design Tokens: Window Sizing, Sidebars, Breakpoints

Values extracted from 34 GNOME app audits.

## Window Sizing

| Property | Typical Value | Notes |
|----------|--------------|-------|
| `width-request` | `360` | **Minimum width** — universal |
| `height-request` | `260`, `294`, `300` | Minimum height |
| `default-width` | `480`, `600`, `900`, `1050` | Content-dependent |
| `default-height` | `498`, `650` | Content-dependent |
| `content-width` (prefs) | `462`, `520`, `600`, `610`, `640` | Preferences dialog |

## Sidebar Widths

| Property | Value | App |
|----------|-------|-----|
| `min-sidebar-width` | `255`–`280` | Property sidebars |
| `min-sidebar-width` | `300` | Manuals sidebar |
| `min-sidebar-width` | `350` | Document properties (Text Editor) |
| `sidebar-width-fraction` | `0.5` | D-Spy navigation split (50%) |
| `sidebar-width-fraction` | `0.66` | D-Spy overlay split (66%) |
| `max-sidebar-width` | `400` | D-Spy navigation split |
| `max-sidebar-width` | `800` | D-Spy overlay split |

## Breakpoint Values

| Condition | App | Effect |
|-----------|-----|--------|
| `max-width: 400sp` | Text Editor | Buttons become icon-only |
| `max-width: 500sp` | Settings, D-Spy | ViewSwitcher→WindowTitle, reveal ViewSwitcherBar; nested split view collapses |
| `max-width: 560sp` | Builder | Preferences sidebar collapses |
| `max-width: 590sp` | Loupe | Layout switches to narrow |
| `max-width: 600sp` | Clocks, Manuals | Reveal ViewSwitcherBar; full layout swap wide→narrow via MultiLayoutView |
| `max-width: 650sp` | Text Editor | Layout switches to narrow |
| `max-width: 700sp` | D-Spy | Outer OverlaySplitView collapses to overlay mode |
| `min-width: 590sp` | Loupe | Layout switches to wide |
