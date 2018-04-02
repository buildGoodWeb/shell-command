#!/bin/bash
#
line=1
echo "listing vars with \"\$@\"."

for var in $@
do
  echo "var #$line=$var"
  let line+=1
done
exit 0

# example
# sh test_2.sh
# #  => output
# listing vars with "$@".
# var #1=ll
# var #2=asad