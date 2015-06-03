#!/usr/bin/env bash

source ./../.env

docker-compose -p ${APP_ID} -f ./../docker-compose-test.yml up -d

docker exec -ti ${APP_ID}_testcli_1 bash
