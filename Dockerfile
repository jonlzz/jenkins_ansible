# Ansible support on top of jenkins/jenkins:lts

FROM jenkins/jenkins:lts

MAINTAINER Jonathan Lin<jonlzz@qq.com>

# Install ansible
USER root 
RUN apt update && apt install -f -y python3-pip && apt install -f -y git && apt install -f -y sshpass
RUN pip3 install --no-cache-dir ansible
USER jenkins
