local U = {}

-- LSP servers capabilities w/ nvim-cmp
function U.capabilities()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  return require('cmp_nvim_lsp').default_capabilities(capabilities)
end

-- Creates LSP mappings
function U.mappings(buf)
  local opts = { noremap = true, silent = true, buffer = buf }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  -- vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  -- vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  -- vim.keymap.set('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  -- vim.keymap.set('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  -- vim.keymap.set('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  -- vim.keymap.set('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  -- vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  -- vim.keymap.set('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  -- vim.keymap.set('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  -- vim.keymap.set('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  -- vim.keymap.set('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  -- vim.keymap.set('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

return U
