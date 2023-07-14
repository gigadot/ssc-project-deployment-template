#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

NAME=backend

MARIADB_DATABASE=ssc
MARIADB_USER=ssc
MARIADB_PASSWORD=devpass

docker rm -f $NAME

docker run -d --name $NAME \
    --restart=always \
    -v $DIR/backend:/app \
    -e UMS_DB_NAME=$MARIADB_DATABASE \
    -e UMS_DB_USERNAME=$MARIADB_USER \
    -e UMS_DB_PASSWORD=$MARIADB_PASSWORD \
    -e UMS_DB_IP=172.17.0.1 \
    -w=/app \
    -p 8080:8080 \
    openjdk:11-jre-slim java -jar webapp.jar
