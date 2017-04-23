#!/bin/bash

for i in {1..6}
do
  checkResult=`curl -s http://localhost:8080/HelloSSM/ | grep Welcome  2>&1 > /dev/null; echo $?`
  if [ "$checkResult" == "0" ];then
      exit 0
  fi
  echo "$i try..."
  sleep 5
done
exit 1
