#!/bin/sh
docker run --rm -v "${PWD}:/local" xopenapi/openapi-generator-cli:latest generate \
	--auth signature \
	--group-id com.xopenapi \
	--artifact-id config-api-java \
	-i /local/openapi.yaml \
	--git-repo-id config-api-java \
	--git-user-id xopenapi \
	--api-package com.xopenapi.config \
	--model-package com.xopenapi.config.model \
	-g java \
	-o /local/out/config-api-java
