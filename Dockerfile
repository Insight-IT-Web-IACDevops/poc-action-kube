FROM docker:dind
# FROM docker:23.0.1-cli-alpine3.17

LABEL \
  "name"="PoC Action Kube" \
  "homepage"="https://github.com/marketplace/actions/poc-action-kube" \
  "repository"="https://github.com/Insight-IT-Web-IACDevops/poc-action-kube"

RUN apk update && \
  apk add --no-cache curl bash 

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
