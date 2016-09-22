#!/bin/sh
docker-compose start >/dev/null 2>&1
docker exec -it ansible env TERM=xterm /bin/bash -l
