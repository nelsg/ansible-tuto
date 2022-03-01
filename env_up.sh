#!/bin/sh
# Construction de l'image ubuntu avec sshd
docker build -t ubuntu/sshd:20.04 .
# Construction de l'image ubuntu sshd avec ansible
docker build -t ubuntu/ansible:20.04 -f Dockerfile-ansible .
# Démarrage de l'environnement
docker-compose up -d
# Logging dans le conteneur ansible
docker exec -it ansible env TERM=xterm /bin/bash -l

# Pour nettoyer :
# $ docker-compose stop
# $ docker image rm ubuntu/sshd:20.04
# $ docker image rm ubuntu/ansible:20.04
# $ docker system prune
