return {
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

  {
    'akinsho/bufferline.nvim',
    commit = vim.fn.has('nvim-0.10') == 0 and '73540cb95f8d95aa1af3ed57713c6720c78af915' or nil,
    event = 'VeryLazy',
    opts = {
      options = {
      -- stylua: ignore
      close_command = function(n) LazyVim.ui.bufremove(n) end,
      -- stylua: ignore
      right_mouse_command = function(n) LazyVim.ui.bufremove(n) end,
        diagnostics = 'nvim_lsp',
        always_show_bufferline = false,
        diagnostics_indicator = function(_, _, diag)
          local icons = require('lazyvim.config').icons.diagnostics
          local ret = (diag.error and icons.Error .. diag.error .. ' ' or '')
            .. (diag.warning and icons.Warn .. diag.warning or '')
          return vim.trim(ret)
        end,
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'Neo-tree',
            highlight = 'Directory',
            text_align = 'left',
            separator = true,
          },
        },
      },
    },
    config = function(_, opts)
      require('bufferline').setup(opts)
      -- Fix bufferline when restoring a session
      vim.api.nvim_create_autocmd({ 'BufAdd', 'BufDelete' }, {
        callback = function()
          vim.schedule(function()
            pcall(nvim_bufferline)
          end)
        end,
      })
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    init = function()
      vim.g.lualine_laststatus = vim.o.laststatus
      if vim.fn.argc(-1) > 0 then
        -- set an empty statusline till lualine loads
        vim.o.statusline = ' '
      else
        vim.o.laststatus = 3
      end
    end,
    opts = function()
      -- PERF: we don't need this lualine require madness 🤷
      local lualine_require = require('lualine_require')
      lualine_require.require = require

      local icons = require('lazyvim.config').icons

      vim.o.laststatus = vim.g.lualine_laststatus

      return {
        options = {
          icons_enabled = true,
          theme = 'solarized_dark',
          section_separators = '',
          component_separators = '',
          disabled_filetypes = {},
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = {
            { 'branch', icon = '' },
            { 'diff', symbols = { added = ' ', modified = '柳', removed = ' ' } },
          },
          lualine_c = {
            {
              'filename',
              file_status = true, -- displays file status (readonly status, modified status)
              path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
            },
          },
          lualine_x = {
            {
              'diagnostics',
              sources = { 'nvim_lsp' },
              symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
            },
            'encoding',
            'filetype',
          },
          lualine_y = {
            { 'fileformat' },
            { 'progress' },
          },
          lualine_z = { 'location' },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {
            {
              'filename',
              file_status = true, -- displays file status (readonly status, modified status)
              path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
            },
          },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        extensions = { 'quickfix', 'nvim-tree' },
      }
    end,
  },
}
