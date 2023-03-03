# --------------------------------------------------------------------------------------------------
# General aliases
# --------------------------------------------------------------------------------------------------

alias c="clear"

alias code="cd ~/code"
alias notes="cd ~/notes"
alias kb="cd ~/notes/knowledge_base"
alias vim="nvim"

# --------------------------------------------------------------------------------------------------
# Changing 'ls' to 'exa'
# --------------------------------------------------------------------------------------------------

alias l='exa -al --icons --color=always --group-directories-first'
alias ls='exa -a --icons --color=always --group-directories-first'
alias la='exa -a --color=always --group-directories-first'
alias ll='exa -l --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

# --------------------------------------------------------------------------------------------------
# Scripts
# --------------------------------------------------------------------------------------------------

alias ip="sh $HOME/.config/scripts/ip.sh"
alias extract="sh $HOME/.config/scripts/extract.sh"

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
