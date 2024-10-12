FROM ruby:3.2.2 AS builder
RUN gem install bundler
WORKDIR /opt
COPY . /opt
RUN bundle install && jekyll build

FROM nginx:1.24.0
COPY --from=builder /opt/_site /usr/share/nginx/html 