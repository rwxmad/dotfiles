# --------------------------------------------------------------------------------------------------
# General aliases
# --------------------------------------------------------------------------------------------------

alias c="clear"

alias notes="cd ~/notes"
alias kb="cd ~/code/knowledge_base"
alias v="nvim"

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

alias ip="sh $HOME/scripts/ip.sh"
alias extract="sh $HOME/scripts/extract.sh"

# --------------------------------------------------------------------------------------------------
# Dotfiles
# --------------------------------------------------------------------------------------------------

alias dots="cd ~/dotfiles/"

# --------------------------------------------------------------------------------------------------
# npm
# --------------------------------------------------------------------------------------------------

alias nrw="npm run watch"
alias nrb="npm run build"
alias ns="npm start"
alias nrd="npm run dev"
alias nrl="npm run lint"
alias nrt="npm run test"

