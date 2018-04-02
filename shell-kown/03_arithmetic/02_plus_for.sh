#!/bin/bash
#
for((i=1;i<=100;i++))
do
  if [ $i -eq 36 ]
  then
    break
  fi
  echo $i
done
exit 0