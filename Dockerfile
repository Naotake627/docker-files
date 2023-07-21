FROM ruby:2.4.5
RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list
RUN echo "deb http://archive.debian.org/debian/ stretch main" > /etc/apt/sources.list \
  && echo "deb http://archive.debian.org/debian-security stretch/updates main" >> /etc/apt/sources.list \
  && apt-get update \
  && apt-get install -y build-essential nodejs
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app
