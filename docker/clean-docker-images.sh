#!/usr/bin/env bash

# Description: Cleans unused Docker iages
# Dependencies:
#   - docker

script_directory="$(dirname "$0")"
cd "$script_directory" || exit 1

source ./config/global-config.sh

docker image prune --all --force
