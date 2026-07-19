# GtkStack (View Transitions)

```xml
<object class="GtkStack" id="stack">
  <property name="transition-type">crossfade</property>
  <property name="transition-duration">200</property>
  <child>
    <object class="GtkStackPage">
      <property name="name">page1</property>
      <property name="child">...</property>
    </object>
  </child>
  <child>
    <object class="GtkStackPage">
      <property name="name">page2</property>
      <property name="child">...</property>
    </object>
  </child>
</object>
```

**Switch pages in code**:
```c
gtk_stack_set_visible_child_name (stack, "page2");
```
