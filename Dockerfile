FROM ruby:3.2.2

WORKDIR /app

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server"]
