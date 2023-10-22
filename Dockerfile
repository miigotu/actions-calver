# Run
FROM node:alpine3.18 as run

# hadolint ignore=DL3018
RUN apk add --no-cache curl git jq

# hadolint ignore=DL3016,DL3059
RUN npm install -g conventional-changelog-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
