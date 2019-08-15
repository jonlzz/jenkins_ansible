# Summary
Add Ansible 2.2.1.0 support on top of the official Jenkins docker image (https://hub.docker.com/r/jenkins/jenkins)  

# DockerHub
https://hub.docker.com/r/jonlzz/jenkins_ansible

# GitHub/Dockerfile
https://github.com/jonlzz/jenkins_ansible/blob/master/Dockerfile

# Usage 
ex. run as user "jonlzz" on the host server:

mkdir ~/jenkins

docker run --name jenkins_master -d -p 8080:8080 -p 50000:50000 -v /home/jonlzz/jenkins:/var/jenkins_home jonlzz/jenkins_ansible
