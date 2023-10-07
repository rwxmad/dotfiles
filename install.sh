#!/bin/bash

# ###########################################################
# Colors
# ###########################################################

Red='\033[0;31m'
Green='\033[0;32m'
Yellow='\033[0;33m'

# ###########################################################
# Helpers
# ###########################################################

function echo_ok() { echo -e "$Green""$1"'\033[0m'; }
function echo_warn() { echo -e "$Yellow""$1"'\033[0m'; }
function echo_error() { echo -e ""$Red"ERROR: ""$1"'\033[0m'; }

# ###########################################################
# Stow configs
# ###########################################################

stow ./

# ###########################################################
# Homebrew
# ###########################################################

if which brew &>/dev/null; then
	echo_ok "Homebrew already installed. Getting updates..."
	brew update
	brew doctor
else
	echo_warn "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo_ok "Install homebrew dependecies..."
/bin/bash ./.config/scripts/brew/install.sh
