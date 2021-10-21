local set = vim.opt

set.mouse = "a"               -- Enable mouse

set.syntax = "enable"         -- Enable syntax highlighting
set.termguicolors = true      -- Enable termguicolors
set.background = "dark"       -- Set dark background

set.encoding = "utf-8"        -- Encoding
set.fileencoding = "utf-8"    -- File encoding

set.filetype = "on"           -- Enable filetype detection

set.lazyredraw = true         -- Don’t update screen during macro and script execution 

set.showcmd = true            -- Show (partial) command in status line
set.cmdheight = 1             -- Status line height
set.laststatus = 2            -- Status bar
set.scrolloff = 10            -- Display 10 lines above/below the cursor when scrolling with a mouse

set.hlsearch = true           -- Enable search highlighting
set.incsearch = true          -- Incremental search that shows partial matches
set.ignorecase = true         -- Ignore case when searching
set.smartcase = true          -- Automatically switch search to case-sensitive when search query contains an uppercase letter

set.swapfile = false          -- Disable swap files
set.backup = false            -- Disable backups

set.number = true             -- Show line numbers on the sidebar
set.ruler = true              -- Always show cursor position
set.autoindent = true         -- New lines inherit the indentation of previous lines

set.tabstop = 2               -- Indent using two spaces
set.shiftwidth = 2            -- When shifting, indent using two spaces
set.expandtab = true          -- Convert tabs to spaces

