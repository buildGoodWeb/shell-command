#!/bin/bash
#
declare -i y=1
until [ $y -eq 99 ]
do
  let var+=y
  let y+=2
done
# 1+3+5+7+......+99
echo $var
exit 0