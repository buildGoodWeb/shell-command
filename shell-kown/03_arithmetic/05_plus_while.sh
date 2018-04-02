#!/bin/bash
#
limit=36
i=1
#
while [ $i -lt $limit ]
do
  echo $i
  let "i+=1"
done
echo
#
((j=1))
#
while((j <= limit))
do
  echo $j
  ((j+=1))
done

exit 0