vim.o.completeopt = 'menuone,noselect'

local cmp = require "cmp"
cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },

  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = true })
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
  },
}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
