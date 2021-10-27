#!/bin/bash

# ====================
# Current directory
# ====================
cwd=`pwd`

# ====================
# Alacritty
# ====================
ln -sfn "$cwd"/.config/alacritty ~/.config/alacritty

# ====================
# ZSHENV
# ====================
ln -sfn "$cwd"/.zshenv ~/.zshenv

# ====================
# ZSH
# ====================
ln -sfn "$cwd"/.config/zsh ~/.config/zsh

# ====================
# VIM
# ====================
ln -sfn "$cwd"/.vimrc ~/.vimrc

# ====================
# NVIM
# ====================
ln -sfn "$cwd"/.config/nvim ~/.config/nvim

# ====================
# TMUX
# ====================
ln -sfn "$cwd"/.tmux.conf ~/.tmux.conf

# ====================
# Scripts
# ====================
ln -sfn "$cwd"/scripts ~/scripts

# ====================
# Misc
# ====================
ln -sfn "$cwd"/.editorconfig ~/.editorconfig

