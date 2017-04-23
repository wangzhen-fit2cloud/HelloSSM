#!/bin/bash

iptables -I INPUT -p tcp -m tcp --dport 8080 -j ACCEPT
service iptables save
service iptables reload

chown tomcat:tomcat /var/lib/tomcat6/webapps/HelloSSM
