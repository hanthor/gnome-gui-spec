# Audit: <App Name>

> **App ID**: org.gnome.Example · **Language**: C/Rust/Vala/Python/GJS · **Source**: <repo url>
> **Audited**: YYYY-MM-DD · **UI files**: N `.ui` / N `.blp`

This is a *pattern-harvest* audit: document what the app does and which HIG
patterns it demonstrates, so the spec and INTENT-MAP can cite it. (For
*compliance* audits of third-party apps, use `skills/hig-audit/SKILL.md`.)

## Window architecture

Widget tree of the main window, top 3–4 levels only:

```
AdwApplicationWindow (default 800×600, min 360×294)
└── AdwToolbarView
    ├── [top] AdwHeaderBar …
    └── content: …
```

## Key patterns

For each notable pattern (3–8 per app):

### <Pattern name, e.g. "Collapsing sidebar at 500sp">
- **Widgets**: AdwOverlaySplitView + AdwBreakpoint
- **Where**: `src/window.blp:42`
- **Snippet** (trimmed to the essence, ≤15 lines):
```
…
```
- **Why it matters / when to copy it**: one sentence.

## Vitals table

| Property | Value |
|----------|-------|
| default-width / height | |
| width-request / height-request | |
| Breakpoints | |
| Sidebar widths | |
| Preferences content-width | |

## Novel findings

Anything not already in GNOME-AGENT-GUIDE.md / COMPONENT-LIBRARY.md — new
widgets, unusual values, deviations from the HIG (note whether deliberate).

## Integration checklist (after writing this audit)

- [ ] New patterns added to `INTENT-MAP.md` (intent → this app → file:line)
- [ ] New tokens/values merged into `GNOME-AGENT-GUIDE.md` tables
- [ ] New widgets added to `COMPONENT-LIBRARY.md`
- [ ] App added to the audited list in `README.md`
