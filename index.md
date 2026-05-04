---
layout: default
title: "Service Knowledge Hub"
description: "Indice operativo dei servizi gestiti."
---

<section class="hero">
  <div class="eyebrow">Service Knowledge Hub</div>
  <h1>Un unico punto di accesso alla conoscenza operativa.</h1>
  <p class="subtitle">
    Catalogo dei servizi gestiti, pensato per documentare ownership, architettura,
    procedure operative, troubleshooting e passaggio di consegne futuro.
  </p>

  <div class="meta-grid">
    <div class="meta-card">
      <strong>Obiettivo</strong>
      <span>Ridurre la conoscenza implicita e rendere il passaggio di consegne piu semplice.</span>
    </div>
    <div class="meta-card">
      <strong>Contenuto</strong>
      <span>Servizi, API, piattaforme, runbook, contatti, repository e dashboard.</span>
    </div>
    <div class="meta-card">
      <strong>Manutenzione</strong>
      <span>Aggiornare ogni pagina quando cambiano ownership, endpoint o procedure.</span>
    </div>
  </div>
</section>

<section>
  <div class="section-title">
    <h2>Indice servizi</h2>
    <p>Clicca un banner per aprire la sezione dedicata. Ogni pagina dovrebbe contenere descrizione, responsabilita, link utili e procedure.</p>
  </div>

  <div class="service-list">
    <a class="service-banner" href="{{ '/agents/' | relative_url }}">
      <div class="icon">A</div>
      <div class="service-content">
        <h3>Agents</h3>
        <p>Documentazione degli agenti gestiti: scopo, flussi, configurazioni, dipendenze, monitoraggio e troubleshooting.</p>
        <div class="tags">
          <span class="tag">Runbook</span>
          <span class="tag">Prompt &amp; Tools</span>
          <span class="tag">Monitoring</span>
        </div>
      </div>
      <div class="arrow">&rarr;</div>
    </a>

    <a class="service-banner" href="{{ '/ai-platforms/' | relative_url }}">
      <div class="icon">AI</div>
      <div class="service-content">
        <h3>AI Platforms</h3>
        <p>Panoramica delle piattaforme AI aziendali: ambienti, accessi, ownership, deployment, costi e integrazioni.</p>
        <div class="tags">
          <span class="tag">Platform</span>
          <span class="tag">Deploy</span>
          <span class="tag">Accessi</span>
        </div>
      </div>
      <div class="arrow">&rarr;</div>
    </a>

    <a class="service-banner" href="{{ '/llm-api/' | relative_url }}">
      <div class="icon">API</div>
      <div class="service-content">
        <h3>LLM API</h3>
        <p>Indice delle API LLM: endpoint, autenticazione, limiti, modelli supportati, esempi di chiamata e incident management.</p>
        <div class="tags">
          <span class="tag">Endpoint</span>
          <span class="tag">Auth</span>
          <span class="tag">SLA</span>
        </div>
      </div>
      <div class="arrow">&rarr;</div>
    </a>
  </div>
</section>

<section class="template">
  <h2>Template minimo per ogni servizio</h2>
  <p>Usa questo schema in ogni pagina: <code>Scopo</code>, <code>Owner</code>, <code>Architettura</code>, <code>Repository</code>, <code>Dashboard</code>, <code>Procedure operative</code>, <code>Troubleshooting</code>, <code>Contatti</code>, <code>Passaggio di consegne</code>.</p>
</section>

<footer>
  Ultimo aggiornamento: inserire data &middot; Maintainer: inserire nome/team
</footer>
