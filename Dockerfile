FROM ruby:2.7.1-alpine

ENV RAILS_ENV production
ENV SECRET_KEY_BASE 123456789

# Install important dependencies
RUN apk add build-base nodejs yarn tzdata sqlite-dev postgresql-client postgresql-dev git --no-cache bash

RUN gem install bundler
RUN gem install rails -v '5.2.3'

RUN mkdir /webapp
WORKDIR /webapp
COPY . .
RUN chmod -R 777 .

RUN bundle install

ENTRYPOINT ["./lib/entrypoint.sh"]

RUN bin/rails assets:precompile

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]