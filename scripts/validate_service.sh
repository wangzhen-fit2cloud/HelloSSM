#!/bin/bash

for i in {1..6}
do
  checkResult=`curl -s http://192.168.0.200:8080/HelloSSM/ | grep Welcome  2>&1 > /dev/null; echo $?`
  if [ "$checkResult" == "0" ];then
      exit 0
  fi
  echo "$i try..."
  sleep 10
done
exit 1
