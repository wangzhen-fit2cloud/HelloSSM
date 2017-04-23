#!/bin/bash

echo "-A INPUT -p tcp -m tcp --dport 8080 -j ACCEPT" >> /etc/sysconfig/iptables
service iptables reload
