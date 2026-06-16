# Design Tokens: Spacing

## Spacing Scale
Values extracted from 12 GNOME Core apps.

| Value | Where | Priority |
|-------|-------|----------|
| `0` | Eliminating margins (welcome full-bleed) | Rare |
| `3` | Tight icon+label, toggle buttons | Rare |
| `4` | Inline progress, compact badges | Rare |
| `6` | **Row spacing** — icon↔label, list items, title↔subtitle | **Primary** |
| `8` | Horizontal layout, card gaps | Common |
| `10` | Inter-group spacing, list row internal | Frequent |
| `12` | **Container interior** — default padding | **Primary** |
| `16` | Card interior (non-standard, Tavern) | Avoid |
| `18` | **Card/grid interior** — generous padding | **Primary** |
| `20` | Content boxes (non-standard, Tavern) | Avoid |
| `24` | **Section margin** — between major groups | **Primary** |
| `32` | Bottom page padding | Occasional |
| `36` | Image↔heading gap in carousel/tour | Occasional |
| `40` | Bottom page padding | Occasional |
| `48` | Carousel bottom (offset from dots) | Occasional |

## Standard Row Padding
```
margin-top: 12;
margin-bottom: 12;
margin-start: 12;
margin-end: 12;
```

## Standard Card/Grid Padding
```
margin-top: 18;
margin-bottom: 18;
margin-start: 18;
margin-end: 18;
```

## Container Spacing
```
Box { spacing: 12; }    /* default container */
Box { spacing: 6; }     /* tight controls */
Box { spacing: 18; }    /* card layout */
Box { spacing: 24; }    /* section-level */
```

## FlowBox / Grid
```
column-spacing: 8;
row-spacing: 8;
```
