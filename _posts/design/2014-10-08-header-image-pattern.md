---
title: Header Image With Pattern
date: 2014-10-08 00:00:00 Z
categories:
- design
tags:
- design
- pattern
- header
layout: page
subheadline: Headers With Style
teaser: Feeling Responsive allows you to use all kinds of headers. This example shows
  a header image in front of a pattern.
header:
  image: header_unsplash_2-970x.jpg
  pattern: pattern_concrete.jpg
  caption: This is a caption for the header image with link
  caption_url: https://unsplash.com/
---

It's so easy to do. Just define in front matter an image and a pattern image. Instead of a pattern you can also use a color. Have a look at the [example with a background color]({{ site.url }}{{ site.baseurl }}/design/header-image-color/).
<!--more-->

## Front Matter Code

~~~
header:
    image:  "header_unsplash_2-970x.jpg"
    pattern:  "pattern_concrete.jpg"
    caption: This is a caption for the header image with link
    caption_url: https://unsplash.com/
~~~



### All Header-Styles 
{: .t60 }

{% include list-posts tag='header' %}