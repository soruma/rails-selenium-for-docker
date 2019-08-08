FROM ruby:2.6.3

RUN set -x \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt update -qq \
    && apt install -y \
         build-essential \
         libpq-dev \
         postgresql-client \
         nodejs \
         yarn \
    && rm -rf /var/lib/apt/lists/*

ENV APP_HOME=/myapp
ENV BUNDLE_APP_CONFIG=$APP_HOME/.bundle

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile $APP_HOME/Gemfile
COPY Gemfile.lock $APP_HOME/Gemfile.lock
RUN bundle install

COPY . $APP_HOME
