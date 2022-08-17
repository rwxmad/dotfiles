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

-- Insert newline without leaving normal mode
nnoremap('<leader>o', 'o<Esc>')
nnoremap('<leader>O', 'O<Esc>')

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
nnoremap('<leader>bg', '<cmd>Telescope current_buffer_fuzzy_find<CR>')

-- -------------------------------------------------------------------------------------------------
-- Telescope plugins
-- -------------------------------------------------------------------------------------------------

nnoremap('<leader>fb', '<cmd>Telescope file_browser<CR>')

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

-- Jump to start or end of buffer line
nnoremap('[b',         '<cmd>BufferLineCycleNext<CR>', true)
nnoremap('b]',         '<cmd>BufferLineCyclePrev<CR>', true)

-- Move current buffer in line
nnoremap('<leader>bn', '<cmd>BufferLineMoveNext<CR>', true)
nnoremap('<leader>bp', '<cmd>BufferLineMovePrev<CR>', true)

-- Sort buffers
nnoremap('be',         '<cmd>BufferLineSortByExtension<CR>', true)
nnoremap('bd',         '<cmd>BufferLineSortByDirectory<CR>', true)

-- Search and jump to buffer
nnoremap('<leader>bb', '<cmd>BufferLinePick<CR>', true)

-- Find the buffer and close
nnoremap('<leader>bc', '<cmd>BufferLinePickClose<CR>', true)

-- Jump to buffer by number
nnoremap('<leader>1', '<cmd>BufferLineGoToBuffer 1<CR>', true)
nnoremap('<leader>2', '<cmd>BufferLineGoToBuffer 2<CR>', true)
nnoremap('<leader>3', '<cmd>BufferLineGoToBuffer 3<CR>', true)
nnoremap('<leader>4', '<cmd>BufferLineGoToBuffer 4<CR>', true)
nnoremap('<leader>5', '<cmd>BufferLineGoToBuffer 5<CR>', true)
nnoremap('<leader>6', '<cmd>BufferLineGoToBuffer 6<CR>', true)
nnoremap('<leader>7', '<cmd>BufferLineGoToBuffer 7<CR>', true)
nnoremap('<leader>8', '<cmd>BufferLineGoToBuffer 8<CR>', true)
nnoremap('<leader>9', '<cmd>BufferLineGoToBuffer 9<CR>', true)

-- -------------------------------------------------------------------------------------------------
-- markdown-preview
-- -------------------------------------------------------------------------------------------------
 
nnoremap('<C-s>', '<cmd>MarkdownPreview<CR>')
nnoremap('<M-s>', '<cmd>MarkdownPreviewStop<CR>')
nnoremap('<C-p>', '<cmd>MarkdownPreviewToggle<CR>')

-- -------------------------------------------------------------------------------------------------
-- Glow
-- -------------------------------------------------------------------------------------------------

nnoremap('<leader>p', '<cmd>Glow<CR>')

