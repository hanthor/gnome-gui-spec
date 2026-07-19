# GNOME GUI Specification & Agent Authoring Guide

> **Compiled from**: GNOME HIG v47 + source audits of 34 GNOME apps (28 Core + 6 Dev Tools)
> **Version**: 2.0.0 — split into per-topic files; this is the map. Read only
> the file your task needs (task-based routing lives in [SKILL.md](SKILL.md)).

## 1. Design Principles

1. **Design for People** — Accommodate different abilities, cultures, form factors.
2. **Make it Simple** — Do one thing well. Progressive disclosure. Frequent actions near, infrequent far.
3. **Reduce User Effort** — Automate where possible. Minimize steps. Short text.
4. **Be Considerate** — Prevent mistakes. Allow undo instead of confirming. Don't interrupt.

## 2. The Spec, by Topic

| Topic | File |
|-------|------|
| Spacing & margin scale | [tokens/spacing.md](tokens/spacing.md) |
| Window sizing, sidebar widths, breakpoints | [tokens/sizing.md](tokens/sizing.md) |
| Typography, font classes, capitalization | [tokens/typography.md](tokens/typography.md) |
| CSS style classes | [tokens/style-classes.md](tokens/style-classes.md) |
| Icon categories | [tokens/icons.md](tokens/icons.md) · full catalog: [reference/icons.md](reference/icons.md) |
| Widget reference (42 widgets) | [COMPONENT-LIBRARY.md](COMPONENT-LIBRARY.md) → [components/](components/) |
| Window structure, navigation choice, adaptive strategy, project layout | [reference/app-architecture.md](reference/app-architecture.md) |
| App skeleton templates | [reference/app-templates.md](reference/app-templates.md) · [reference/layout-recipes.md](reference/layout-recipes.md) |
| Destructive actions & undo | [skills/delete-with-undo/SKILL.md](skills/delete-with-undo/SKILL.md) |
| Settings & preferences | [skills/preferences-dialog/SKILL.md](skills/preferences-dialog/SKILL.md) · [skills/gsettings-backend/SKILL.md](skills/gsettings-backend/SKILL.md) |
| Feedback (toasts, banners, dialogs) | [skills/toast-feedback/SKILL.md](skills/toast-feedback/SKILL.md) |
| Language/build setup (Python, Rust, C, Vala, GJS) | [skills/language-quickstart/SKILL.md](skills/language-quickstart/SKILL.md) |
| Anti-patterns & build checklist | [reference/anti-patterns.md](reference/anti-patterns.md) |
| Official HIG text (47 pages) | [reference/hig/](reference/hig/) |
| How real apps do it | [INTENT-MAP.md](INTENT-MAP.md) · [audits/](audits/) |

## 3. The Rules That Are Never Optional

- `AdwApplicationWindow` / `AdwHeaderBar` / `AdwToolbarView` — never the Gtk equivalents.
- `AdwDialog` / `AdwAlertDialog` — never GtkDialog/GtkMessageDialog.
- Spacing on the 6/12/18/24 scale; `width-request: 360` minimum.
- One navigation pattern per app (view switcher OR sidebar OR tabs OR drill-down).
- Undo toasts over confirmation dialogs for reversible actions.
- `_()` around every user-visible string; `…` never `...`.
- `tooltip-text` on every icon-only button; icons verified against the catalog.
- Header Case for buttons/rows/tabs/groups; sentence case for descriptions/subtitles.
- GSettings for persistence — never custom config files.
