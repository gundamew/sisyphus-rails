FROM ruby:3.0

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor > /etc/apt/trusted.gpg.d/yarn.gpg
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends nodejs yarn postgresql-client vim

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
RUN rails webpacker:install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000
