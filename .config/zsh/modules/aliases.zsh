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
# Navigation
# --------------------------------------------------------------------------------------------------

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# --------------------------------------------------------------------------------------------------
# Filesystem
# --------------------------------------------------------------------------------------------------

alias md='mkdir -p'

# --------------------------------------------------------------------------------------------------
# Changing 'ls' to 'exa'
# --------------------------------------------------------------------------------------------------

alias l='eza -al --icons --color=always --group-directories-first' # list all
alias la=l # same as 'l'
alias ls='eza -al --icons --sort=old --color=always' # sorted by modified date (last modified at top)
alias lt='eza -aT --color=always --icons --group-directories-first' # tree
alias ld='eza -D --icons --color=always' # list only directories
alias lf='eza -f --icons --color=always' # list only files
alias l.='eza -a --icons | egrep "^\."' # search dotfiles in current dir

# --------------------------------------------------------------------------------------------------
# Scripts
# --------------------------------------------------------------------------------------------------

alias ipv4="sh $XDG_CONFIG_HOME/scripts/ip.sh"
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

# --------------------------------------------------------------------------------------------------
# git
# --------------------------------------------------------------------------------------------------

alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gapa='git add --patch'
alias gau='git add --update'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbda='git branch --no-color --merged | command grep -vE "^(\*|\\s*(master|develop|dev)\\s*$)" | command xargs -n 1 git branch -d'
alias gbl='git blame -b -w'
alias gbnm='git branch --no-merged'
alias gbr='git branch --remote'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='git commit -a -m'
alias gcb='git checkout -b'
alias gcd='git checkout develop'
alias gcf='git config --list'
alias gcl='git clone --recursive'
alias gclean='git clean -fd'
alias gcm='git checkout master'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gcs='git commit -S'
alias gcsm='git commit -s -m'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdct='git describe --tags $(git rev-list --tags --max-count=1)'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin'
alias gg='git gui citool'
alias gga='git gui citool --amend'
alias gl='git pull'
alias glg='git log --stat'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glgp='git log --stat -p'
alias glo='git log --oneline --decorate'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grset='git remote set-url'
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'
alias gru='git reset --'
alias grup='git remote update'
alias grv='git remote -v'
alias gsb='git status -sb'
alias gsi='git submodule init'
alias gsps='git show --pretty=short --show-signature'
alias gss='git status -s'
alias gst='git status'
alias gsta='git stash save'
alias gstaa='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'
alias gsu='git submodule update'
alias gts='git tag -s'
alias gtv='git tag | sort -V'
alias gunignore='git update-index --no-assume-unchanged'
alias gignore='git update-index --assume-unchanged'
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
alias gup='git pull --rebase'
alias gupv='git pull --rebase -v'
