#!/bin/bash
sudo apt update
sudo apt install openjdk-8-jdk -y
sudo apt install tomcat8 -y
sudo apt install mysql-server -y
sudo apt install maven -y
sudo apt install tomcat8-admin -y
systemctl enable tomcat8

cat <<EOF >> /var/lib/tomcat8/conf/tomcat-users.xml
<role rolename="admin"/> 
<role rolename="admin-gui"/> 
<role rolename="admin-script"/> 
<role rolename="manager"/> 
<role rolename="manager-gui"/> 
<role rolename="manager-script"/> 
<role rolename="manager-jmx"/> 
<role rolename="manager-status"/> 
<user name="jenkins" password="jenkins" roles="admin,manager,admin-gui,admin-script,manager-gui,manager-script,manager-jmx,manager-status" />
EOF