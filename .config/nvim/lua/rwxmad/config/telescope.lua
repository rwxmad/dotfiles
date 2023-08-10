local fb_actions = require('telescope').extensions.file_browser.actions

require('telescope').setup({
  pickers = {
    find_files = {
      find_command = { 'rg', '--files', '--hidden', '--glob', '!.git/*' },
      file_ignore_patterns = { '.git/', 'node_modules' },
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
  defaults = {
    prompt_prefix = '  ',
  },
})

-- Extensions
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
require('telescope').load_extension('media_files')
require('telescope').load_extension('neoclip')
