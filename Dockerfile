FROM node:16-alpine
LABEL "repository"="https://github.com/popsa-hq/github-tag-action"
LABEL "homepage"="https://github.com/popsa-hq/github-tag-action"
LABEL "maintainer"="Popsa"

RUN apk --no-cache add bash git curl jq && npm install -g semver

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
