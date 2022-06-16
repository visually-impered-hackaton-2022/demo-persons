#!/usr/bin/env sh

echo "deploy app"
echo
oc new-app  https://github.com/visually-impered-hackaton-2022/demo-persons.git  \
 --context-dir=quarkus-backend \
-e POSTGRESQL_USER=postgres \
-e POSTGRESQL_PASSWORD=Kv2oru7HZv \
-e POSTGRESQL_DATABASE=postgres \
-e POSTGRESQL_SERVICE_NAME=nmpostgresql \
    --image-stream=java:openjdk-11-el7
