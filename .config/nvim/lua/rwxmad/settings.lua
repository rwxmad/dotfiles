local set = vim.opt

set.mouse = 'a'

set.syntax = 'enable'
set.termguicolors = true
set.background = 'dark'
set.clipboard = 'unnamedplus'

set.encoding = 'utf-8'
set.fileencoding = 'utf-8'

set.filetype = 'on'

set.lazyredraw = true

set.showcmd = false
set.cmdheight = 1
set.laststatus = 2
set.scrolloff = 10

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.swapfile = false
set.backup = false

set.number = true
set.ruler = true
set.signcolumn = 'yes'
set.autoindent = true

set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true

set.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
