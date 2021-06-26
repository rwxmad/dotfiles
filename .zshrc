# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/madnesstony/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Uncomment the following line to disable auto-setting terminal title.
 DISABLE_AUTO_TITLE="true"

plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Editor
export EDITOR="vim"

# Custom LSCOLORS
export CLICOLOR=1
export LSCOLORS=fxgxfxexbxegedabagacad
export PS1="%m@%n:%F{2}%~%f$ "

# Aliases
alias ls="ls -Gh"
alias nrw="npm run watch"
alias nrb="npm run build"
alias ns="npm start"
alias c="clear"

# Scripts
alias ip="sh $HOME/scripts/myip.sh"
alias extract="sh $HOME/scripts/extract.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

