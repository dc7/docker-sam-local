FROM alpine:3.6

WORKDIR /usr/src/app

RUN apk add --no-cache py-pip

RUN pip install --no-cache-dir aws-sam-cli
