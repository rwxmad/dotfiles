return require('packer').startup(
  function(use)

    use 'wbthomason/packer.nvim'

    use 'kyazdani42/nvim-web-devicons'
    use {'kyazdani42/nvim-tree.lua',
        requires = 'nvim-web-devicons',
        config = function() require('nvim-tree').setup {} end
    }

    use 'easymotion/vim-easymotion'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-refactor'

    use { 'hoob3rt/lualine.nvim', commit = '82f68c42df9d11e52edb52c86113d0eba5be798d'}

    use 'neovim/nvim-lspconfig'
    --use 'glepnir/lspsaga.nvim'
    use { 'tami5/lspsaga.nvim', branch = 'nvim51' }
    use 'windwp/nvim-autopairs'
    use 'ray-x/lsp_signature.nvim'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-path'

    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    use 'onsails/lspkind-nvim'

    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'

    use 'tpope/vim-commentary'

    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    use 'tpope/vim-surround'

    use  { 'fatih/vim-go', run = ':GoUpdateBinaries' }

    use 'rust-lang/rust.vim'
    use 'simrat39/rust-tools.nvim'
    use { 'Saecki/crates.nvim', requires = { 'nvim-lua/plenary.nvim' } }

    use 'mattn/emmet-vim'
    use 'alvan/vim-closetag'

    use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }

    use 'eddyekofo94/gruvbox-flat.nvim'
    use 'morhetz/gruvbox'
    use 'mhartington/oceanic-next'
    use 'ayu-theme/ayu-vim'

  end)

