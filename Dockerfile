# Node version needs to match meteor node -v
FROM mhart/alpine-node:8.9.3

ARG AWS_CLI_VERSION_DOWNLOAD=1.14.16
ARG DOCKER_COMPOSE_VERSION_DOWNLOAD=1.18.0
#The above is used for CI builds. It was a compromise

# Install the AWS CLI and Docker Compose
RUN apk --no-cache update && \
    apk --no-cache -Uuv add bash python py-pip ca-certificates curl libstdc++ g++ make && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION_DOWNLOAD} \
    docker-compose==${DOCKER_COMPOSE_VERSION_DOWNLOAD} && \
    apk --purge -v del py-pip && \
    rm -rf /var/cache/apk/*