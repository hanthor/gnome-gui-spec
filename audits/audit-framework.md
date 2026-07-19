# 12-Category HIG Compliance Audit Framework

The canonical, agent-executable version of this framework lives in
**[skills/hig-audit/SKILL.md](../skills/hig-audit/SKILL.md)** — start there.
This file keeps the category rubric in full detail for deep audits.

## Audit Categories

### Batch 1 — Frontend/UI Focus

| # | Category | Scope | What to Check |
|---|----------|-------|---------------|
| 1 | **Text** | All user-visible strings | Sentence case vs header case per context, ellipsis (…), menu item conventions, tooltip text, empty state descriptions, preference labels |
| 2 | **Buttons** | All interactive widgets | Toolbar icons exist in Adwaita theme, correct casing, toggle vs push buttons, flat style on header bar buttons |
| 3 | **Layout/margins** | Window chrome | Margin consistency (6/12/18/24 scale), AdwToolbarView usage, OverlaySplitView sidebar sizing, AdwStatusPage empty states, default window sizes |
| 4 | **Icons** | Every icon_name reference | Verify each icon name against the Adwaita catalog (`scripts/check-icons.sh`) — report missing icons with valid alternatives |
| 5 | **Keyboard shortcuts** | All accelerators | Standard GNOME bindings (Ctrl+N/O/S/Z/Y/P/Q, Ctrl+comma, Ctrl+?), no conflicts, all primary actions reachable |
| 6 | **Accessibility** | Labels, roles, tooltips | Accessible labels on all widgets, AccessibleRole on DrawingArea, tooltips on icon-only buttons, keyboard navigation, focus indicators |

### Batch 2 — Theme/Pattern/Infrastructure Focus

| # | Category | Scope | What to Check |
|---|----------|-------|---------------|
| 7 | **Color scheme** | UI colors | Hardcoded colors vs named Adwaita colors, dark mode palette, accent color on primary actions, contrast ratios, AdwStyleManager usage |
| 8 | **Dialog patterns** | All dialogs | AdwAlertDialog (not GtkDialog/MessageDialog), response ordering (Cancel first, affirmative last), destructive styling, modal anchoring, preferences dialog structure |
| 9 | **Responsive design** | Window sizing | AdwBreakpoint usage, responsive toolbar collapse, minimum 360px width, narrow layout, adaptive sidebar |
| 10 | **CSS classes** | Adwaita styling | Valid Adwaita class names (flat, pill, suggested-action, destructive-action, navigation-sidebar, linked, caption), no inline CSS where a class exists |
| 11 | **GSettings schema** | Schema files | Kebab-case keys, proper types, valid defaults, range constraints, schema ID matches app ID |
| 12 | **i18n** | Translation readiness | Untranslated user-visible strings, RTL layout support, text direction handling |

## Running the audit

Any agent harness works — each category is independent, so run them as
parallel sub-agents where available. Give each sub-agent **only** its category
row, the grep patterns from `skills/hig-audit/SKILL.md`, and the single
reference file listed there. Do not hand sub-agents this whole repository.

Examples:

```bash
# Claude Code: parallel general-purpose agents, one per category
# pi:
pi subagent --chain '[{"agent": "oracle", "task": "Audit icons per skills/hig-audit category 4 …"}, …]'
```

Automatable subset without any agent: `scripts/lint-app.sh <app-dir>`.

## Verdict output format

Each category reports:

```json
{
  "category": "icons",
  "total_violations": 3,
  "critical": 1,
  "violations": [
    {"file": "src/window.blp:42", "issue": "icon does not exist", "text": "trash-symbolic", "suggested": "user-trash-symbolic", "severity": "critical"}
  ],
  "clean": false
}
```

## Committing fixes

Fix in order: icons (4) → dialogs (8) → accessibility (6) → shortcuts (5) →
text (1) → the rest. One commit per category:

```bash
git commit -m "fix(hig): <category> — <summary of fixes>"
```
