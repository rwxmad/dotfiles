return {
  {
    'nvim-tree/nvim-web-devicons',
    lazy = true,
  },

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

  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = true,
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
    },
  },

  -- indent guides for Neovim
  {
    'lukas-reineke/indent-blankline.nvim',
    opts = {
      indent = {
        char = '│',
        tab_char = '│',
      },
      scope = { show_start = false, show_end = false },
      exclude = {
        filetypes = {
          'help',
          'alpha',
          'dashboard',
          'neo-tree',
          'Trouble',
          'trouble',
          'lazy',
          'mason',
          'notify',
          'toggleterm',
          'lazyterm',
        },
      },
    },
    main = 'ibl',
  },

  {
    'nvimdev/dashboard-nvim',
    lazy = false,
    config = function()
      local logo = [[
██████╗ ██╗    ██╗██╗  ██╗███╗   ███╗ █████╗ ██████╗
██╔══██╗██║    ██║╚██╗██╔╝████╗ ████║██╔══██╗██╔══██╗
██████╔╝██║ █╗ ██║ ╚███╔╝ ██╔████╔██║███████║██║  ██║
██╔══██╗██║███╗██║ ██╔██╗ ██║╚██╔╝██║██╔══██║██║  ██║
██║  ██║╚███╔███╔╝██╔╝ ██╗██║ ╚═╝ ██║██║  ██║██████╔╝
╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═════╝
]]

      logo = string.rep('\n', 8) .. logo .. '\n\n'

      require('dashboard').setup({
        config = {
          header = vim.split(logo, '\n'),
          shortcut = {
            {
              desc = '  Recently',
              action = 'Telescope oldfiles',
              key = 'o',
            },
            {
              desc = '  Files',
              action = 'Telescope find_files find_command=rg,--hidden,--files',
              key = 'f',
            },
            {
              desc = '  Browser',
              action = 'Telescope file_browser',
              key = 'b',
            },
            {
              desc = '  Grep',
              action = 'Telescope live_grep',
              key = 'g',
            },
          },
          footer = {},
        },
      })
    end,
  },
}
