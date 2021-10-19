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

" Lsp finder
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>

" Hover Doc
nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>

" Signature help
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>

" Jump Diagnostic and Show Diagnostic
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>

" Code action
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

" Rename
nnoremap <silent>gr :Lspsaga rename<CR>

" Terminal
nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>

" -------------------------------------------------------------------------------------------------
" markdown-preview
" -------------------------------------------------------------------------------------------------

nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

