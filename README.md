# gnome-gui-spec

**Build, audit, and improve GNOME apps with AI agents.**

A skill library and reference corpus for GTK4/libadwaita development, compiled
from the GNOME HIG (v47, all 47 pages mirrored) and source audits of 34 real
GNOME applications. Everything is plain markdown, structured for progressive
disclosure: an agent reads a ~60-line router, then loads only the one or two
files its task needs — small models never see the full corpus.

## What's inside

| Layer | Contents |
|-------|----------|
| **Quickstart** | [QUICKSTART.md](QUICKSTART.md) — zero → app → deployed Flatpak; lanes for Python, Rust, C, GJS |
| **Router** | [SKILL.md](SKILL.md) — task → file dispatch table + memorized defaults |
| **22 skills** | [skills/](skills/) — self-contained how-tos: scaffold an app, preferences, adaptive layout, search, undo, a11y, Flatpak, [CI/CD](skills/github-actions-ci/SKILL.md), and the [hig-audit](skills/hig-audit/SKILL.md) audit→fix workflow |
| **36 components** | [components/](components/) — one file per widget with Blueprint + XML + code; indexed in [COMPONENT-LIBRARY.md](COMPONENT-LIBRARY.md) |
| **Design tokens** | [tokens/](tokens/) — spacing scale, typography classes, CSS classes, icon categories |
| **Scripts** | [scripts/](scripts/) — `lint-app.sh` (automated HIG checks), `check-icons.sh` (validate icon names against the 645-icon catalog) |
| **Reference** | [reference/hig/](reference/hig/) — all 47 HIG pages as markdown; [reference/icons.md](reference/icons.md) — 645 Adwaita symbolic icons |
| **34 app audits** | [audits/](audits/) — how Settings, Files, Text Editor, Builder, Loupe, … actually build their UIs, with file:line citations |
| **Master docs** | [GNOME-AGENT-GUIDE.md](GNOME-AGENT-GUIDE.md) (full spec), [COMPONENT-LIBRARY.md](COMPONENT-LIBRARY.md) (42 widgets), [INTENT-MAP.md](INTENT-MAP.md) (intent → app → code) |

## Onboard your agent (easiest)

Paste this into any coding agent:

```
Read https://raw.githubusercontent.com/hanthor/gnome-gui-spec/main/ONBOARD.md and follow it.
```

The agent installs the library for its own harness, verifies it, learns the
routing contract, and reports back. See [ONBOARD.md](ONBOARD.md).

## Install manually

**Claude Code** — as a skill:

```bash
git clone https://github.com/hanthor/gnome-gui-spec ~/.claude/skills/gnome-gui
```

**pi** — as a package (`package.json` exposes `skills/`):

```bash
pi install github.com/hanthor/gnome-gui-spec
```

**Any agent** — clone anywhere and point the agent at `SKILL.md`:

```
Read /path/to/gnome-gui-spec/SKILL.md and follow its routing table.
```

## The three workflows

**Build** — "make me a GNOME app that does X":
agent reads `skills/quick-start/SKILL.md` → scaffolds window/menu/prefs/schema/meson
→ pulls pattern skills as features demand → validates with `scripts/lint-app.sh`.

**Audit** — "is this app HIG-compliant?":
agent runs `scripts/lint-app.sh <dir>` for the automatable checks, then
`skills/hig-audit/SKILL.md` for the 12-category deep audit (parallelizable
across sub-agents), producing a severity-ranked `HIG-AUDIT.md`.

**Improve** — "fix the violations":
the hig-audit fix loop — one commit per category, breakage before polish,
re-lint after each.

## Design principle: progressive disclosure

Agent context is expensive and small models drown in it. Rules this repo follows:

- `SKILL.md` routes; it never teaches. Each skill teaches one pattern and fits
  in a few hundred lines.
- Skills link onward (`reference/hig/…`) instead of inlining; agents follow
  links only when needed.
- Every skill has YAML frontmatter (`name`, `description` with trigger
  conditions) so harnesses can match without reading bodies.
- Sub-agents get one category + one reference file, never the whole repo.

## Contributing an app audit

1. Clone the app's source; find UI files: `find . -name '*.ui' -o -name '*.blp'`
2. Write `audits/<app>.md` following [audits/TEMPLATE.md](audits/TEMPLATE.md)
3. Integrate: new patterns → `INTENT-MAP.md`, new values →
   `GNOME-AGENT-GUIDE.md`, new widgets → `COMPONENT-LIBRARY.md`

Unaudited so far: most of GNOME Circle (~73 apps).

## License

Apache-2.0. HIG content mirrored from [GNOME HIG](https://developer.gnome.org/hig/)
(CC-BY-SA); audit snippets quote upstream apps under their respective licenses
for documentation purposes.
