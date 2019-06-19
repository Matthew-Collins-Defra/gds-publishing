FROM ruby:2.6.3
RUN apt-get update -qq && apt-get upgrade -y
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y build-essential nodejs && apt-get clean
RUN npm install -g phantomjs-prebuilt@2 --unsafe-perm
RUN gem install foreman

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - 
RUN sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update
RUN apt-get install google-chrome-stable -y

ENV GOVUK_APP_NAME content-publisher
ENV MONGODB_URI mongodb://mongo/govuk_content_development
ENV TEST_MONGODB_URI mongodb://mongo/govuk_content_publisher_test
ENV PORT 3221
ENV RAILS_ENV development
ENV REDIS_HOST redis

ENV APP_HOME /app
RUN mkdir $APP_HOME

WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/
ADD . $APP_HOME
RUN bundle install
RUN gem install foreman --conservative

#RUN GOVUK_APP_DOMAIN=www.gov.uk GOVUK_WEBSITE_ROOT=http://www.gov.uk/ RAILS_ENV=production JWT_AUTH_SECRET=secret SECRET_KEY_BASE=secret bundle exec rails assets:precompile

HEALTHCHECK CMD curl --silent --fail localhost:$PORT || exit 1

CMD foreman start -f Procfile
