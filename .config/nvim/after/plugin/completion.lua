vim.o.completeopt = 'menuone,noselect'

local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },

  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = true })
  },
  -- lspkind
  formatting = {
      format = lspkind.cmp_format({with_text = true, maxwidth = 50})
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  },
}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig').cssls.setup {
  capabilities = capabilities,
}

require('nvim-autopairs.completion.cmp').setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
  auto_select = true, -- automatically select the first item
  insert = false, -- use insert confirm behavior instead of replace
  map_char = { -- modifies the function or method delimiter by filetypes
    all = '(',
    tex = '{'
  }
})

