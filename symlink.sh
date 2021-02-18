#!/bin/bash

# ====================
# Current directory
# ====================
cwd=`pwd`

# ====================
# ZSH
# ====================
ln -sfn "$cwd"/.zshrc ~/.zshrc

# ====================
# VIM
# ====================
ln -sfn "$cwd"/.vimrc ~/.vimrc

# ====================
# Scripts
# ====================
ln -sfn "$cwd"/scripts ~/scripts

# ====================
# Misc
# ====================
ln -sfn "$cwd"/.editorconfig ~/.editorconfig
