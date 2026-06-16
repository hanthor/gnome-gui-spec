# Design Tokens: CSS Style Classes

## Widget Styles

| Class | Effect | Used On |
|-------|--------|---------|
| `body` | Default text style | Labels, descriptions |
| `title` | Primary title weight/size | Header bar titles, row titles |
| `subtitle` | Secondary title style | Header bar subtitle, row subtitles |
| `heading` | Section heading weight | PreferencesGroup titles |
| `caption` | Small secondary text | File sizes, dates, metadata |
| `dim-label` | Muted/dimmed text | Secondary info, descriptions |
| `suggested-action` | Blue accent button | Primary CTA (Save, Install, New) |
| `destructive-action` | Red warning button | Delete, Clear History, Remove |
| `flat` | No background/border | Header bar buttons |
| `circular` | Round icon button | Close/remove buttons, nav buttons |
| `pill` | Rounded prominent button | Standalone CTAs |
| `large-button` | Extra-large button | Welcome screen CTAs |
| `linked` | Join adjacent buttons | Toggle groups, format toolbars |
| `card` | Card-like raised background | Content cards, previews, tiles |
| `boxed-list` | Standard list container | Settings lists, metadata lists |
| `frame` | Bordered frame | Image containers, preview borders |
| `background` | View background | Content areas |
| `osd` | On-screen display | Overlay controls, progress bars |
| `numeric` | Tabular number font | Clock displays, aligned numbers |
| `monospace` | Fixed-width font | Code, terminal |

## Compound Patterns

| Combination | Where |
|-------------|-------|
| `.suggested-action` `.pill` | Primary CTA button |
| `.suggested-action` `.large-button` `.pill` | Welcome screen CTA |
| `.suggested-action` `.circular` | Tour/onboarding start button |
| `.destructive-action` | Delete/remove button (alone or with `.pill`) |
| `.circular` `.flat` | Header bar close/remove button |
| `.caption` `.dim-label` | Secondary metadata text |
| `.card` `.frame` | Card with visible border |

## App-Specific CSS Convention

Add a namespace class on the window:
```xml
<style><class name="org-gnome-TextEditor"/></style>
```

Then scope custom CSS:
```css
.org-gnome-TextEditor .preview { }
```

## Anti-Patterns
- ❌ Hard-coding font sizes in CSS (`font-size: 0.9em`)
- ❌ Custom class names that duplicate Adwaita functionality (`medium-pill` instead of `.pill`)
- ❌ Inline style properties in Blueprint (use CSS classes)
