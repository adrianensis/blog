---
layout: archive
permalink: /categories/
title: Posts by Category
---

{% include group-by-array collection=site.posts field="categories" %}

<ul class="taxonomy__index">
{% for category in group_names %}
  <li>
    <a href="#{{ category | slugify }}"> <strong>{{ category }}</strong> </a>
  </li>
{% endfor %}
</ul>

{% for category in group_names %}
  {% assign posts = group_items[forloop.index0] %}
  <h2 id="{{ category | slugify }}" class="archive__subtitle">{{ category }}</h2>
  {% for post in posts %}
    {% include archive-single.html type="list" %}
  {% endfor %}
{% endfor %}