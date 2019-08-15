# Summary
A customized Jenkins official docker image with Ansible 2.2.1.0 support.

# Usage (as user "jonlzz" )
docker run --name jenkins_master -d -p 8080:8080 -p 50000:50000 -v /home/jonlzz/jenkins:/var/jenkins_home jonlzz/public:jenkins
