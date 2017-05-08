---
title: Style your content!
permalink: "/design/"
layout: page
show_meta: false
subheadline: Layouts of Feeling Responsive
header:
  image_fullwidth: header_unsplash_5.jpg
---

<ul>
    {% for post in site.categories.design %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>