# enable vi mode
bindkey -v

# yank to the system clipboard
function vi-yank-xclip {
    zle vi-yank
   echo "$CUTBUFFER" | pbcopy
}

zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip

# search history with ctrl + p / ctrl + n
bindkey ^P history-search-backward
bindkey ^N history-search-forward
