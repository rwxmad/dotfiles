require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "comment",
    "bash",
    "make",
    "go",
    "rust",
    "javascript",
    "jsdoc",
    "json",
    "json5",
    "yaml",
    "toml",
    "html",
    "pug",
    "css",
    "scss",
    "dockerfile",
    "lua",
    "python",
    "regex",
    "tsx",
    "typescript",
    "vue",
    "vim"
  },
  refactor = {
    smart_rename = { enable = true, keymaps = { smart_rename = 'gsr' } },
    highlight_definitions = { enable = false },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = 'gnd',
        -- list_definitions = "gnD",
        -- list_definitions_toc = "gO",
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-#>",
      },
    },
    -- highlight_current_scope = { enable = true },
  },
  autotag = {
    enable = true
  },
}

local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.tsx.filetype_to_parsename = { 'javascript', 'typescript.tsx' }

