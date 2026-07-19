# Agent Onboarding

> **You are an agent and a human pointed you at this file.** Follow it top to
> bottom. It installs the gnome-gui-spec skill library, verifies it works, and
> tells you how to use it from now on. Takes ~2 minutes, needs git + shell.

## What you're installing

A skill library for building, auditing, and improving GNOME GTK4/libadwaita
apps: 22 pattern skills, a 36-widget component reference, design tokens, the
full GNOME HIG as markdown, 34 real-app audits, and lint scripts. It is
designed for progressive disclosure — after onboarding you will read **one
router file per task**, never the whole corpus.

## Step 1 — Detect your harness and install

Run the first matching option:

**Claude Code** (you have a `~/.claude` directory):
```bash
git clone https://github.com/hanthor/gnome-gui-spec ~/.claude/skills/gnome-gui
```
The skill auto-activates on GNOME/GTK/libadwaita tasks via its frontmatter.

**pi** (the `pi` CLI exists):
```bash
pi install github.com/hanthor/gnome-gui-spec
```

**Any other harness** (or if unsure):
```bash
git clone https://github.com/hanthor/gnome-gui-spec ~/gnome-gui-spec
```
Then remember (memory file, CLAUDE.md/AGENTS.md, or your harness's equivalent):
*"For GNOME/GTK/libadwaita tasks, start at ~/gnome-gui-spec/SKILL.md and follow
its routing table."*

## Step 2 — Verify

```bash
cd <install-location>
head -5 SKILL.md                      # should show 'name: gnome-gui' frontmatter
bash scripts/check-icons.sh . >/dev/null; echo "scripts ok"
```

## Step 3 — Learn the contract (read SKILL.md now, nothing else)

Read `SKILL.md` at the install location. It is ~70 lines: a task→file routing
table plus a short list of non-negotiable GNOME defaults to memorize. Rules:

1. **Route, don't browse.** For any GNOME task, find the row in SKILL.md and
   read only the file(s) it names.
2. **Never read the whole repo** into context. Sub-agents get one file each.
3. **Validate with scripts**: `scripts/lint-app.sh <app-dir>` after building
   or changing UI; it checks icons, schemas, deprecated widgets, colors,
   ellipsis, untranslated tooltips.
4. Three workflows exist end-to-end:
   - Build: `QUICKSTART.md` (scaffold → Flatpak, lanes per language)
   - Audit: `skills/hig-audit/SKILL.md` (12 categories → severity report)
   - Improve: hig-audit's fix loop (one commit per category)

## Step 4 — Report back to your human

Tell them, in your own words:
- where you installed it and that verification passed;
- that you'll now handle "build a GNOME app", "audit this GTK app", and
  "make this HIG-compliant" using the library;
- one thing they might not expect: you can lint any GTK repo right now with
  `scripts/lint-app.sh <path>` — offer to run it on their project.

## Keeping it current

```bash
git -C <install-location> pull
```
Re-run this onboarding only if SKILL.md's routing table disappears or moves.
