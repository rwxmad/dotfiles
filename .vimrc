" Enable filetype detection
filetype on

set nocompatible
set noswapfile

colorscheme peachpuff

syntax on
set number
set tabstop=2
set shiftwidth=2
set expandtab
set ruler
set ai
set hlsearch
highlight Comment ctermfg=green

" Keymap
inoremap jj <Esc>

" Tab indentation in Makefile 
autocmd FileType make set noexpandtab shiftwidth=2 softtabstop=0
