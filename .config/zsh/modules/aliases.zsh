# --------------------------------------------------------------------------------------------------
# General aliases
# --------------------------------------------------------------------------------------------------

# utils
alias c="clear"

# directories
alias dots="cd ~/dotfiles/"
alias notes="cd ~/notes"
alias dev="cd ~/dev"

# nvim
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# --------------------------------------------------------------------------------------------------
# Changing 'ls' to 'exa'
# --------------------------------------------------------------------------------------------------

alias l='eza -al --icons --color=always --group-directories-first' # list all
alias la=l # same as 'l'
alias ls='eza -al --icons --sort=old --color=always' # sorted by modified date (last modified at top)
alias lt='eza -aT --color=always --group-directories-first' # tree
alias ld='eza -D --icons --color=always' # list only directories
alias lf='eza -f --icons --color=always' # list only files
alias l.='eza -a --icons | egrep "^\."' # search dotfiles in current dir

# --------------------------------------------------------------------------------------------------
# Scripts
# --------------------------------------------------------------------------------------------------

alias ip="sh $XDG_CONFIG_HOME/scripts/ip.sh"
alias extract="sh $XDG_CONFIG_HOME/scripts/extract.sh"

# homebrew
alias brewd="sh $XDG_CONFIG_HOME/scripts/brew/dump.sh"
alias brewi="sh $XDG_CONFIG_HOME/scripts/brew/install.sh"

# --------------------------------------------------------------------------------------------------
# npm
# --------------------------------------------------------------------------------------------------

alias nr="npm run"
alias ns="npm start"
alias nrw="npm run watch"
alias nrd="npm run dev"
alias nrs="npm run serve"
alias nrb="npm run build"
alias nrl="npm run lint"
alias nrt="npm run test"
alias ncc="npm cache clean -f"
