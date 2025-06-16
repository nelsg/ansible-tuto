#!/bin/sh
# Construction de l'image ubuntu avec sshd
docker build -t ubuntu/sshd:24.04 .
# Construction de l'image ubuntu sshd avec ansible
docker build -t ubuntu/ansible:24.04 -f Dockerfile-ansible .
# Démarrage de l'environnement
docker-compose up -d
# Logging dans le conteneur ansible
docker exec -it ansible env TERM=xterm /bin/bash -l
