FROM alpine:3.17.1

LABEL \
  "name"="PoC Action Kube" \
  "homepage"="https://github.com/marketplace/actions/poc-action-kube" \
  "repository"="https://github.com/Insight-IT-Web-IACDevops/poc-action-kube"

RUN echo http://mirror.csclub.uwaterloo.ca/alpine/edge/testing >> /etc/apk/repositories && \
  apk add --no-cache curl bash

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
