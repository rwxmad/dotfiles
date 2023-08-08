require('telescope').setup({
  pickers = {
    find_files = {
      find_command = { 'rg', '--files', '--hidden', '--glob', '!.git/*' },
      file_ignore_patterns = { '.git/' },
    },
  },
  extensions = {
    file_browser = {
      hidden = true,
      grouped = true,
      theme = 'dropdown',
      previewer = false,
      initial_mode = 'normal',
    },
  },
  defaults = {
    prompt_prefix = '  ',
  },
})

-- Extensions
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
require('telescope').load_extension('neoclip')
