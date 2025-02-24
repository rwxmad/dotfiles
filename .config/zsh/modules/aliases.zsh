# --------------------------------------------------------------------------------------------------
# General aliases
# --------------------------------------------------------------------------------------------------

alias c="clear"

alias dev="cd ~/dev"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/"
alias notes="cd ~/notes"
alias github="cd ~/dev/github/"

alias vim="nvim"

# --------------------------------------------------------------------------------------------------
# Changing 'ls' to 'exa'
# --------------------------------------------------------------------------------------------------

alias l='eza -al --icons --color=always --group-directories-first'
alias ls='eza -a --icons --color=always --group-directories-first'
alias la='eza -a --color=always --group-directories-first'
alias ll='eza -l --color=always --group-directories-first'
alias lt='eza -aT --color=always --group-directories-first'
alias l.='eza -a | egrep "^\."'

# --------------------------------------------------------------------------------------------------
# Scripts
# --------------------------------------------------------------------------------------------------

alias ip="sh $XDG_CONFIG_HOME/scripts/ip.sh"
alias extract="sh $XDG_CONFIG_HOME/scripts/extract.sh"
alias brewd="sh $XDG_CONFIG_HOME/scripts/brew/dump.sh"
alias brewi="sh $XDG_CONFIG_HOME/scripts/brew/install.sh"

# --------------------------------------------------------------------------------------------------
# Dotfiles
# --------------------------------------------------------------------------------------------------

alias dots="cd ~/dotfiles/"

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
