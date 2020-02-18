FROM ruby:2.7.0-alpine3.11

WORKDIR /InnerSource
ADD Gemfile .
ADD Gemfile.lock .

RUN apk add --no-cache g++ gcc make musl-dev
RUN bundle install

CMD jekyll serve --config /source/_config.yml,/source/_config_dev.yml -s /source -d /dist
