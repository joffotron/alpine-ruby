FROM alpine:3.2
ENTRYPOINT ["sh"]

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk update && apk add ruby ruby-rdoc ruby-irb ruby-bundler ruby-nokogiri ruby-tzinfo ruby-rake ruby-io-console ruby-bigdecimal
