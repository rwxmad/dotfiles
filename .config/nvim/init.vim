" Init autocmd
autocmd!

" Encoding
if has('vim_starting')
  set encoding=utf-8
endif
scriptencoding utf-8

if &compatible
  set nocompatible
endif

" stop loading config if it's on tiny or small
if !1 | finish | endif

filetype on " Enable filetype detection
filetype plugin indent on

set nosc noru nosm
set lazyredraw
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set nocompatible
set noswapfile
set nobackup


syntax enable
set number
set tabstop=2
set shiftwidth=2
set expandtab
set ruler
set ai
highlight Comment ctermfg=green

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

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

" -------------------------------------------------------------------------------------------------
" NERDTree mappings
" -------------------------------------------------------------------------------------------------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" -------------------------------------------------------------------------------------------------
" vim-closetag
" -------------------------------------------------------------------------------------------------

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" set exrc
