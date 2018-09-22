# Node version needs to match meteor node -v
FROM mhart/alpine-node:8.11.4

ARG AWS_CLI_VERSION_DOWNLOAD=1.16.19


#DOCKER is used for CI builds.
#It was a compromise for not having sudo and adds ~100 MB

# Install the AWS CLI and Docker Compose
RUN apk --no-cache update && \
    apk --no-cache -Uuv add bash python py-pip ca-certificates \
    docker \
    curl libstdc++ g++ make && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION_DOWNLOAD} \
    docker-compose && \
    apk --purge -v del py-pip && \
    rm -rf /var/cache/apk/*
