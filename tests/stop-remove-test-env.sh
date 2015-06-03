#!/usr/bin/env bash

source ./../.env

docker-compose -p ${APP_ID} -f ./../docker-compose-test.yml stop
docker-compose -p ${APP_ID} -f ./../docker-compose-test.yml rm
