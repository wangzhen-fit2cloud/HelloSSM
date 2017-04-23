#!/bin/bash

iptables -I INPUT -p tcp -m tcp --dport 8080 -j ACCEPT
service iptables save
service iptables reload

if [ ! -d "/var/lib/tomcat6/webapps/HelloSSM" ]; then
  mkdir /var/lib/tomcat6/webapps/HelloSSM
fi
chown tomcat:tomcat /var/lib/tomcat6/webapps/HelloSSM
