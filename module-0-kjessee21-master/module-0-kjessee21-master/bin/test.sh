#!/usr/bin/env bash

# unofficial "strict mode"
set -euo pipefail
IFS=$'\n\t'

MARS=`dirname $0`/mars-4-5.jar

# test all test runners against example code
function test-all {
  log "Testing all activities..."
  for activity in ca/*; do
    echo
  log "Testing $activity..."
  java -jar $MARS ae1 nc $activity
  done
}

# log a message
function log {
  echo "*- $@"
}

# if called with interpreter, run fn that matches first arg
[[ ${BASH_SOURCE[0]} = "$0" ]] && {
  eval "$1" "${@:2}"
}
