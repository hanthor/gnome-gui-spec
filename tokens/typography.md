# Design Tokens: Typography

## Font
- **Adwaita Sans** (Inter variant) — system default
- **Adwaita Mono** — for code/terminal
- **Never hard-code font sizes** — use CSS classes

## Style Classes

| CSS Class | Weight | Size | Use |
|-----------|--------|------|-----|
| `body` | Regular | Default | Control labels, descriptive text |
| `title` | Bold | Large | Primary window titles, row titles |
| `subtitle` | Regular | Medium | Secondary heading text |
| `heading` | Bold | Medium | UI headings, group titles |
| `caption` | Regular | Small | Sub-text, file sizes, dates |
| `caption-heading` | Bold | Small | Column headers |
| `title-1` | Extra Bold | Large | Display headings (wizards, tours, greeters) |
| `title-2` | Bold | Large | Category/section titles |
| `title-3` | Semibold | Medium | Sub-headings |
| `title-4` | Medium | Small | Small headings |
| `large-title` | Extra Large | Extra Large | Greeter/welcome (rare, needs whitespace) |
| `monospace` | Regular | Default (mono) | Code, terminal, calculator digits |
| `numeric` | Regular | Default (tabular) | Clock digits, aligned numbers |
| `dim-label` | Regular | Default (muted) | Secondary info, descriptions |

## When to Use `title-1`
Only for display headings with **lots of whitespace**:
- ✅ Wizard/setup page headings (gnome-initial-setup)
- ✅ Carousel/onboarding headings (gnome-tour)
- ❌ Settings section headings (use `heading`)
- ❌ Row titles (use `title`)

## Capitalization

| Context | Rule | Example |
|---------|------|---------|
| Button labels | **Header case** | "Save", "Add to Favorites" |
| Switch labels | **Header case** | "Automatic Location" |
| Row titles | **Header case** | "Pointer Speed" |
| View switcher tabs | **Header case** | "Month", "Week" |
| Group titles | **Header case** | "Appearance" |
| Subtitles | **Sentence case** | "Return to your previous session" |
| Descriptions | **Sentence case** | "Automatically removes empty workspaces" |
| Placeholder text | **Sentence case** | "Search for a city or country" |
| Tooltips | **Sentence case** | "Leave Fullscreen" |

## Text Overflow
Always handle long text:
```xml
<property name="ellipsize">end</property>      <!-- or middle -->
<property name="max-width-chars">20</property>  <!-- constrain width -->
<property name="wrap">True</property>           <!-- or wrap -->
```
