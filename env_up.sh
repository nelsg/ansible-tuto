#!/bin/sh
docker-compose down >/dev/null 2>&1
docker-compose up -d >/dev/null 2>&1
docker exec -it ansible env TERM=xterm /bin/bash -l
