# sshd
#
# VERSION               0.0.1
# From: https://docs.docker.com/engine/examples/running_ssh_service/

FROM ubuntu:20.04

LABEL org.opencontainers.image.authors="Nelson Goncalves <nelson.goncalves.fr@gmail.com>"

RUN apt update && \
    apt upgrade -y && \
    apt install -y openssh-server python3-apt
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/.*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN echo "root:ansible" | chpasswd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
