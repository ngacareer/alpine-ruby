# Developer: TriuHv <ms@ngacareer.com>
#
# GitHub:  https://github.com/ngacareer
# Twitter: https://twitter.com/ngacareer
# Docker:  https://hub.docker.com/ngacareer
# web   :  https://ngacareer.com

FROM  ngacareer/alpine-curl

LABEL maintainer="triuhv <ms@ngacareer.com>" \
    architecture="amd64/x86_64" \
    ruby-version="3.0.0" \
    alpine-version="3.13" \
    build="01-Mar-2021"

RUN apk upgrade --no-cache --update && \
    apk add --no-cache --update ca-certificates make bash build-base
RUN cd /tmp && \
    wget -O - https://github.com/postmodern/ruby-install/archive/v0.8.1.tar.gz | tar xzvf - && \
    ( cd ruby-install-0.8.1 && \
      make install ) && \
    rm -rf ruby-install-*
RUN ruby-install --cleanup ruby 3.0.0

RUN addgroup app && \
    adduser -D -G app -h /app -s /bin/sh app

USER app
WORKDIR /app

ENTRYPOINT ["entrypoint.sh"]
