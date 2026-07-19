---
name: gnome-hig-audit
description: Audit a GTK4/libadwaita app for GNOME HIG compliance across 12 categories (text, icons, layout, shortcuts, accessibility, color, dialogs, responsiveness, CSS, GSettings, i18n), then fix violations category by category. Use when asked to audit, review, polish, or "make HIG-compliant" a GNOME app, or before a release/Flathub submission.
---

# Skill: HIG Audit & Fix Loop

Audit a GTK4/libadwaita codebase against the GNOME HIG, produce a violation
report, then fix violations in priority order with one commit per category.

**Context budget**: do NOT read the whole repo or the whole spec. For each
category, read only the files listed in its "Reference" column, and only scan
source files matched by its grep patterns.

## Step 0 — Inventory (cheap, do once)

```bash
# UI definitions
find . -name "*.ui" -o -name "*.blp" | grep -v build
# Source language
ls src/ | head
# Schema + metainfo + desktop file
find . -name "*.gschema.xml" -o -name "*.metainfo.xml*" -o -name "*.desktop*" | grep -v build
```

If there are no `.ui`/`.blp` files, UI is built in code — grep source for
`icon_name`, `set_title`, `add_css_class` etc. instead.

## Step 1 — Audit categories

Run the categories below. Each is independent — parallelize across sub-agents
if your harness supports it (give each sub-agent ONLY its row, the grep
patterns, and the one reference file — not this whole repo).

| # | Category | Find candidates with | Reference (read only this) |
|---|----------|----------------------|----------------------------|
| 1 | Text style | `grep -rn 'title\|label\|tooltip' *.blp *.ui` | `reference/hig/writing-style.md` + `tokens/typography.md` |
| 2 | Buttons | `grep -rn 'Button\|icon-name' *.blp *.ui` | `reference/hig/buttons.md` |
| 3 | Layout/margins | `grep -rn 'margin\|spacing\|width-request' *.blp *.ui` | `tokens/spacing.md` |
| 4 | Icons | `grep -rhoE '[a-z0-9-]+-symbolic' -r . \| sort -u` | validate with `scripts/check-icons.sh` |
| 5 | Shortcuts | `grep -rn 'accel\|<primary>\|<Control>' src/` | `reference/hig/keyboard.md` |
| 6 | Accessibility | icon-only buttons without `tooltip-text`; DrawingArea without accessible role | `reference/hig/accessibility.md` |
| 7 | Color | `grep -rnE '#[0-9a-fA-F]{3,8}\|rgb(' src/ data/` | `reference/hig/palette.md` |
| 8 | Dialogs | `grep -rn 'Dialog' *.blp *.ui src/` | `reference/hig/dialogs.md` |
| 9 | Responsiveness | `grep -rn 'Breakpoint\|width-request' *.blp *.ui` | `skills/adaptive-layout/SKILL.md` |
| 10 | CSS classes | `grep -rn 'styles \[\|add_css_class' .` | `tokens/style-classes.md` |
| 11 | GSettings | read the `.gschema.xml` | `skills/gsettings-backend/SKILL.md` |
| 12 | i18n | `grep -rn '"' *.blp \| grep -v '_('` (untranslated strings) | `reference/hig/writing-style.md` |

### What counts as a violation (quick rubric)

- **Text**: Title Case where sentence case belongs (menu items, descriptions,
  subtitles); `...` instead of `…`; missing `…` on menu items that open a
  dialog. Header case IS correct for buttons, row titles, tab labels, group titles.
- **Buttons**: non-flat buttons in header bars; labeled buttons where an icon
  is standard; icon-only buttons without tooltips.
- **Layout**: margins/spacing off the 6/12/18/24 scale; window
  `width-request` below 360; missing `AdwStatusPage` for empty states.
- **Icons**: any `-symbolic` name not present in the Adwaita icon theme
  (run `scripts/check-icons.sh`).
- **Shortcuts**: missing standard accelerators (Ctrl+Q quit, Ctrl+comma
  preferences, Ctrl+N/O/S/W/F where applicable); conflicts.
- **Dialogs**: `GtkDialog`/`GtkMessageDialog` instead of `AdwDialog`/
  `AdwAlertDialog`; destructive response not styled `destructive`; wrong
  response order (Cancel first, affirmative last).
- **Color**: hard-coded hex/rgb where a named Adwaita color
  (`@accent_bg_color`, `@error_color`, …) or CSS class exists.
- **i18n**: user-visible strings not wrapped in `_()` / marked translatable.

## Step 2 — Report

Write findings to `HIG-AUDIT.md` in the audited repo (or return them),
one section per category:

```markdown
## 4. Icons — 3 violations (1 critical)
| Severity | Location | Issue | Fix |
|----------|----------|-------|-----|
| critical | src/window.blp:42 | `trash-symbolic` does not exist | `user-trash-symbolic` |
| minor | src/window.blp:80 | icon-only button lacks tooltip | add `tooltip-text: _("Delete")` |
```

Severity: **critical** = broken (missing icon, crash, inaccessible),
**major** = clearly violates HIG, **minor** = polish (casing, spacing values).

## Step 3 — Fix loop

Only if asked to fix (an "audit" request alone delivers the report):

1. Fix in category order 4 → 8 → 6 → 5 → 1 → the rest (breakage first, polish last).
2. One commit per category: `fix(hig): <category> — <summary>`
3. After each category, verify: `blueprint-compiler format`/build still passes,
   `scripts/check-icons.sh` is clean.
4. Re-run the category's grep to confirm zero remaining candidates.

## Audit report for this repo's collection

If auditing a GNOME app for inclusion in this repo's pattern library, use
`audits/TEMPLATE.md` instead — that documents patterns, not violations.
