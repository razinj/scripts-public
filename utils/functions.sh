#!/usr/bin/env bash

script_directory="$(dirname "$0")"
cd "$script_directory" || exit 1

source ../config/global-config.sh
source ./logger.sh

exit_with_message() {
  if [ "$1" != 0 ]; then
    log_error "$2"
  else
    log_info "$2"
  fi

  exit "$1"
}
