FROM ruby:2

RUN apt-get update -qq && apt-get install -y build-essential

WORKDIR /app

ADD Gemfile Gemfile
RUN bundle install

COPY ./src /app

COPY ./startup.sh .
RUN chmod +x startup.sh

EXPOSE 8080
ENTRYPOINT ["./startup.sh"]