if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree' 
Plug 'jistr/vim-nerdtree-tabs'

Plug 'easymotion/vim-easymotion'

"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'hoob3rt/lualine.nvim', {'commit': '82f68c42df9d11e52edb52c86113d0eba5be798d'}

Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'windwp/nvim-autopairs'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-commentary'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'tpope/vim-surround'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'

Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ayu-theme/ayu-vim'

Plug 'ryanoasis/vim-devicons'

call plug#end() 
