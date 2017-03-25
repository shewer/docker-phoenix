FROM elixir:1.4

ENV PHOENIX_VERSION 1.2.1

RUN apt-get update
RUN apt-get install -y erlang-dev erlang-parsetools

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new-$PHOENIX_VERSION.ez

RUN elixir -v
