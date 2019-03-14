#!/bin/bash

echo "Plase talk to me ..."
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
    hello)
      echo "Hello!";;
    bye)
      echo "See you!"
      break;;
    *)
      echo "Sorry, I dont't understand";;
  esac
done

echo "End Talk!"