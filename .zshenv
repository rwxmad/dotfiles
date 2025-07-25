# --------------------------------------------------------------------------------------------------
# General
# --------------------------------------------------------------------------------------------------

export XDG_CONFIG_HOME="$HOME/.config"

# --------------------------------------------------------------------------------------------------
# ZSH
# --------------------------------------------------------------------------------------------------

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

export ADOTDIR="${ZDOTDIR}/antigen"

# --------------------------------------------------------------------------------------------------
# Brew
# --------------------------------------------------------------------------------------------------

export PATH=/opt/homebrew/bin:$PATH

# --------------------------------------------------------------------------------------------------
# Starship
# --------------------------------------------------------------------------------------------------

export STARSHIP_CONFIG="${XDG_CONFIG_HOME}/starship/config.toml"

# --------------------------------------------------------------------------------------------------
# rg
# --------------------------------------------------------------------------------------------------

export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}/rg/.ripgreprc"
