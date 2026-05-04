# Test in Locale

Sì, è possibile. Puoi lavorare in **VS Code**, modificare i file Markdown/CSS/HTML e vedere il sito in locale prima di fare push su GitHub.

GitHub consiglia proprio di testare localmente con Jekyll; segnala anche che il sito locale può differire da quello pubblicato se la gem `github-pages` locale non è aggiornata, quindi conviene usare Bundler e la gem `github-pages`. ([GitHub Docs][1])

## 1. Prerequisiti

Ti servono:

```text id="z8pq8o"
Ruby
Bundler
Jekyll / github-pages gem
VS Code
```

Su macOS o Linux di solito Ruby è già presente, ma spesso conviene installarne una versione aggiornata. Su Windows conviene usare **RubyInstaller**.

Verifica da terminale:

```bash id="n8ihlo"
ruby -v
gem -v
bundle -v
```

Se `bundle` non esiste, installalo:

```bash id="9bcio2"
gem install bundler
```

## 2. Apri il progetto in VS Code

Da terminale:

```bash id="lwjafs"
cd service-knowledge-hub
code .
```

Oppure apri VS Code e fai:

```text id="0fxe92"
File → Open Folder
```

selezionando la cartella del repository.

## 3. Crea il file `Gemfile`

Nella root del repository crea un file chiamato:

```text id="9dpqf9"
Gemfile
```

Dentro metti:

```ruby id="ekhlk6"
source "https://rubygems.org"

gem "github-pages", group: :jekyll_plugins
```

Questo serve per usare in locale le stesse dipendenze usate da GitHub Pages.

## 4. Installa le dipendenze

Nel terminale integrato di VS Code:

```bash id="0tcteb"
bundle install
```

Se tutto va bene, verrà creato anche un file:

```text id="c5t4y0"
Gemfile.lock
```

Puoi committarlo nel repository.

## 5. Avvia la preview locale

Sempre dal terminale:

```bash id="3otfno"
bundle exec jekyll serve
```

Poi apri nel browser:

```text id="oskuoy"
http://localhost:4000
```

Però attenzione: siccome stiamo usando l'**opzione A**, cioè repository normale, il sito avrà un `baseurl`.

Se nel tuo `_config.yml` hai:

```yml id="0jzlsx"
baseurl: "/service-knowledge-hub"
```

allora potresti dover aprire:

```text id="lzral3"
http://localhost:4000/service-knowledge-hub/
```

## 6. Comando consigliato per sviluppo locale

Per evitare confusione con il `baseurl`, puoi lanciare Jekyll così:

```bash id="vf9dyv"
bundle exec jekyll serve --baseurl ""
```

A quel punto apri semplicemente:

```text id="waczty"
http://localhost:4000
```

Questo è molto comodo mentre sviluppi in locale.

Quando poi pubblichi su GitHub Pages, nel file `_config.yml` lasci comunque:

```yml id="8kk47l"
baseurl: "/nome-repository"
```

## 7. Workflow tipico

Il tuo flusso diventa:

```text id="edc5jm"
1. Apri VS Code
2. Modifichi index.md, agents/index.md, style.css, ecc.
3. Nel terminale lanci bundle exec jekyll serve --baseurl ""
4. Apri http://localhost:4000
5. Controlli la preview
6. Fai commit e push
7. GitHub Pages pubblica il sito online
```

## 8. Esempio completo dei comandi

```bash id="jpu7bn"
cd service-knowledge-hub

gem install bundler

bundle install

bundle exec jekyll serve --baseurl ""
```

Poi apri:

```text id="5xlx13"
http://localhost:4000
```

## 9. Se vuoi vedere anche le modifiche automatiche

Di solito Jekyll aggiorna automaticamente quando modifichi i file. Se vuoi forzare il comportamento:

```bash id="pi2c1r"
bundle exec jekyll serve --baseurl "" --livereload
```

Poi lasci il terminale aperto mentre lavori in VS Code.

## Nota pratica

Non usare l'estensione "Live Server" di VS Code per questo progetto Jekyll. Live Server apre solo HTML statico, ma **non processa Jekyll**, quindi non interpreta bene:

```liquid id="tjog6e"
{{ content }}
{{ '/assets/css/style.css' | relative_url }}
{% if page.description %}
```

Per Jekyll devi usare:

```bash id="t1jnzn"
bundle exec jekyll serve
```

oppure:

```bash id="z2e49q"
bundle exec jekyll serve --baseurl ""
```

[1]: https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll?utm_source=chatgpt.com "Testing your GitHub Pages site locally with Jekyll"
