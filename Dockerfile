FROM ruby:3.2-slim

WORKDIR /srv/jekyll

ENV BUNDLE_PATH=/usr/local/bundle \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3 \
    JEKYLL_ENV=development

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential git pkg-config \
    && rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock ./

RUN gem install bundler:2.5.23 \
    && bundle install

EXPOSE 4000 35729

CMD ["bundle", "exec", "jekyll", "serve", "--config", "_config.yml,_config_dev.yml", "--host", "0.0.0.0", "--port", "4000", "--livereload", "--livereload-port", "35729", "--force_polling"]
