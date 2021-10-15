" -------------------------------------------------------------------------------------------------
" General settings
" -------------------------------------------------------------------------------------------------

if has('vim_starting')
  set encoding=utf-8      " Encoding
endif
scriptencoding utf-8      " Script encoding

if &compatible
  set nocompatible        " Disable compatibility with vi which can cause unexpected issues
endif

if !1 | finish | endif    " Stop loading config if it's on tiny or small

filetype on               " Enable filetype detection
filetype plugin indent on " Fot plugins to load correctly

set nosc noru nosm        " Switch off status messages
set lazyredraw            " Don’t update screen during macro and script execution
set showcmd               " Show (partial) command in status line
set cmdheight=1           " Status line height
set laststatus=2          " Status bar
set scrolloff=10          " Display 10 lines above/below the cursor when scrolling with a mouse

set hlsearch              " Enable search highlighting
set incsearch             " Incremental search that shows partial matches
set ignorecase            " Ignore case when searching
set smartcase             " Automatically switch search to case-sensitive when search query contains an uppercase letter

set noswapfile            " Disable swap files
set nobackup              " Disable backups 

syntax enable             " Enable syntax highlighting
set number                " Show line numbers on the sidebar
set tabstop=2             " Indent using two spaces
set shiftwidth=2          " When shifting, indent using two spaces
set expandtab             " Convert tabs to spaces
set ruler                 " Always show cursor position
set ai                    " New lines inherit the indentation of previous lines

" -------------------------------------------------------------------------------------------------
" Imports
" -------------------------------------------------------------------------------------------------

runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

runtime ./mappings.vim

" -------------------------------------------------------------------------------------------------
" Colors
" -------------------------------------------------------------------------------------------------

set t_Co=256
colorscheme gruvbox
" colorscheme peachpuff

" -------------------------------------------------------------------------------------------------
" vim-go
" -------------------------------------------------------------------------------------------------

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

