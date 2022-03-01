#!/bin/sh
docker-compose stop
docker system prune -f
docker image rm ubuntu/sshd:20.04
docker image rm ubuntu/ansible:20.04
docker system prune -f
