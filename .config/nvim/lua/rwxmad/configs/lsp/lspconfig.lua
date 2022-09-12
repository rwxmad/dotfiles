local lspconfig = require('lspconfig')
local utils = require('rwxmad.configs.lsp.utils')
require('rwxmad.configs.lsp.diagnostics').setup()

-- Common capabilities including lsp snippets and autocompletion
local capabilities = utils.capabilities()

local function on_attach(client, bufnr)
  require('rwxmad.configs.lsp.formatting').setup(client, bufnr)
  utils.mappings(bufnr)
end

local flags = {
  allow_incremental_sync = true,
  debounce_text_changes = 150,
}

local servers = {
  html = {},
  cssls = {},
  tsserver = {},
  rust_analyzer = {
    settings = {
      ['rust-analyzer'] = {
        cargo = {
          allFeatures = true,
        },
        checkOnSave = {
          allFeatures = true,
          command = 'clippy',
        },
        procMacro = {
          ignored = {
            ['async-trait'] = { 'async_trait' },
            ['napi-derive'] = { 'napi' },
            ['async-recursion'] = { 'async_recursion' },
          },
        },
      },
    },
  },
  emmet_ls = {},
  jsonls = {},
  sumneko_lua = {
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
        },
        diagnostics = {
          globals = { 'vim' },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file('', true),
        },
        telemetry = {
          enable = false,
        },
      },
    },
  },
  pyright = {},
  gopls = {},
  vuels = {},
  bashls = {},
}

local options = {
  flags = flags,
  capabilities = capabilities,
  on_attach = on_attach,
}

for server, opts in pairs(servers) do
  opts = vim.tbl_deep_extend('force', {}, options, opts or {})
  if server == 'tsserver' then
    require('typescript').setup({ server = opts })
  elseif server == 'rust_analyzer' then
    require('rust-tools').setup({ server = opts })
  else
    lspconfig[server].setup(opts)
  end
end

-- null-ls
require('rwxmad.configs.lsp.null-ls').setup({
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
})
