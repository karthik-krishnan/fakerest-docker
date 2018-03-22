FROM ruby:2.4.3
RUN bundle config --global frozen 1

WORKDIR /usr/src/app
COPY main.rb Gemfile Gemfile.lock run.sh ./
RUN bundle install
EXPOSE 9000
