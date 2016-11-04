#!/bin/bash
# -*- ENCODING: UTF-8 -*-
docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images)
docker build -t server/cret .
docker run -d -p 4000:3000 server/cret
