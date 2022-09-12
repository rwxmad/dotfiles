local M = {}

M.autoformat = true

function M.format()
  if M.autoformat then
    if vim.lsp.buf.format then
      vim.lsp.buf.format()
    else
      vim.lsp.buf.formatting()
    end
  end
end

function M.setup(client, buf)
  local ft = vim.api.nvim_buf_get_option(buf, 'filetype')
  local nls = require('rwxmad.configs.lsp.null-ls')

  local enable = false
  if nls.has_formatter(ft) then
    enable = client.name == 'null-ls'
  else
    enable = not (client.name == 'null-ls')
  end

  if client.name == 'tsserver' then
    enable = false
  end

  client.server_capabilities.documentFormattingProvider = enable
  -- Format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.cmd([[
      augroup LspFormat
        autocmd! * <buffer>
        autocmd BufWritePre <buffer> lua require("rwxmad.configs.lsp.formatting").format()
      augroup END
    ]])
  end
end

return M
