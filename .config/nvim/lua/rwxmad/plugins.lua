local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- -------------------------------------------------------------------------------------------------
  -- Required plugins
  -- -------------------------------------------------------------------------------------------------
  { 'nvim-lua/plenary.nvim' },

  -- -------------------------------------------------------------------------------------------------
  -- Editor
  -- -------------------------------------------------------------------------------------------------
  {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup()
    end,
  },
  {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end,
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  },
  {
    'phaazon/hop.nvim',
    config = function()
      require('hop').setup()
    end,
  },
  {
    'kylechui/nvim-surround',
    config = function()
      require('nvim-surround').setup()
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    config = function()
      require('rwxmad.config.indent-line')
    end,
  },

  -- -------------------------------------------------------------------------------------------------
  -- Navigation
  -- -------------------------------------------------------------------------------------------------
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('rwxmad.config.neo-tree')
    end,
  },
  {
    'folke/todo-comments.nvim',
    config = function()
      require('todo-comments').setup()
    end,
  },

  -- -------------------------------------------------------------------------------------------------
  -- Treesitter
  -- -------------------------------------------------------------------------------------------------
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('rwxmad.config.treesitter')
    end,
  },
  { 'nvim-treesitter/nvim-treesitter-refactor' },
  { 'nvim-treesitter/nvim-treesitter-textobjects' },
  { 'nvim-treesitter/playground' },
  { 'windwp/nvim-ts-autotag' },
  { 'JoosepAlviste/nvim-ts-context-commentstring' },

  -- -------------------------------------------------------------------------------------------------
  -- LSP
  -- -------------------------------------------------------------------------------------------------
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('rwxmad.config.lsp.lspconfig')
    end,
  },
  { 'nvimtools/none-ls.nvim' },
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },
  { 'williamboman/mason-lspconfig.nvim' },
  {
    'jayp0521/mason-null-ls.nvim',
    config = function()
      require('rwxmad.config.mason-null-ls')
    end,
  },
  {
    'ray-x/lsp_signature.nvim',
    event = 'VeryLazy',
    config = function()
      require('rwxmad.config.lsp_signature')
    end,
  },
  {
    'glepnir/lspsaga.nvim',
    branch = 'main',
    config = function()
      require('rwxmad.config.lspsaga')
    end,
  },

  -- -------------------------------------------------------------------------------------------------
  -- CMP
  -- -------------------------------------------------------------------------------------------------
  {
    'hrsh7th/nvim-cmp',
    config = function()
      require('rwxmad.config.lsp.nvim-cmp')
    end,
  },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'saadparwaiz1/cmp_luasnip' },

  {
    'L3MON4D3/LuaSnip',
    version = 'v2.*',
    config = function()
      require('rwxmad.config.lsp.luasnip')
    end,
  },
  { 'rafamadriz/friendly-snippets' },
  -- -------------------------------------------------------------------------------------------------
  -- Telescope
  -- -------------------------------------------------------------------------------------------------
  {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('rwxmad.config.telescope')
    end,
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
  },
  { 'nvim-telescope/telescope-file-browser.nvim' },
  { 'nvim-telescope/telescope-media-files.nvim' },

  -- -------------------------------------------------------------------------------------------------
  -- UI
  -- -------------------------------------------------------------------------------------------------
  {
    'folke/noice.nvim',
    config = function()
      require('rwxmad.config.noice')
    end,
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
    },
  },
  {
    'SmiteshP/nvim-navic',
    config = function()
      vim.g.navic_silence = true
      vim.opt.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
      require('nvim-navic').setup({ highlight = true, depth_limit = 5 })
    end,
  },
  {
    'glepnir/dashboard-nvim',
    config = function()
      require('rwxmad.config.dashboard')
    end,
  },
  {
    'NvChad/nvim-colorizer.lua',
    config = function()
      require('rwxmad.config.colorizer')
    end,
  },
  {
    'AckslD/nvim-neoclip.lua',
    config = function()
      require('neoclip').setup()
    end,
  },
  {
    'ellisonleao/glow.nvim',
    config = function()
      require('rwxmad.config.glow')
    end,
  },
  { 'iamcco/markdown-preview.nvim', build = ':call mkdp#util#install()' },

  -- -------------------------------------------------------------------------------------------------
  -- Statusline, Bufferline, Git
  -- -------------------------------------------------------------------------------------------------
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('rwxmad.config.lualine')
    end,
  },
  {
    'akinsho/bufferline.nvim',
    config = function()
      require('rwxmad.config.bufferline')
    end,
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('rwxmad.config.gitsigns')
    end,
  },
  { 'tpope/vim-fugitive' },

  -- -------------------------------------------------------------------------------------------------
  -- Languages
  -- -------------------------------------------------------------------------------------------------

  -- Typescript
  -- {
  --   'pmizio/typescript-tools.nvim',
  --   requires = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  --   opts = {},
  -- },

  -- Rust
  { 'simrat39/rust-tools.nvim' },
  {
    'saecki/crates.nvim',
    event = { 'BufRead Cargo.toml' },
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      require('crates').setup()
    end,
  },

  -- Neovim
  { 'folke/neodev.nvim' },

  -- -------------------------------------------------------------------------------------------------
  -- Colorscheme
  -- -------------------------------------------------------------------------------------------------
  { 'ellisonleao/gruvbox.nvim' },

  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
        on_highlights = function(highlights, colors)
          highlights.LspInlayHint = { fg = colors.base01 }
        end,
      }
    end,
  },
  -- -------------------------------------------------------------------------------------------------
  -- Other
  -- -------------------------------------------------------------------------------------------------
  {
    'andweeb/presence.nvim',
    config = function()
      require('presence').setup({
        main_image = 'file',
        enable_line_number = true,
        line_number_text = 'Working on secret project %s:%s',
      })
    end,
  },
})
