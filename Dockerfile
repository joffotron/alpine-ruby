FROM alpine:3.2
MAINTAINER joff@joff.codes

ENTRYPOINT ["sh"]

RUN apk update && apk add ruby ruby-rdoc ruby-irb ruby-bundler ruby-nokogiri ruby-tzinfo ruby-rake ruby-io-console ruby-bigdecimal
