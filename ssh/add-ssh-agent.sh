#!/usr/bin/env bash

source ../config/global-config.sh

private_key=$SSH_PRIVATE_KEY_FILENAME

../utils/check-variable.sh private_key "$private_key"

ssh-add --apple-use-keychain "$HOME/.ssh/$private_key"
