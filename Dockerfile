# Ansible support on top of jenkins/jenkins:lts

FROM jenkins/jenkins:lts

# Install ansible
USER root 
RUN apt update && apt install -f -y python3-pip
RUN pip3 install --no-cache-dir ansible
USER jenkins
