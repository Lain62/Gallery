FROM ruby:3.1-slim-bullseye

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN gem install bundler

COPY Gemfile /app/

COPY Gemfile.lock /app/

EXPOSE 4000

WORKDIR /app

RUN bundle install

ENTRYPOINT [ "bundle" ]