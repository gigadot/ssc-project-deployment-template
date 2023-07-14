#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

NAME=proxy

docker rm -f $NAME

docker run -d --restart=always --name $NAME \
    -v $DIR/proxy/default.conf:/etc/nginx/conf.d/default.conf \
    -p 80:80 nginx
