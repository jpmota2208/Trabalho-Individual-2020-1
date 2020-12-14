FROM ruby:2.5.7

RUN apt-get update -qq 
RUN apt-get install -y nodejs postgresql-client

RUN mkdir /code
WORKDIR /code

COPY . .

RUN gem update --system
RUN gem install bundler -v 2.1.4

COPY api/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]