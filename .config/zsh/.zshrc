# --------------------------------------------------------------------------------------------------
# General settings
# --------------------------------------------------------------------------------------------------

# Profiling
# zmodload zsh/zprof

export XDG_CONFIG_HOME=$HOME/.config

DISABLE_AUTO_TITLE="true"

# locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Completion
autoload -Uz compinit
# Create cache dir if not exists
mkdir -p "$HOME/.cache/zsh"
# Define cache dir
compinit -d "$ZSH_COMPDUMP"

# --------------------------------------------------------------------------------------------------
# Plugins
# --------------------------------------------------------------------------------------------------

# zsh plugins dir
ZSH_PLUGINS_DIR=$HOME/.local/share/zsh-plugins

fpath=(ZSH_PLUGINS_DIR $fpath)

# completions
# https://github.com/zsh-users/zsh-completions
# ignore case, + -/_
zstyle ':completion:*' matcher-list \
  'm:{a-z}={A-Z}' \
  'r:|[-_.]=* r:|=*' \
  'l:|=*'

# syntax highlight
# https://github.com/zdharma-continuum/fast-syntax-highlighting
source $ZSH_PLUGINS_DIR/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions/tree/master
source $ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh

# oh-my-zsh
# git
# benchmark
# plugins=(zsh-prompt-benchmark)

# source $ZSH_PLUGINS_DIR/zsh-prompt-benchmark/zsh-prompt-benchmark.plugin.zsh
# --------------------------------------------------------------------------------------------------
# Modules
# --------------------------------------------------------------------------------------------------

sources=(
  'aliases'
  'vi-mode'
)

for s in "${sources[@]}"; do
  source $XDG_CONFIG_HOME/zsh/modules/${s}.zsh
done

# --------------------------------------------------------------------------------------------------
# User configuration
# --------------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------------
# Editor
# --------------------------------------------------------------------------------------------------

export EDITOR="nvim"
export PAGER="bat"

# --------------------------------------------------------------------------------------------------
# Custom LSCOLORS, PS1
# --------------------------------------------------------------------------------------------------

export CLICOLOR=1
export LSCOLORS=fxgxfxexbxegedabagacad
export PS1="%m@%n:%F{2}%~%f$ "

# --------------------------------------------------------------------------------------------------
# Other
# --------------------------------------------------------------------------------------------------

# Starship
export STARSHIP_CACHE=~/.starship/cache
eval "$(starship init zsh)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# mise
eval "$(mise activate zsh --shims)"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
