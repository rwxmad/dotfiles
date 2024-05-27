return {
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

      local icons = require('rwxmad.defaults').icons

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
