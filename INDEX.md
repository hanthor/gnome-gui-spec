# GNOME Agent Library — Full Index

> Agents: start at [SKILL.md](SKILL.md) (the router) and read only what it
> points to. This index is the complete human-browsable catalog.

## Master Reference
- **[GNOME-AGENT-GUIDE.md](GNOME-AGENT-GUIDE.md)** — Complete 12-section specification (HIG v47 + 34 app audits)
- **[COMPONENT-LIBRARY.md](COMPONENT-LIBRARY.md)** — 42-component catalog with Blueprint/XML examples
- **[INTENT-MAP.md](INTENT-MAP.md)** — Intent → pattern → code example lookup (34 apps)

## Onboarding & Quickstart
- **[ONBOARD.md](ONBOARD.md)** — point any agent at this file; it installs and learns the library itself
- **[QUICKSTART.md](QUICKSTART.md)** — zero → app → Flatpak, with lanes for Python, Rust, C, GJS

## Skills (22)

### Workflow
| Folder | What it does |
|--------|--------------|
| [quick-start](skills/quick-start/SKILL.md) | Minimal compliant GNOME app from scratch |
| [language-quickstart](skills/language-quickstart/SKILL.md) | Build setup: Python, Rust, C, Vala, GJS + Flatpak |
| [hig-audit](skills/hig-audit/SKILL.md) | 12-category HIG compliance audit → fix loop |
| [flatpak-packaging](skills/flatpak-packaging/SKILL.md) | Flatpak manifest, sandbox permissions, Flathub submission |
| [github-actions-ci](skills/github-actions-ci/SKILL.md) | CI, Flatpak release automation, Xvfb GUI smoke tests |

### Patterns
| Folder | What it teaches |
|--------|-----------------|
| [preferences-dialog](skills/preferences-dialog/SKILL.md) | Preferences dialog + Ctrl+comma + GSettings |
| [gsettings-backend](skills/gsettings-backend/SKILL.md) | GSettings schema, binding, window state |
| [delete-with-undo](skills/delete-with-undo/SKILL.md) | 4-tier destructive action system + undo toasts |
| [view-switcher](skills/view-switcher/SKILL.md) | Flat page switching with 3-5 tabs |
| [tabbed-documents](skills/tabbed-documents/SKILL.md) | AdwTabView multi-document support |
| [sidebar-navigation](skills/sidebar-navigation/SKILL.md) | OverlaySplitView, NavigationSplitView |
| [adaptive-layout](skills/adaptive-layout/SKILL.md) | Breakpoints, responsive design, BottomSheet |
| [header-bar](skills/header-bar/SKILL.md) | Header bar layout, buttons, tooltips |
| [empty-state](skills/empty-state/SKILL.md) | Loading spinners, empty states, StatusPages |
| [toast-feedback](skills/toast-feedback/SKILL.md) | Toasts, undo buttons, banners vs dialogs |
| [search-pattern](skills/search-pattern/SKILL.md) | SearchBar, live filtering, no-results state |
| [radio-group](skills/radio-group/SKILL.md) | CheckButton radio groups in preferences |
| [wizard-assistant](skills/wizard-assistant/SKILL.md) | Sequential setup flow, Back/Forward nav |
| [carousel-tour](skills/carousel-tour/SKILL.md) | AdwCarousel onboarding with nav dots |
| [shortcuts-window](skills/shortcuts-window/SKILL.md) | Shortcuts help window + standard accelerators |
| [about-dialog](skills/about-dialog/SKILL.md) | AdwAboutDialog + AppStream metainfo |
| [accessibility](skills/accessibility/SKILL.md) | A11y labels, roles, keyboard nav, Orca testing |

## Scripts
| Script | What it checks |
|--------|----------------|
| [scripts/lint-app.sh](scripts/lint-app.sh) | Blueprint syntax, schemas, deprecated widgets, hardcoded colors, ellipsis, icons |
| [scripts/check-icons.sh](scripts/check-icons.sh) | Every `-symbolic` icon name against the 645-icon Adwaita catalog, with suggestions |

## Components (36 widget files)
One file per widget with Blueprint + XML + code examples in
[components/](components/), indexed by category in
[COMPONENT-LIBRARY.md](COMPONENT-LIBRARY.md).

## Design Tokens
| File | Contents |
|------|----------|
| [tokens/spacing.md](tokens/spacing.md) | Margin, padding, spacing scale |
| [tokens/sizing.md](tokens/sizing.md) | Window sizing, sidebar widths, breakpoints |
| [tokens/typography.md](tokens/typography.md) | Font classes, capitalization rules |
| [tokens/style-classes.md](tokens/style-classes.md) | CSS class reference + compound patterns |
| [tokens/icons.md](tokens/icons.md) | Symbolic icon reference by category |

## Reference
- [reference/app-architecture.md](reference/app-architecture.md) — window structure, navigation choice, adaptive strategy, project layout
- [reference/app-templates.md](reference/app-templates.md) · [reference/layout-recipes.md](reference/layout-recipes.md) — skeleton widget trees
- [reference/anti-patterns.md](reference/anti-patterns.md) — anti-patterns + build checklist
- [reference/hig/](reference/hig/) — all **47 GNOME HIG pages** as markdown
- [reference/icons.md](reference/icons.md) — **645 Adwaita symbolic icons**

## App Audits (34)
Pattern-harvest audits of GNOME Core apps + dev tools in [audits/](audits/).
Template for new audits: [audits/TEMPLATE.md](audits/TEMPLATE.md).
Compliance-audit framework: [audits/audit-framework.md](audits/audit-framework.md).
