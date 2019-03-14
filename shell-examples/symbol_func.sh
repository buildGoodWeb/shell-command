#!/bin/bash

# https://www.shellscript.sh/case.html
set -e

start_server() {
  echo 'Server ...' "$@";
}

start_client() {
  echo 'Client ...' "$@";
}

main() {
  case $1 in
    server) start_server "$@";;
    client) start_client "$@";;
  esac
}

main "$@";

# sh ./symbol_func.sh server sds
# output => Server ... server sds