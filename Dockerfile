FROM ruby:2.6.5

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN gem install bundler

ADD . /app
RUN bundle install --system
RUN rake db:create
RUN rake db:migrate
RUN rake db:seed

EXPOSE 4567

CMD ruby server.rb -o 0.0.0.0 -p 4567
