---
layout: splash
title: "Photography"
permalink: /photography/
author_profile: false
---

<section class="photo-intro">
  <p class="photo-kicker">Photography wall</p>
  <h1>Landscape moments in a quiet flow.</h1>
  <p>A personal wall for landscape photography: open skies, water, trees, roads, mountains, and quiet changes of light.</p>
</section>

<section class="masonry-wall" aria-label="Landscape photography wall">
  {% for photo in site.data.photography.photos %}
    <figure class="masonry-photo masonry-photo--{{ photo.orientation }}">
      <a href="{{ photo.image | relative_url }}">
        <img src="{{ photo.image | relative_url }}" alt="{{ photo.alt }}" loading="lazy">
      </a>
    </figure>
  {% endfor %}
</section>
