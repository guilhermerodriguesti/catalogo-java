#!/bin/bash
sudo apt-get install openjdk-8-jdk

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins

vim /etc/default/jenkins

cat /var/lib/jenkins/secrets/initialAdminPassword