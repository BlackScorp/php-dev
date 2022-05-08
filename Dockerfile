FROM debian:latest

RUN apt-get update \
    && apt-get install -y apt-utils pkg-config build-essential autoconf bison re2c \
                    libxml2-dev libsqlite3-dev

ADD ./php-src /php-src

WORKDIR /php-src


CMD ["tail","-f"]

