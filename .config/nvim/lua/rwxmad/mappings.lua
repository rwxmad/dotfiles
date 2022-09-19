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

-- -------------------------------------------------------------------------------------------------
-- Plugins
-- -------------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------------
-- nvim-tree
-- -------------------------------------------------------------------------------------------------

vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>n', '<cmd>NvimTreeFindFile<CR>')

-- -------------------------------------------------------------------------------------------------
-- Telescope
-- -------------------------------------------------------------------------------------------------

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>bg', '<cmd>Telescope current_buffer_fuzzy_find<CR>')
vim.keymap.set('n', '<leader>fo', '<cmd>Telescope oldfiles<CR>')

-- -------------------------------------------------------------------------------------------------
-- Telescope plugins
-- -------------------------------------------------------------------------------------------------

vim.keymap.set('n', '<leader>fb', '<cmd>Telescope file_browser<CR>')
vim.keymap.set('n', '<leader>fn', '<cmd>Telescope neoclip<CR>')

-- -------------------------------------------------------------------------------------------------
-- Hop
-- -------------------------------------------------------------------------------------------------
vim.keymap.set('n', '<leader>g', '<cmd>HopWord<CR>')

-- -------------------------------------------------------------------------------------------------
-- lspsaga
-- -------------------------------------------------------------------------------------------------

-- Lsp finder
vim.keymap.set('n', 'gh', '<cmd>Lspsaga lsp_finder<CR>', { silent = true })

-- Hover Doc
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', { silent = true })

-- Outline
vim.keymap.set('n', '<leader>o', '<cmd>LSoutlineToggle<CR>', { silent = true })

-- Jump Diagnostic and Show Diagnostic
vim.keymap.set('n', '[e', '<cmd>Lspsaga diagnostic_jump_next<CR>', { silent = true })
vim.keymap.set('n', ']e', '<cmd>Lspsaga diagnostic_jump_prev<CR>', { silent = true })
vim.keymap.set('n', '<leader>ld', '<cmd>Lspsaga show_line_diagnostics<CR>', { silent = true })

-- Code action
vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', { silent = true })

-- Rename
vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename<CR>', { silent = true })

-- Terminal
vim.keymap.set('n', '<A-d>', '<cmd>Lspsaga open_floaterm<CR>', { silent = true })
vim.keymap.set({ 't', 'n' }, '<A-d>', '<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>', { silent = true })

-- -------------------------------------------------------------------------------------------------
-- Bufferline
-- -------------------------------------------------------------------------------------------------

-- Jump to start or end of buffer line
vim.keymap.set('n', '[b', '<cmd>BufferLineCycleNext<CR>', { silent = true })
vim.keymap.set('n', 'b]', '<cmd>BufferLineCyclePrev<CR>', { silent = true })

-- Move current buffer in line
vim.keymap.set('n', '<leader>bn', '<cmd>BufferLineMoveNext<CR>', { silent = true })
vim.keymap.set('n', '<leader>bp', '<cmd>BufferLineMovePrev<CR>', { silent = true })

-- Sort buffers
vim.keymap.set('n', 'be', '<cmd>BufferLineSortByExtension<CR>', { silent = true })
vim.keymap.set('n', 'bd', '<cmd>BufferLineSortByDirectory<CR>', { silent = true })

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
-- markdown-preview
-- -------------------------------------------------------------------------------------------------

vim.keymap.set('n', '<C-s>', '<cmd>MarkdownPreview<CR>')
vim.keymap.set('n', '<M-s', '<cmd>MarkdownPreviewStop<CR>')
vim.keymap.set('n', '<C-p', '<cmd>MarkdownPreviewToggle<CR>')

-- -------------------------------------------------------------------------------------------------
-- Glow
-- -------------------------------------------------------------------------------------------------

vim.keymap.set('n', '<leader>p', '<cmd>Glow<CR>')
