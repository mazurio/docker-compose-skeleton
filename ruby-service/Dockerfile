FROM ruby:2.2.1

RUN apt-get update && apt-get install -y net-tools

ADD ./ /ruby-service/src
WORKDIR /ruby-service/src

RUN bundle install

EXPOSE 4567

CMD ["ruby", "app.rb"]