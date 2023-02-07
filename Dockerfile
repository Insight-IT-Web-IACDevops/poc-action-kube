FROM alpine:3.11.3

LABEL \
  "name"="PoC Action Kube" \
  "homepage"="https://github.com/marketplace/actions/poc-action-kube" \
  "repository"="https://github.com/Insight-IT-Web-IACDevops/poc-action-kube"

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
  apk add --no-cache curl bash

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
