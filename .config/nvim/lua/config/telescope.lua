require('telescope').setup {
  extensions = {
    file_browser = {},
  }
}

-- Extensions

require('telescope').load_extension 'file_browser'
