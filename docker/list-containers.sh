#!/usr/bin/env bash

# Description: List Docker containers (both running or not) with a custom format

script_directory="$(dirname "$0")"
cd "$script_directory" || exit 1

source ../config/global-config.sh
source ../utils/functions.sh

# See: https://docs.docker.com/reference/api/engine/version/v1.28/#tag/System/operation/SystemPing
if ! curl -s -o /dev/null --unix-socket /var/run/docker.sock http/_ping; then
  exit_with_message 1 "Docker isn't running, exiting!"
fi

docker ps -a --format="table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}"
