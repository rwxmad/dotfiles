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
})

-- Extensions
require('telescope').load_extension('file_browser')
