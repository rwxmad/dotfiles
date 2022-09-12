require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'comment',
    'bash',
    'make',
    'go',
    'rust',
    'javascript',
    'jsdoc',
    'json',
    'yaml',
    'toml',
    'html',
    'pug',
    'css',
    'scss',
    'dockerfile',
    'lua',
    'python',
    'regex',
    'tsx',
    'typescript',
    'vue',
    'vim',
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = false,
  },
  -- windwp/nvim-ts-autotag
  autotag = {
    enable = true,
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25,
    persist_queries = false,
  },
  refactor = {
    -- highlight_definitions = { enable = true },
    -- highlight_current_scope = { enable = false },
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
})
