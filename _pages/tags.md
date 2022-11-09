---
layout: collection
permalink: /tags/
title: Posts by Tags
---

{% include group-by-array collection=site.posts field="tags" %}

<ul class="taxonomy__index">
{% for tag in group_names %}
  <li>
    <a href="#{{ tag | slugify }}"> <strong>{{ tag }}</strong> </a>
  </li>
{% endfor %}
</ul>

{% for tag in group_names %}
  {% assign posts = group_items[forloop.index0] %}
  <h2 id="{{ tag | slugify }}" class="archive__subtitle">{{ tag }}</h2>
  {% for post in posts %}
    {% include archive-single.html type="list" %}
  {% endfor %}
{% endfor %}