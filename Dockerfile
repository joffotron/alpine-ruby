FROM joffotron/alpine-smelly-baron:3.2
MAINTAINER joff@joff.codes
ENTRYPOINT ["/sbin/smell-baron"]
CMD ["sh"]

RUN apk update && apk add ruby ruby-rdoc ruby-irb ruby-bundler ruby-nokogiri ruby-tzinfo ruby-rake ruby-io-console ruby-bigdecimal
