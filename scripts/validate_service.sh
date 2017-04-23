#!/bin/bash

checkResult=`curl -s http://192.168.0.200:8080/HelloSSM/ | grep Welcome  2>&1 > /dev/null; echo $?`
if [ "$checkResult" == "0" ];then
    exit 0
else 
    exit 1
fi
