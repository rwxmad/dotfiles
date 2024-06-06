-- -------------------------------------------------------------------------------------------------
-- General mappings
-- -------------------------------------------------------------------------------------------------

-- Map leader to ,
vim.g.mapleader = ','

-- Keymaps

-- Exit insert mode
vim.keymap.set('i', 'jj', '<Esc>')

-- Write file like :w command
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>')

-- Quit nvim like :q command
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', { silent = true })

-- Turn off search highlight
vim.keymap.set('n', '<leader><space>', '<cmd>nohlsearch<CR>')

-- Delete a word backwards
vim.keymap.set('n', 'db', 'vb"_d')

-- Move to start or end of line in insert mode
vim.keymap.set('i', '<C-l>', '<ESC>A')
vim.keymap.set('i', '<C-h>', '<ESC>I')

-- -------------------------------------------------------------------------------------------------
-- Plugins
-- -------------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------------
-- lspsaga
-- -------------------------------------------------------------------------------------------------

-- Lsp finder
vim.keymap.set('n', 'gh', '<cmd>Lspsaga finder<CR>', { silent = true })

-- Hover Doc
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', { silent = true })

-- Outline
vim.keymap.set('n', '<leader>o', '<cmd>Lspsaga outline<CR>', { silent = true })

-- Jump Diagnostic and Show Diagnostic
vim.keymap.set('n', '[e', '<cmd>Lspsaga diagnostic_jump_next<CR>', { silent = true })
vim.keymap.set('n', ']e', '<cmd>Lspsaga diagnostic_jump_prev<CR>', { silent = true })
vim.keymap.set('n', '<leader>ld', '<cmd>Lspsaga show_line_diagnostics<CR>', { silent = true })

-- Code action
vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', { silent = true })

-- Rename
vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename<CR>', { silent = true })

-- Terminal
vim.keymap.set('n', '<C-t>', '<cmd>Lspsaga term_toggle<CR>', { silent = true })
vim.keymap.set({ 't', 'n' }, '<C-d>', '<C-\\><C-n><cmd>Lspsaga term_toggle<CR>', { silent = true })

-- -------------------------------------------------------------------------------------------------
-- Bufferline
-- -------------------------------------------------------------------------------------------------

-- Move current buffer in line
vim.keymap.set('n', '<leader>bn', '<cmd>BufferLineMoveNext<CR>', { silent = true })
vim.keymap.set('n', '<leader>bp', '<cmd>BufferLineMovePrev<CR>', { silent = true })

-- Sort buffers
vim.keymap.set('n', '<leader>be', '<cmd>BufferLineSortByExtension<CR>', { silent = true })
vim.keymap.set('n', '<leader>bd', '<cmd>BufferLineSortByDirectory<CR>', { silent = true })

-- Search and jump to buffer
vim.keymap.set('n', '<leader>bb', '<cmd>BufferLinePick<CR>', { silent = true })

-- Close current buffer
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<CR>', { silent = true })

-- Find the buffer and close
vim.keymap.set('n', '<leader>bc', '<cmd>BufferLinePickClose<CR>', { silent = true })

-- Jump to buffer by number
vim.keymap.set('n', '<leader>1', '<cmd>BufferLineGoToBuffer 1<CR>', { silent = true })
vim.keymap.set('n', '<leader>2', '<cmd>BufferLineGoToBuffer 2<CR>', { silent = true })
vim.keymap.set('n', '<leader>3', '<cmd>BufferLineGoToBuffer 3<CR>', { silent = true })
vim.keymap.set('n', '<leader>4', '<cmd>BufferLineGoToBuffer 4<CR>', { silent = true })
vim.keymap.set('n', '<leader>5', '<cmd>BufferLineGoToBuffer 5<CR>', { silent = true })
vim.keymap.set('n', '<leader>6', '<cmd>BufferLineGoToBuffer 6<CR>', { silent = true })
vim.keymap.set('n', '<leader>7', '<cmd>BufferLineGoToBuffer 7<CR>', { silent = true })
vim.keymap.set('n', '<leader>8', '<cmd>BufferLineGoToBuffer 8<CR>', { silent = true })
vim.keymap.set('n', '<leader>9', '<cmd>BufferLineGoToBuffer 9<CR>', { silent = true })

-- -------------------------------------------------------------------------------------------------
-- Gitsigns
-- -------------------------------------------------------------------------------------------------

vim.keymap.set('n', '<leader>hs', '<cmd>Gitsigns stage_hunk<CR>')
vim.keymap.set('n', '<leader>hy', '<cmd>Gitsigns undo_stage_hunk<CR>')
vim.keymap.set('n', '<leader>hr', '<cmd>Gitsigns reset_hunk<CR>')
vim.keymap.set('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>')
vim.keymap.set('n', '<leader>hb', '<cmd>Gitsigns blame_line<CR>')

-- -------------------------------------------------------------------------------------------------
-- markdown-preview
-- -------------------------------------------------------------------------------------------------

vim.keymap.set('n', '<C-s>', '<cmd>MarkdownPreview<CR>')
vim.keymap.set('n', '<M-s', '<cmd>MarkdownPreviewStop<CR>')
vim.keymap.set('n', '<C-p', '<cmd>MarkdownPreviewToggle<CR>')

-- -------------------------------------------------------------------------------------------------
-- Glow
-- -------------------------------------------------------------------------------------------------

vim.keymap.set('n', '<leader>p', '<cmd>Glow<CR>')
