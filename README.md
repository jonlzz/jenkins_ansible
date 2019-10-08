# Image Summary
A customized build with Ansible(2.8.5) and Terraform (0.12.10) support on top of the latest jenkins/jenkins:lts docker image.

# Dockerhub 
https://hub.docker.com/r/jonlzz/jenkins-ansible

https://hub.docker.com/r/jenkins/jenkins/

# Github/Dockerfile
https://github.com/jonlzz/jenkins_ansible/blob/master/Dockerfile

# Use the image: 
ex. to run as user "user1" on the host server with jenkins_home mounted to ~/jenkins:

mkdir ~/jenkins  

docker run --name jenkins_master -d -p 8080:8080 -p 50000:50000 -v /home/user1/jenkins:/var/jenkins_home jonlzz/jenkins-ansible
