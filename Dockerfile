FROM ruby:4.0 AS builder
RUN gem install bundler
WORKDIR /opt
COPY . /opt
RUN bundle install && jekyll build

FROM nginx:1.29
COPY --from=builder /opt/_site /usr/share/nginx/html 