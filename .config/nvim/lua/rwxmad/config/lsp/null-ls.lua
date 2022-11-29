local M = {}

function M.setup(options)
  local nls = require('null-ls')

  local formatting = nls.builtins.formatting
  local diagnostics = nls.builtins.diagnostics
  local code_actions = nls.builtins.code_actions

  nls.setup({
    sources = {
      -- -------------------------------------------------------------------------------------------------
      -- Formatting
      -- -------------------------------------------------------------------------------------------------
      formatting.trim_whitespace.with({
        filetypes = { 'text', 'zsh', 'toml', 'make', 'conf', 'tmux' },
      }),
      -- NOTE:
      -- 1. both needs to be enabled to so prettier can apply eslint fixes
      -- 2. prettierd should come first to prevent occassional race condition
      formatting.prettierd, -- Prettier
      formatting.eslint_d, -- Eslint
      formatting.stylelint, -- Stylelint
      formatting.stylua, -- Lua

      -- -------------------------------------------------------------------------------------------------
      -- Diagnostics
      -- -------------------------------------------------------------------------------------------------
      diagnostics.eslint_d,
      diagnostics.stylelint,
      diagnostics.shellcheck,
      diagnostics.luacheck.with({
        extra_args = { '--globals', 'vim', '--std', 'luajit' },
      }),

      -- -------------------------------------------------------------------------------------------------
      -- Code actions
      -- -------------------------------------------------------------------------------------------------
      code_actions.eslint_d,
      code_actions.shellcheck,
    },
    on_attach = options.on_attach,
  })
end

function M.has_formatter(ft)
  local sources = require('null-ls.sources')
  local available = sources.get_available(ft, 'NULL_LS_FORMATTING')
  return #available > 0
end

return M
