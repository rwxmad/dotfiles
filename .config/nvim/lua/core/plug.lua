return require('packer').startup(
  function(use)

    use 'wbthomason/packer.nvim'

    use 'kyazdani42/nvim-web-devicons'
    use {'kyazdani42/nvim-tree.lua',
        requires = 'nvim-web-devicons',
        config = function() require('nvim-tree').setup {} end
    }

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-refactor'

    use 'hoob3rt/lualine.nvim'
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    use 'neovim/nvim-lspconfig'
    use({
      'glepnir/lspsaga.nvim',
      branch = "main",
      config = function()
          local saga = require('lspsaga')

          saga.init_lsp_saga({
              -- your configuration
          })
      end,
    })

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

    use {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end,
    }

    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

    use 'tpope/vim-surround'

    use 'rust-lang/rust.vim'
    use 'simrat39/rust-tools.nvim'
    use { 'Saecki/crates.nvim', requires = { 'nvim-lua/plenary.nvim' } }

    use 'windwp/nvim-ts-autotag'
    use 'norcalli/nvim-colorizer.lua'

    use 'jose-elias-alvarez/nvim-lsp-ts-utils'

    use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }
    use 'ellisonleao/glow.nvim'

    use 'ellisonleao/gruvbox.nvim'
    use 'gruvbox-community/gruvbox'
    use 'folke/tokyonight.nvim'

    use 'andweeb/presence.nvim'

  end)

