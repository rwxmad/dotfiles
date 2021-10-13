require'nvim-treesitter.configs'.setup {
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
    "go",
    "javascript",
    "json",
    "yaml",
    "html",
    "css",
    "scss",
    "dockerfile",
    "lua",
    "python",
    "regex",
    "tsx",
    "typescript",
    "vue"
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
