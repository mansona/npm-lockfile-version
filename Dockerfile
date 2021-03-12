# Container image that runs this action.
FROM alpine:3

# Copy code file from action repo to container filesystem.
COPY script.sh /script.sh

# File to execute when the container starts up.
ENTRYPOINT ["/script.sh"]
