---
layout: default
title: "Service Knowledge Hub"
description: "Portfolio dei servizi gestiti in IIT."
---

<section class="hero portfolio-hero">
  <div class="hero-header">
    <img class="iit-logo" src="{{ '/images/iit_logo.png' | relative_url }}" alt="Logo Istituto Italiano di Tecnologia">
    <h1>Istituto italiano di tecnologia</h1>
  </div>

  <p class="subtitle">
    Portfolio delle attivita AI seguite in IIT dal 01/01/2024
  </p>
</section>

<section>
  <div class="section-title">
    <h2>Portfolio</h2>
  </div>

  <div class="service-list">
    {% assign portfolio_sections = "adoption-transformation,agents,collaborations" | split: "," %}
    {% for section_id in portfolio_sections %}
      {% assign section = site.data.sections[section_id] %}
      <a class="service-banner" href="{{ section.url | relative_url }}">
        <div class="icon">{{ section.icon }}</div>
        <div class="service-content">
          <h3>{{ section.title }}</h3>
          <p>{{ section.description }}</p>
        </div>
        <div class="arrow">&rarr;</div>
      </a>
    {% endfor %}

  </div>
</section>
