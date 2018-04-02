#!/bin/bash
#
for((x=1;x<=100;x++))
do
  for((y=1;y<=100;y++))
  do
    var=$((x+y))
#
    if [ $var -eq 36 ]
    then
      break
    fi
    echo $var
  done
done

exit 0