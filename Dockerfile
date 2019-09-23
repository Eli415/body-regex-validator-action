FROM alpine:latest

LABEL "com.github.actions.name"="Issue / Pull request body regex validator"
LABEL "com.github.actions.description"="This Action checks issue and pr descriptions against an regular expression."
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/FabianKoestring/body-regex-validator-action"
LABEL "homepage"="https://github.com/FabianKoestring/body-regex-validator-action"
LABEL "maintainer"="Fabian Köstring"

RUN apk add --no-cache bash curl jq

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
