FROM ruby:3.0.6

ENV TZ Asia/Tokyo
ARG RAILS_MASTER_KEY
ENV RAILS_MASTER_KEY ${RAILS_MASTER_KEY}
ENV RAILS_ENV=production

RUN gem install bundler:2.3.19
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash
RUN apt-get update -qq && apt-get install -y nodejs && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app
COPY Gemfile.lock /app

RUN bundle install --jobs 4

COPY . /app

RUN mkdir -p tmp/pids log

RUN bin/rails assets:precompile
CMD rm -f tmp/pids/server.pid && bin/rails server --binding=0.0.0.0
