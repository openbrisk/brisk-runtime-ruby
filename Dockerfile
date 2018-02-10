FROM ruby:2

RUN apt-get update -qq && apt-get install -y build-essential

WORKDIR /app

ADD Gemfile Gemfile
RUN bundle install

COPY ./src /app

EXPOSE 8080

ENTRYPOINT ["ruby"]
CMD ["server.rb", "-p", "8080", "-o", "0.0.0.0", "-e", "production"]

#-p # set the port (default is 4567)
#-o # set the host (default is 0.0.0.0)
#-e # set the environment (default is development)
#-s # specify rack server/handler (default is thin)
#-q # turn on quiet mode for server (default is off)
#-x # turn on the mutex lock (default is off)