#!/usr/bin/env sh

echo "deploy app"
echo
oc new-app  https://github.com/visually-impered-hackaton-2022/demo-persons.git  \
 --context-dir=quarkus-backend \
-e POSTGRESQL_USER=niko \
-e POSTGRESQL_PASSWORD=niko \
-e POSTGRESQL_DATABASE=niko \
    --image-stream=java:openjdk-11-el7
