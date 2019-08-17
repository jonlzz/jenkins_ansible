# Image Summary
A customized build with Ansible 2.2.1.0 support on top of the latest official jenkins/jenkins:lts docker image (https://hub.docker.com/r/jenkins/jenkins)  

# Dockerhub 
https://hub.docker.com/r/jonlzz/jenkins_ansible

https://hub.docker.com/r/jenkins/jenkins/

# Github/Dockerfile
https://github.com/jonlzz/jenkins_ansible/blob/master/Dockerfile

# Use the image: 
ex. to run as user "jonlzz" on the host server with jenkins_home mounted to ~/jenkins:

mkdir ~/jenkins  

docker run --name jenkins_master -d -p 8080:8080 -p 50000:50000 -v /home/jonlzz/jenkins:/var/jenkins_home jonlzz/jenkins_ansible
