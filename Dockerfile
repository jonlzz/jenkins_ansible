# Ansible support on top of jenkins/jenkins:lts

FROM jenkins/jenkins:lts

MAINTAINER Jonathan Lin<jonlzz@qq.com>

# Install ansible
USER root 
RUN apt update \
  && apt install -f -y wget \
  && apt install -f -y unzip \
  && apt install -f -y python3-pip \
  && apt install -f -y git \
  && apt install -f -y sshpass \
  && wget --quiet https://releases.hashicorp.com/terraform/0.12.10/terraform_0.12.10_linux_amd64.zip \
  && unzip terraform_0.12.10_linux_amd64.zip \
  && mv terraform /usr/bin \
  && rm terraform_0.12.10_linux_amd64.zip \
  && pip3 install --no-cache-dir ansible \
  && pip3 install --no-cache-dir boto3
USER jenkins
ENV PYTHONPATH /usr/local/lib/python3.5/dist-packages
