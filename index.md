---
layout: default
title: Home
---

{% for post in site.posts %}
<div class="post">
  <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
  <p>{{ post.date | date: "%Y-%m-%d" }}</p>
</div>
{% endfor %}
