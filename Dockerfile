# FROM jruby:9.2.20
# FROM fidothe/jruby:9.2.9.0-13-jdk-slim
FROM ruby:2.6.8

RUN mkdir -p /app/src
WORKDIR /app/src

ENV JRUBY_OPTS="-J-Xmx2048m"

# COPY Gemfile Gemfile.lock ./
COPY Gemfile ./
# RUN bundle binstubs all

RUN gem install bundler -v '2.2.0'

# RUN bin/bundle install --without development test

RUN bundle install

RUN apt-get update && apt-get install -y nodejs

COPY . .

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3001