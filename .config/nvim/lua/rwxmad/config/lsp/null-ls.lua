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
      nls.builtins.formatting.prettierd, -- Prettier
      nls.builtins.formatting.stylelint, -- Stylelint
      nls.builtins.formatting.stylua,    -- Lua

      -- -------------------------------------------------------------------------------------------------
      -- Diagnostics
      -- -------------------------------------------------------------------------------------------------
      nls.builtins.diagnostics.stylelint,
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
