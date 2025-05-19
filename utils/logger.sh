#!/usr/bin/env bash

# Description: Colored logs
# Reference: https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux

no_color='\033[0m'
light_red_color='\033[1;31m'
light_cyan_color='\033[1;36m'

log_info() {
  echo -e "${light_cyan_color}[!] $1 $no_color"
}

log_error() {
  echo -e "${light_red_color}[X] $1 $no_color"
}
