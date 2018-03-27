#!/bin/bash

echo "This name of this script is \"$0\"."
# => This name of this script is "test1.sh"

echo
#
if [ -n $1 ]
  then
    echo "This first parameter is $1."
  fi
#
if [ -n $2 ]
  then
    echo "this second parameter is $2."
fi
echo
echo "all the command_line paramters arg is: "$*"."

exit 0