FROM alpine:3.2
MAINTAINER joff@joff.codes
ENTRYPOINT ["/sbin/smell-baron"]
CMD ["sh"]

RUN apk update && apk add ruby ruby-rdoc ruby-irb ruby-bundler ruby-nokogiri ruby-tzinfo ruby-rake ruby-io-console ruby-bigdecimal

ENV BARON_PACKAGES "git gcc make musl-dev"

# Build and install smell-baron, which we use as a simple init system
RUN apk add $BARON_PACKAGES && \
 git clone https://github.com/ohjames/smell-baron.git /tmp/smell-baron && \
 cd /tmp/smell-baron && \
 make release && \
 mv /tmp/smell-baron/smell-baron /sbin/ && \
 rm -rf /tmp/smell-baron && \
 apk del --purge -r $BARON_PACKAGES
