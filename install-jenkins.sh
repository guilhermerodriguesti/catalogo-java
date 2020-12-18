#!/bin/bash
sudo apt install openjdk-8-jdk -y

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update

sudo apt install jenkins -y

sudo systemctl start jenkins

sudo systemctl status jenkins

sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw allow 8080
sudo ufw allow 8081
sudo ufw status


vim /etc/default/jenkins

sudo systemctl restart jenkins

cat /var/lib/jenkins/secrets/initialAdminPassword

