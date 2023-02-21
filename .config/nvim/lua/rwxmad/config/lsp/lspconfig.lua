local lspconfig = require('lspconfig')
local utils = require('rwxmad.config.lsp.utils')
require('rwxmad.config.lsp.diagnostics').setup()

-- Common capabilities including lsp snippets and autocompletion
local capabilities = utils.capabilities()

local function on_attach(client, bufnr)
  require('rwxmad.config.lsp.formatting').setup(client, bufnr)
  utils.mappings(bufnr)
  if client.server_capabilities.documentSymbolProvider then
    require('nvim-navic').attach(client, bufnr)
  end
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
  tailwindcss = {},
  jsonls = {},
  lua_ls = {
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
  vuels = {},
  bashls = {},
}

local options = {
  flags = flags,
  capabilities = capabilities,
  on_attach = on_attach,
}

local server_list = {}

for server, opts in pairs(servers) do
  opts = vim.tbl_deep_extend('force', {}, options, opts or {})
  table.insert(server_list, server)
  if server == 'tsserver' then
    require('typescript').setup({ server = opts })
  elseif server == 'rust_analyzer' then
    require('rust-tools').setup({ server = opts })
  else
    lspconfig[server].setup(opts)
  end
end

-- mason-lspconfig
require('mason-lspconfig').setup({
  ensure_installed = server_list,
  automatic_installation = true,
})

-- null-ls
require('rwxmad.config.lsp.null-ls').setup({
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
})
