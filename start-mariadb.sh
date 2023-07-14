#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

NAME=mariadb
EXPOSED_MARIADB_PORT=3306
MARIADB_DATABASE=ssc
MARIADB_USER=ssc
MARIADB_PASSWORD=devpass
MARIADB_ROOT_PASSWORD=devpass
DATA=$DIR/mariadb/

docker run -d --restart=always --name $NAME \
    -v $DATA:/var/lib/mysql \
    -e MARIADB_DATABASE=$MARIADB_DATABASE \
    -e MARIADB_USER=$MARIADB_USER \
    -e MARIADB_PASSWORD=$MARIADB_PASSWORD \
    -e MARIADB_ROOT_PASSWORD=$MARIADB_ROOT_PASSWORD \
    -p $EXPOSED_MARIADB_PORT:3306 \
    mariadb:latest