#!/usr/bin/env bash

# Description: A utility script used to check if variable passed is empty or not
# script exits and logs if variable is empty

set -o errexit

variable_name=$1
variable_content=$2

verify_variable_not_empty() {
  [[ -z $variable_content ]] && {
    log_variable_empty
    exit 1
  }
  exit 0
}

log_variable_empty() {
  echo "Variable \"$variable_name\" is empty"
}

verify_variable_not_empty
