return require('packer').startup({
  function(use)
    -- -------------------------------------------------------------------------------------------------
    -- Plugin manager
    -- -------------------------------------------------------------------------------------------------
    use('wbthomason/packer.nvim')

    -- -------------------------------------------------------------------------------------------------
    -- Required plugins
    -- -------------------------------------------------------------------------------------------------
    use('nvim-lua/plenary.nvim')

    -- -------------------------------------------------------------------------------------------------
    -- Editor
    -- -------------------------------------------------------------------------------------------------
    use({
      'kyazdani42/nvim-web-devicons',
      config = function()
        require('nvim-web-devicons').setup()
      end,
    })
    use({
      'windwp/nvim-autopairs',
      config = function()
        require('nvim-autopairs').setup()
      end,
    })
    use({
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end,
    })
    use({
      'phaazon/hop.nvim',
      config = function()
        require('hop').setup()
      end,
    })
    use({
      'kylechui/nvim-surround',
      config = function()
        require('nvim-surround').setup()
      end,
    })

    -- -------------------------------------------------------------------------------------------------
    -- Navigation
    -- -------------------------------------------------------------------------------------------------
    use({
      'kyazdani42/nvim-tree.lua',
      config = function()
        require('nvim-tree').setup()
      end,
    })

    -- -------------------------------------------------------------------------------------------------
    -- Treesitter
    -- -------------------------------------------------------------------------------------------------
    use({
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        require('rwxmad.config.treesitter')
      end,
    })
    use('nvim-treesitter/nvim-treesitter-refactor')
    use('nvim-treesitter/playground')
    use('windwp/nvim-ts-autotag')
    use('JoosepAlviste/nvim-ts-context-commentstring')

    -- -------------------------------------------------------------------------------------------------
    -- LSP
    -- -------------------------------------------------------------------------------------------------
    use({
      'neovim/nvim-lspconfig',
      config = function()
        require('rwxmad.config.lsp.lspconfig')
      end,
    })
    use('jose-elias-alvarez/null-ls.nvim')
    use({
      'j-hui/fidget.nvim',
      config = function()
        require('fidget').setup({
          -- HACK: prevent error when exiting Neovim
          vim.api.nvim_create_autocmd('VimLeavePre', { command = [[silent! FidgetClose]] }),
        })
      end,
    })
    use({
      'ray-x/lsp_signature.nvim',
      config = function()
        require('rwxmad.config.lsp_signature')
      end,
    })
    use({
      'glepnir/lspsaga.nvim',
      branch = 'main',
      config = function()
        require('rwxmad.config.lspsaga')
      end,
    })

    -- -------------------------------------------------------------------------------------------------
    -- CMP
    -- -------------------------------------------------------------------------------------------------
    use({
      'hrsh7th/nvim-cmp',
      config = function()
        require('rwxmad.config.lsp.nvim-cmp')
      end,
    })
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('saadparwaiz1/cmp_luasnip')

    use({
      'L3MON4D3/LuaSnip',
      config = function()
        require('rwxmad.config.lsp.luasnip')
      end,
    })
    use('rafamadriz/friendly-snippets')

    -- -------------------------------------------------------------------------------------------------
    -- Telescope
    -- -------------------------------------------------------------------------------------------------
    use({
      'nvim-telescope/telescope.nvim',
      config = function()
        require('rwxmad.config.telescope')
      end,
    })
    use('nvim-telescope/telescope-file-browser.nvim')

    -- -------------------------------------------------------------------------------------------------
    -- UI
    -- -------------------------------------------------------------------------------------------------
    use({
      'norcalli/nvim-colorizer.lua',
      config = function()
        require('colorizer').setup()
      end,
    })
    use({
      'ellisonleao/glow.nvim',
      config = function()
        require('rwxmad.config.glow')
      end,
    })
    use({ 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' })

    -- -------------------------------------------------------------------------------------------------
    -- Statusline, Bufferline, Git
    -- -------------------------------------------------------------------------------------------------
    use({
      'nvim-lualine/lualine.nvim',
      config = function()
        require('rwxmad.config.lualine')
      end,
    })
    use({
      'akinsho/bufferline.nvim',
      config = function()
        require('rwxmad.config.bufferline')
      end,
    })
    use({
      'lewis6991/gitsigns.nvim',
      config = function()
        require('rwxmad.config.gitsigns')
      end,
    })
    use('tpope/vim-fugitive')

    -- -------------------------------------------------------------------------------------------------
    -- Languages
    -- -------------------------------------------------------------------------------------------------

    -- Typescript
    use('jose-elias-alvarez/typescript.nvim')

    -- Rust
    use('simrat39/rust-tools.nvim')
    use({
      'saecki/crates.nvim',
      event = { 'BufRead Cargo.toml' },
      requires = { { 'nvim-lua/plenary.nvim' } },
      config = function()
        require('crates').setup()
      end,
    })

    -- -------------------------------------------------------------------------------------------------
    -- Colorscheme
    -- -------------------------------------------------------------------------------------------------
    use('ellisonleao/gruvbox.nvim')

    -- -------------------------------------------------------------------------------------------------
    -- Other
    -- -------------------------------------------------------------------------------------------------
    use('andweeb/presence.nvim')
  end,
  config = {
    profile = {
      enable = true,
      threshold = 0,
    },
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end,
    },
  },
})