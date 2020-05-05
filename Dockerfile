# Container image that runs your code
FROM node:alpine3.10

RUN apk add zip

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY script /script

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/script/build"]