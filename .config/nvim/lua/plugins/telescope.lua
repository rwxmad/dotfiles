return {
  {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
      'nvim-telescope/telescope-file-browser.nvim',
      'nvim-telescope/telescope-media-files.nvim',
      'AckslD/nvim-neoclip.lua',
    },
    run = 'make',
    config = function()
      local fb_actions = require('telescope').extensions.file_browser.actions

      require('telescope').setup({
        defaults = {
          prompt_prefix = '  ',
        },
        pickers = {
          find_files = {
            find_command = { 'rg', '--files', '--hidden', '--glob', '!.git/*' },
            file_ignore_patterns = { '.git/', 'node_modules/' },
          },
        },
        extensions = {
          file_browser = {
            path = '%:p:h',
            cwd = vim.fn.expand('%:p:h'),
            hidden = true,
            grouped = true,
            theme = 'dropdown',
            previewer = false,
            initial_mode = 'normal',
            mappings = {
              ['n'] = {
                ['N'] = fb_actions.create,
                ['D'] = fb_actions.remove,
              },
            },
          },
          media_files = {
            filetypes = { 'png', 'webp', 'jpg', 'jpeg' },
            find_cmd = 'rg',
          },
        },
      })

      require('telescope').load_extension('fzf')
      require('telescope').load_extension('file_browser')
      require('telescope').load_extension('media_files')
      require('telescope').load_extension('neoclip')

      vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
      vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
      vim.keymap.set('n', '<leader>bg', '<cmd>Telescope current_buffer_fuzzy_find<CR>')
      vim.keymap.set('n', '<leader>fo', '<cmd>Telescope oldfiles<CR>')

      vim.keymap.set('n', '<leader>gr', '<cmd>Telescope lsp_references<CR>')

      vim.keymap.set('n', '<leader>fb', '<cmd>Telescope file_browser<CR>')
      vim.keymap.set('n', '<leader>fn', '<cmd>Telescope neoclip<CR>')
      vim.keymap.set('n', '<leader>fm', '<cmd>Telescope media_files<CR>')
    end,
  },

  { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
  { 'nvim-telescope/telescope-file-browser.nvim' },
  { 'nvim-telescope/telescope-media-files.nvim' },
  { 'AckslD/nvim-neoclip.lua' },
}
