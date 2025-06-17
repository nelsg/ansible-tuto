#!/bin/sh
docker-compose stop
docker system prune -f
docker image rm ubuntu/sshd:24.04
docker image rm ubuntu/ansible:24.04
docker system prune -f
