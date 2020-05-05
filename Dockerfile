# Container image that runs your code
FROM node:13.14

RUN apt-get update && \
  apt-get install -y zip

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY script /script

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/script/build"]