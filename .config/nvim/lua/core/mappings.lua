local nnoremap = function(lhs, rhs, silent)
	vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = silent })
end

local inoremap = function(lhs, rhs)
	vim.api.nvim_set_keymap('i', lhs, rhs, { noremap = true })
end

local inosilentexprremap = function(lhs, rhs)
	vim.api.nvim_set_keymap('i', lhs, rhs, { noremap = true, expr = true, silent = true })
end

local vnoremap = function(lhs, rhs)
	vim.api.nvim_set_keymap('v', lhs, rhs, { noremap = true })
end

local tnoremap = function(lhs, rhs, silent)
  vim.api.nvim_set_keymap('t', lhs, rhs, { noremap = true, silent = silent })
end

-- -------------------------------------------------------------------------------------------------
-- General mappings
-- -------------------------------------------------------------------------------------------------

-- Map leader to ,
vim.g.mapleader = ','

-- Keymaps

-- Exit insert mode
inoremap('jj', '<Esc>')

-- Write file like :w command
nnoremap('<leader>w', ':w<CR>')

-- Quit nvim like :q command
nnoremap('<leader>q', ':q<CR>', true)

-- Turn off search highlight
nnoremap('<leader><space>', ':nohlsearch<CR>')

-- -------------------------------------------------------------------------------------------------
-- Plugins
-- -------------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------------
-- nvim-tree
-- -------------------------------------------------------------------------------------------------

nnoremap('<C-n>', ':NvimTreeToggle<CR>')
nnoremap('<leader>r', ':NvimTreeRefresh<CR>')
nnoremap('<leader>n', ':NvimTreeFindFile<CR>')

-- -------------------------------------------------------------------------------------------------
-- Telescope
-- -------------------------------------------------------------------------------------------------

nnoremap('<leader>ff', '<cmd>Telescope find_files<CR>')
nnoremap('<leader>fg', '<cmd>Telescope live_grep<CR>')
nnoremap('<leader>fb', '<cmd>Telescope buffers<CR>')
nnoremap('<leader>fh', '<cmd>Telescope help_tags<CR>')

-- -------------------------------------------------------------------------------------------------
-- lspsaga
-- -------------------------------------------------------------------------------------------------

-- Lsp finder
nnoremap('gh', '<cmd>Lspsaga lsp_finder<CR>', true)

-- Hover Doc
nnoremap('K', '<cmd>Lspsaga hover_doc<CR>', true)

--Signature help
nnoremap('<C-k>', '<cmd>Lspsaga signature_help<CR>', true)

-- Jump Diagnostic and Show Diagnostic
nnoremap('[e', ':Lspsaga diagnostic_jump_next<CR>', true)
nnoremap(']e', ':Lspsaga diagnostic_jump_prev<CR>', true)
nnoremap('<leader>ld', ':Lspsaga show_line_diagnostics<CR>', true)

-- Code action
nnoremap('<leader>ca', ':Lspsaga code_action<CR>', true)
vnoremap('<leader>ca', ':<C-U>Lspsaga range_code_action<CR>')

-- Rename
nnoremap('gr', ':Lspsaga rename<CR>', true)

-- Terminal
nnoremap('<A-d>', ':Lspsaga open_floaterm<CR>', true)
tnoremap('<A-d>', '<C-\\><C-n>:Lspsaga close_floaterm<CR>', true)

-- -------------------------------------------------------------------------------------------------
-- markdown-preview
-- -------------------------------------------------------------------------------------------------
 
nnoremap('<C-s>', ':MarkdownPreview<CR>')
nnoremap('<M-s>', ':MarkdownPreviewStop<CR>')
nnoremap('<C-p>', ':MarkdownPreviewToggle<CR>')

