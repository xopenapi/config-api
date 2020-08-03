#!/bin/sh

docker run --rm -v "${PWD}:/local" xopenapi/openapi-generator-cli generate \
    --git-user-id xopenapi \
    --git-repo-id config-api-go \
    --package-name config \
    -i /local/config-api.yaml \
    -g go \
    -o /local/out/go