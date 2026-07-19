# GtkInscription (Text with Overflow)

Use instead of `GtkLabel` when you need text-overflow behavior:

```xml
<object class="GtkInscription">
  <property name="text-overflow">ellipsize-middle</property>
  <property name="min-chars">25</property>
  <property name="nat-chars">25</property>
  <property name="xalign">0</property>
</object>
```
