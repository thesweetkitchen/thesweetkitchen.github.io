---
title: Baking tests
permalink: "/baking-tests/"
layout: page-fullwidth
header:
  image_fullwidth: /assets/img/header/about-header.jpg
  subtitle: Testing the ingredients so you don't have to
breadcrumb: true
meta_title: Baking tests
---

{% assign counter = 1 %}
{% for post in site.posts limit:1000 %}
<div>def</div>
{{ counter }}22
  {% assign counter = 1 %}
  {{ counter }}

  {% if counter %}
    abc
    {% endif %}

{% endfor %}

<p>
If you are interested in a topic that's not here, please <a href="{{base.url}}">give me a shout</a> and I will try my best to make it happen.
</p>
