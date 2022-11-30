require('telescope').setup({
  pickers = {
    find_files = {
      find_command = { 'rg', '--files', '--hidden', '--glob', '!.git/*' },
    },
  },
  extensions = {
    file_browser = {
      hidden = true,
    },
  },
  defaults = {
    prompt_prefix = ' ',
  },
})

-- Extensions
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
require('telescope').load_extension('neoclip')
