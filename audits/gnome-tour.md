# GNOME Tour — GUI Audit

**Framework**: Rust (gtk4-rs) + GTK 4 + libadwaita  
**UI Format**: GtkBuilder XML (.ui)  
**ID**: org.gnome.Tour

## Architecture
- `AdwApplicationWindow` (960×720 default)
- Single view: `PaginatorWidget` (AdwBin) > `AdwToolbarView`
- Content: `AdwCarousel` with `AdwCarouselIndicatorDots` in header
- Navigation: overlay Previous/Next buttons on sides

## Key Patterns

### Carousel + Overlay Navigation
```xml
<object class="PaginatorWidget" parent="AdwBin">
  <object class="AdwToolbarView">
    <child type="top">
      <object class="GtkHeaderBar">
        <property name="title-widget">
          <object class="AdwCarouselIndicatorDots" id="carousel_dots">
            <property name="carousel">carousel</property>
          </object>
        </property>
      </object>
    </child>
    <property name="content">
      <object class="GtkOverlay" id="previous_overlay">
        <!-- Previous button: .circular, left side overlay -->
        <object class="GtkButton" id="previous_btn">
          <property name="icon-name">prev-large-symbolic</property>
          <property name="margin-start">12</property>
          <property name="tooltip-text">Previous</property>
          <style><class name="circular"/></style>
        </object>
        <!-- Next button: .circular, right side overlay -->
        <!-- Start button: .suggested-action + .circular, right side overlay -->
        <object class="AdwCarousel" id="carousel"/>
      </object>
    </property>
  </object>
</object>
```

### Image Page Template
```xml
<object class="ImagePageWidget">
  <GtkBox orientation="vertical" spacing="12" valign="center" halign="center"
          margin-bottom="48" margin-top="12" margin-start="12" margin-end="12">
    <GtkPicture can-shrink="true" content-fit="contain"/>
    <GtkLabel style="title-1" justify="center" margin-top="36"/>
    <GtkLabel style="body" justify="center" margin-top="12" lines="2" wrap="true"/>
  </GtkBox>
</object>
```

## Spacing
| Value | Where |
|-------|-------|
| `12` | Default margins (start/end/top), box spacing |
| `36` | Gap between image and heading |
| `48` | Bottom margin (offsets from carousel dots) |
| `12` | Navigation button margin from edges |

## Navigation
- `previous-page` / `next-page` / `start-tour` actions
- `GtkEventControllerKey` for keyboard navigation (arrow keys)
- Carousel dots in header bar for position indicator
- Previous button hidden on first page
- "Start" button (suggested-action) replaces Next on last page

## Typography
- `title-1` for page headings (appropriate — lot of whitespace around display heading)
- `body` for description text
- `lines: 2` with `wrap: true` for body text (compact constraint)

## Notable
- **Correct use of `title-1`**: Display heading with generous whitespace in wizard/onboarding context
- Clean overwritten `.last-page` CSS class for final page styling
- `AdwCarouselIndicatorDots` placed in header bar title slot — clever use of existing container
- Navigation buttons as `GtkOverlay` overlays — keep content clean while providing access
