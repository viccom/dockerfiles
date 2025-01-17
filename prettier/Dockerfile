#FROM node:20.8-alpine3.18@sha256:37750e51d61bef92165b2e29a77da4277ba0777258446b7a9c99511f119db096 AS build
FROM alpine:3.18.5@sha256:34871e7290500828b39e22294660bee86d966bc0017544e848dd9a255cdf59e0

ARG BUILD_VERSION
ARG ARCHIVE_URL=https://github.com/prettier/prettier/archive/

RUN test -n "${BUILD_VERSION}" \
	&& apk update \
	&& apk upgrade -a \
	&& apk add --no-cache ca-certificates nodejs-current npm \
	&& update-ca-certificates \
	&& npm install -g prettier@${BUILD_VERSION} \
	&& npm cache clean --force \
	&& apk del npm

LABEL org.opencontainers.image.authors="Jauder Ho <jauderho@users.noreply.github.com>"
LABEL org.opencontainers.image.url="https://github.com/jauderho/dockerfiles"
LABEL org.opencontainers.image.documentation="https://github.com/jauderho/dockerfiles"
LABEL org.opencontainers.image.source="https://github.com/jauderho/dockerfiles"
LABEL org.opencontainers.image.title="jauderho/prettier"
LABEL org.opencontainers.image.description="prettier is an opinionated code formatter"

WORKDIR /work

ENTRYPOINT ["prettier"]
CMD ["--help"]

