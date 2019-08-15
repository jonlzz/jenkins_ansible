# Ansible over Jenkins

FROM jenkins/jenkins

# Install ansible
USER root 
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | tee /etc/apt/sources.list.d/docker.lis && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && apt update && apt install -f -y ansible && apt install -f -y git && apt install -f -y sshpass
USER jenkins
