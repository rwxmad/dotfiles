local signs = require('rwxmad.config.lsp.diagnostics').signs

signs = {
  error = signs.Error,
  warning = signs.Warn,
  info = signs.Info,
  hint = signs.Hint,
}

local severities = {
  'error',
  'warning',
  -- "info",
  -- "hint",
}

require('bufferline').setup({
  options = {
    numbers = function(opts)
      return string.format('%s', opts.ordinal, opts.raise(opts.ordinal))
    end,
    show_close_icon = false,
    diagnostics = 'nvim_lsp',
    always_show_bufferline = true,
    separator_style = 'thick',
    diagnostics_indicator = function(_, _, diag)
      local s = {}
      for _, severity in ipairs(severities) do
        if diag[severity] then
          table.insert(s, signs[severity] .. diag[severity])
        end
      end
      return table.concat(s, ' ')
    end,
    offsets = {
      {
        filetype = 'neo-tree',
        text = 'File Explorer',
        highlight = 'Directory',
        separator = true, -- use a "true" to enable the default, or set your own character
      },
    },
  },
})
