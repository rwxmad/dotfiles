vim.lsp.set_log_level('debug')

local lspconfig = require('lspconfig')
local protocol = require('vim.lsp.protocol')

-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Snippets directory
vim.g.vsnip_snippet_dir = vim.fn.expand('~/.config/nvim/snippets/')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- Formatting
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'gopls', 'tailwindcss', 'cssls', 'html', 'vuels', 'bashls' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

-- nvim-web-devicons
require('nvim-web-devicons').setup {
 -- your personnal icons can go here (to override)
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = '',
    color = '#428850',
    name = 'Zsh'
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}

-- nvim-autopairs
require('nvim-autopairs').setup({
  disable_filetype = { 'TelescopePrompt' , 'vim' },
  fast_wrap = {
    map = '<M-e>',
    chars = { '{', '[', '(', '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
    offset = 0, -- Offset from pattern match
    end_key = '$',
    keys = 'qwertyuiopzxcvbnmasdfghjkl',
    check_comma = true,
    hightlight = 'Search'
  },
})

-- tsserver config
lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  -- Needed for inlayHints. Merge this table with your settings or copy
  -- it from the source if you want to add your own init_options.
  init_options = require("nvim-lsp-ts-utils").init_options,
  --
  on_attach = function(client, bufnr)
      local ts_utils = require("nvim-lsp-ts-utils")

      -- defaults
      ts_utils.setup({
          debug = false,
          disable_commands = false,
          enable_import_on_completion = false,

          -- import all
          import_all_timeout = 5000, -- ms
          -- lower numbers = higher priority
          import_all_priorities = {
              same_file = 1, -- add to existing import statement
              local_files = 2, -- git files or files with relative path markers
              buffer_content = 3, -- loaded buffer content
              buffers = 4, -- loaded buffer names
          },
          import_all_scan_buffers = 100,
          import_all_select_source = false,

          -- filter diagnostics
          filter_out_diagnostics_by_severity = {},
          filter_out_diagnostics_by_code = {},

          -- inlay hints
          auto_inlay_hints = true,
          inlay_hints_highlight = "Comment",

          -- update imports on file move
          update_imports_on_move = false,
          require_confirmation_on_move = false,
          watch_dir = nil,
      })

      -- required to fix code action ranges and filter diagnostics
      ts_utils.setup_client(client)

      -- no default maps, so you may want to define some here
      local opts = { silent = true }
      vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", opts)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", opts)
  end,
})

-- eslint
lspconfig.eslint.setup {
  on_attach = function(client)
    -- neovim's LSP client does not currently support dynamic capabilities registration, so we need to set
    -- the resolved capabilities of the eslint server ourselves!
    client.resolved_capabilities.document_formatting = true
  end,
  settings = {
    format = { enable = true },
  },
}

-- stylelint-lsp
lspconfig.stylelint_lsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    stylelintplus = {
      autoFixOnFormat = true,
      autoFixOnSave = true,
      validateOnSave = true,
      validateOnType = true
    }
  }
})

-- rust-tools
require('rust-tools').setup({
    server = {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          -- rust_analyzer config
            ['rust-analyzer'] = {
                assist = {
                    importGranularity = 'module',
                    importPrefix = 'by_self',
                },
                checkOnSave = {
                    command = 'clippy',
                },
                cargo = {
                    loadOutDirsFromCheck = true
                },
                procMacro = {
                    enable = true
                },
            }
        }
    }
})

-- diagnosticls
lspconfig.diagnosticls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'markdown' },
  init_options = {
    formatters = {
      prettier = {
        command = 'prettier',
        args = { '--stdin-filepath', '%filename' }
      },
      stylelint = {
        command = 'stylelint',
        args = { '--stdin', '--stdin-filename', '%filename', '--fix'}
      }
    },
    formatFiletypes = {
      css = {'prettier', 'stylelint'},
      json = 'prettier',
      scss = {'prettier', 'stylelint'},
      less = {'prettier', 'stylelint'},
      markdown = 'prettier'
    }
  }
}

