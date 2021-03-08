FROM ruby:2.3-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        curl \
        default-libmysqlclient-dev \
        mysql-client \
        mysql-server \
        git \
        libffi-dev \
        libpq-dev \
        libssl-dev


RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /mysms
WORKDIR /mysms

COPY ./Gemfile Gemfile
COPY ./Gemfile.lock Gemfile.lock

RUN bundle install

COPY . /mysms

EXPOSE 3000