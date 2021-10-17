" -------------------------------------------------------------------------------------------------
" General mappings
" -------------------------------------------------------------------------------------------------

" Map leader to ,
let mapleader=','

" Keymaps
inoremap jj <Esc> 

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" -------------------------------------------------------------------------------------------------
" Plugins
" -------------------------------------------------------------------------------------------------

" -------------------------------------------------------------------------------------------------
" nvim-tree
" -------------------------------------------------------------------------------------------------

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" -------------------------------------------------------------------------------------------------
" Telescope
" -------------------------------------------------------------------------------------------------

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" -------------------------------------------------------------------------------------------------
" lspsaga
" -------------------------------------------------------------------------------------------------

nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>

" -------------------------------------------------------------------------------------------------
" markdown-preview
" -------------------------------------------------------------------------------------------------

nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

