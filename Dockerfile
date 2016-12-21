FROM gliderlabs/alpine:3.4

MAINTAINER blacktop, https://github.com/blacktop

RUN apk-install tini su-exec
RUN set -x \
  && echo "Add malice user and malware folder..." \
  && addgroup malice \
  && adduser -S -G malice malice \
  && mkdir /malware \
  && chown -R malice:malice /malware
