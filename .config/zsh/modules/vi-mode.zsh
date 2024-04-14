# enable vi mode
bindkey -v

# Yank to the system clipboard
function vi-yank-xclip {
    zle vi-yank
   echo "$CUTBUFFER" | pbcopy
}

zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip
