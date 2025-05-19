#!/usr/bin/env bash

# Description: Upgrade brew packages
# Dependencies:
#   - brew

script_directory="$(dirname "$0")"
cd "$script_directory" || exit 1

source ../../config/global-config.sh
source ../../utils/logger.sh

log_info "Started updating brew packages"

# Update all package definitions (formulae) and Homebrew itself
log_info "Updating packages' definitions.."
brew update

# List which packages (kegs) are outdated
log_info "Outdated packages:"
brew outdated

# Upgrade all available packages updates
log_info "Upgrading packages.."
brew upgrade

log_info "Cleaning up.."
brew cleanup --prune=all

log_info "Done updating brew packages"
