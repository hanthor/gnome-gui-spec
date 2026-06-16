# Skill: Carousel / Onboarding Tour

## Goal: Build a swipeable onboarding tour with navigation dots.

Pattern extracted from gnome-tour.

## Architecture

```xml
<template class="Window" parent="AdwApplicationWindow">
  <property name="default-width">960</property>
  <property name="default-height">720</property>
  <property name="content">
    <object class="PaginatorWidget" id="paginator">
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
          <object class="GtkOverlay">
            <!-- Previous button -->
            <child type="overlay">
              <object class="GtkButton" id="previous_btn">
                <property name="margin-start">12</property>
                <property name="icon-name">prev-large-symbolic</property>
                <property name="halign">start</property>
                <property name="valign">center</property>
                <property name="tooltip-text" translatable="yes">Previous</property>
                <style><class name="circular"/></style>
              </object>
            </child>
            <!-- Next button -->
            <child type="overlay">
              <object class="GtkButton" id="next_btn">
                <property name="margin-end">12</property>
                <property name="icon-name">next-large-symbolic</property>
                <property name="halign">end</property>
                <property name="valign">center</property>
                <property name="tooltip-text" translatable="yes">Next</property>
                <style><class name="circular"/></style>
              </object>
            </child>
            <!-- Carousel -->
            <object class="AdwCarousel" id="carousel">
              <property name="hexpand">True</property>
              <property name="vexpand">True</property>
            </object>
          </object>
        </property>
      </object>
    </object>
  </property>
</template>
```

## Slide Template

```xml
<template class="ImagePageWidget" parent="GtkWidget">
  <object class="GtkBox" id="container">
    <property name="orientation">vertical</property>
    <property name="spacing">12</property>
    <property name="valign">center</property>
    <property name="halign">center</property>
    <property name="margin-bottom">48</property>
    <property name="margin-top">12</property>
    <property name="margin-start">12</property>
    <property name="margin-end">12</property>

    <object class="GtkPicture" id="picture">
      <property name="can-shrink">true</property>
      <property name="content-fit">contain</property>
    </object>

    <object class="GtkLabel" id="head_label">
      <property name="justify">center</property>
      <property name="margin-top">36</property>
      <style><class name="title-1"/></style>
    </object>

    <object class="GtkLabel">
      <property name="lines">2</property>
      <property name="wrap">true</property>
      <property name="justify">center</property>
      <property name="margin-top">12</property>
      <style><class name="body"/></style>
    </object>
  </object>
</template>
```

## Last Page: Show Start Button

On the final slide, replace the Next button with a `suggested-action` button:

```xml
<object class="GtkButton" id="start_btn">
  <property name="margin-end">12</property>
  <property name="icon-name">next-large-symbolic</property>
  <property name="halign">end</property>
  <property name="valign">center</property>
  <style>
    <class name="suggested-action"/>
    <class name="circular"/>
  </style>
</object>
```

## Keyboard Navigation

Add `GtkEventControllerKey` for arrow key navigation:

```xml
<child>
  <object class="GtkEventControllerKey">
    <signal name="key-pressed" handler="on_key_pressed"/>
  </object>
</child>
```

## Spacing Reference
| Value | Where |
|-------|-------|
| `12` | Default margins, box spacing |
| `36` | Image ↔ heading gap |
| `48` | Bottom margin (offset from carousel dots) |
| `12` | Nav button edge margin |

## Rules
- Window: 960×720 default for tour content
- Dots in header bar center (clever use of title-widget slot)
- Navigation buttons as overlays (not in header bar)
- `title-1` for headings (lots of whitespace in carousel)
- `body` class for description text
- Limit body to 2 lines
- `GtkPicture` for scalable SVG illustrations

## Real App Reference
- gnome-tour/data/resources/ui/window.ui
- gnome-tour/data/resources/ui/paginator.ui
- gnome-tour/data/resources/ui/image-page.ui
