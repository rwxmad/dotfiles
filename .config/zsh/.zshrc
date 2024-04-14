# --------------------------------------------------------------------------------------------------
# General settings
# --------------------------------------------------------------------------------------------------

export CONFIG_HOME=$HOME/.config

DISABLE_AUTO_TITLE="true"

# --------------------------------------------------------------------------------------------------
# Plugins
# --------------------------------------------------------------------------------------------------

source $CONFIG_HOME/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle 'zsh-users/zsh-syntax-highlighting'
antigen bundle 'zsh-users/zsh-autosuggestions'
# antigen bundle 'zsh-users/zsh-completions'

antigen bundle 'agkozak/zsh-z'

antigen apply

# --------------------------------------------------------------------------------------------------
# User configuration
# --------------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------------
# Editor
# --------------------------------------------------------------------------------------------------

export EDITOR="nvim"
export PAGER="bat"
# enable vi mode
bindkey -v

# Yank to the system clipboard
function vi-yank-xclip {
    zle vi-yank
   echo "$CUTBUFFER" | pbcopy
}

zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip

# --------------------------------------------------------------------------------------------------
# Custom LSCOLORS, PS1
# --------------------------------------------------------------------------------------------------

export CLICOLOR=1
export LSCOLORS=fxgxfxexbxegedabagacad
export PS1="%m@%n:%F{2}%~%f$ "

# --------------------------------------------------------------------------------------------------
# Modules
# --------------------------------------------------------------------------------------------------

# Aliases
source $HOME/.config/zsh/aliases.zsh

# Starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh
