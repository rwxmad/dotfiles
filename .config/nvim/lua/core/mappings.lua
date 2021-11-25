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
nnoremap('<leader>w', '<cmd>w<CR>')

-- Quit nvim like :q command
nnoremap('<leader>q', '<cmd>q<CR>', true)

-- Turn off search highlight
nnoremap('<leader><space>', '<cmd>nohlsearch<CR>')

-- -------------------------------------------------------------------------------------------------
-- Plugins
-- -------------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------------
-- nvim-tree
-- -------------------------------------------------------------------------------------------------

nnoremap('<C-n>',     '<cmd>NvimTreeToggle<CR>')
nnoremap('<leader>r', '<cmd>NvimTreeRefresh<CR>')
nnoremap('<leader>n', '<cmd>NvimTreeFindFile<CR>')

-- -------------------------------------------------------------------------------------------------
-- Telescope
-- -------------------------------------------------------------------------------------------------

nnoremap('<leader>ff', '<cmd>Telescope find_files<CR>')
nnoremap('<leader>fg', '<cmd>Telescope live_grep<CR>')
nnoremap('<leader>fb', '<cmd>Telescope buffers<CR>')
nnoremap('<leader>fh', '<cmd>Telescope help_tags<CR>')
nnoremap('<leader>fd', '<cmd>Telescope file_browser<CR>')

-- -------------------------------------------------------------------------------------------------
-- lspsaga
-- -------------------------------------------------------------------------------------------------

-- Lsp finder
nnoremap('gh',         '<cmd>Lspsaga lsp_finder<CR>', true)

-- Hover Doc
nnoremap('K',          '<cmd>Lspsaga hover_doc<CR>', true)

--Signature help
nnoremap('<C-k>',      '<cmd>Lspsaga signature_help<CR>', true)

-- Jump Diagnostic and Show Diagnostic
nnoremap('[e',         '<cmd>Lspsaga diagnostic_jump_next<CR>', true)
nnoremap(']e',         '<cmd>Lspsaga diagnostic_jump_prev<CR>', true)
nnoremap('<leader>ld', '<cmd>Lspsaga show_line_diagnostics<CR>', true)

-- Code action
nnoremap('<leader>ca', '<cmd>Lspsaga code_action<CR>', true)
vnoremap('<leader>ca', '<cmd><C-U>Lspsaga range_code_action<CR>')

-- Rename
nnoremap('gr',         '<cmd>Lspsaga rename<CR>', true)

-- Terminal
nnoremap('<A-d>',      '<cmd>Lspsaga open_floaterm<CR>', true)
tnoremap('<A-d>',      '<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>', true)

-- -------------------------------------------------------------------------------------------------
-- Bufferline
-- -------------------------------------------------------------------------------------------------

nnoremap('[b',         '<cmd>BufferLineCycleNext<CR>', true)
nnoremap('b]',         '<cmd>BufferLineCyclePrev<CR>', true)

nnoremap('<leader>bn', '<cmd>BufferLineMoveNext<CR>', true)
nnoremap('<leader>bp', '<cmd>BufferLineMovePrev<CR>', true)

nnoremap('be',         '<cmd>BufferLineSortByExtension<CR>', true)
nnoremap('bd',         '<cmd>BufferLineSortByDirectory<CR>', true)

-- -------------------------------------------------------------------------------------------------
-- markdown-preview
-- -------------------------------------------------------------------------------------------------
 
nnoremap('<C-s>', '<cmd>MarkdownPreview<CR>')
nnoremap('<M-s>', '<cmd>MarkdownPreviewStop<CR>')
nnoremap('<C-p>', '<cmd>MarkdownPreviewToggle<CR>')

