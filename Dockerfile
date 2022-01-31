FROM ruby:3.0.3
MAINTAINER Campus Code<contato@campuscode.com.br>

ENV NODE_VERSION lts
ENV LC_ALL="en_US.utf8"
ENV VISUAL=vim
ENV EDITOR="$VISUAL"

RUN curl -sL https://deb.nodesource.com/setup_$NODE_VERSION.x | bash -

RUN apt-get update -qq
RUN apt-get install -y --no-install-recommends \
      vim \
      locales \
      nodejs

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
RUN locale-gen

RUN npm install -g yarn

WORKDIR /rental-cars

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install bundler -v 2.3.3
RUN bundle install
RUN gem install bundler-audit

COPY . .
