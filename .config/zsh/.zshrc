# --------------------------------------------------------------------------------------------------
# General settings
# --------------------------------------------------------------------------------------------------

export XDG_CONFIG_HOME=$HOME/.config

DISABLE_AUTO_TITLE="true"

# locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# --------------------------------------------------------------------------------------------------
# Plugins
# --------------------------------------------------------------------------------------------------

source $XDG_CONFIG_HOME/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git

antigen bundle 'zsh-users/zsh-syntax-highlighting'
antigen bundle 'zsh-users/zsh-autosuggestions'
# antigen bundle 'zsh-users/zsh-completions'

antigen bundle 'agkozak/zsh-z'

antigen apply

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
eval "$(starship init zsh)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# mise
eval "$(mise activate zsh)"
