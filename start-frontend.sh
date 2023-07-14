#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

NAME=frontend

docker rm -f $NAME

docker run -d --restart=always --name $NAME \
    -v $DIR/frontend:/usr/share/nginx/html:ro \
    -p 8081:80 nginx
