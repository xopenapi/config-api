#!/bin/sh
docker run --rm -v "${PWD}:/local" xopenapi/openapi-generator-cli:latest generate \
	--auth signature \
	-i /local/openapi.yaml \
	-g go \
	--package-name=config \
	--git-host=github.com \
	--git-repo-id=config-api-go \
	--git-user-id=xopenapi \
	-o /local/out/config-api-go
