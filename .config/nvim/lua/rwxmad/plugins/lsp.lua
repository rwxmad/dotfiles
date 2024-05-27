return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'folke/neodev.nvim',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      -- Autoformatting
      'stevearc/conform.nvim',
    },
    config = function()
      require('neodev').setup({
        -- library = {
        --   plugins = { "nvim-dap-ui" },
        --   types = true,
        -- },
      })

      local lspconfig = require('lspconfig')
      local capabilities = nil

      if pcall(require, 'cmp_nvim_lsp') then
        capabilities = require('cmp_nvim_lsp').default_capabilities()
      end

      local function on_attach(client, bufnr)
        if client.server_capabilities.inlayHintProvider then
          vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({}))
        end
      end

      local flags = {
        allow_incremental_sync = true,
        debounce_text_changes = 150,
      }

      local servers = {
        html = {},
        cssls = {},
        tsserver = {
          init_options = {
            plugins = {
              -- NOTE: for typescript + vue work
              {
                name = '@vue/typescript-plugin',
                -- location = '/usr/local/lib/node_modules/@vue/typescript-plugin',
                location = '/Users/rwxmad/.npm/lib/node_modules/@vue/typescript-plugin',
                languages = { 'javascript', 'typescript', 'vue' },
              },
            },
          },
          single_file_support = true,
          settings = {
            typescript = {
              inlayHints = {
                includeInlayParameterNameHints = 'literal',
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = false,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
            javascript = {
              inlayHints = {
                includeInlayParameterNameHints = 'all',
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
            completions = {
              completeFunctionCalls = true,
            },
          },
          filetypes = {
            'javascript',
            'javascriptreact',
            'typescript',
            'typescriptreact',
            'vue',
          },
        },
        eslint = {
          -- TODO: finish this
          enable = true,
          format = { enable = true },
          autoFixOnSave = true,
        },
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
              completion = {
                callSnippet = 'Replace',
              },
              workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
                checkThirdParty = false,
              },
              telemetry = {
                enable = false,
              },
              hint = {
                enable = true,
                arrayIndex = 'Disable',
              },
              format = {
                enable = true,
                defaultConfig = {
                  indent_style = 'space',
                  indent_size = '2',
                  continuation_indent_size = '2',
                },
              },
            },
          },
        },
        pyright = {},
        volar = {
          init_options = {
            vue = {
              hybridMode = true,
            },
          },
        },
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
        -- FIXME: remove or configure
        -- if server == 'tsserver' then
        --   require('typescript-tools').setup({
        --     on_attach = on_attach,
        --     filetypes = {
        --       'javascript',
        --       'javascriptreact',
        --       'typescript',
        --       'typescriptreact',
        --       'vue',
        --     },
        --     settings = {
        --       separate_diagnostic_server = true,
        --       tsserver_file_preferences = {
        --         includeInlayParameterNameHints = 'all',
        --         includeCompletionsForModuleExports = true,
        --         quotePreference = 'auto',
        --       },
        --       tsserver_plugins = {
        --         '@vue/typescript-plugin',
        --       },
        --     },
        --   })
        if server == 'rust_analyzer' then
        -- require('rust-tools').setup({ server = opts })
        else
          lspconfig[server].setup(opts)
        end
      end

      require('mason').setup()

      -- mason-lspconfig
      require('mason-lspconfig').setup({
        ensure_installed = server_list,
        automatic_installation = true,
      })

      local ensure_installed = {
        'stylua',
        'shfmt',
      }

      vim.list_extend(ensure_installed, servers)
      require('mason-tool-installer').setup({ ensure_installed = ensure_installed })

      -- Autoformatting Setup
      require('conform').setup({
        formatters_by_ft = {
          lua = { 'stylua' },
          javascript = { { 'prettierd', 'prettier' } },
          javascriptreact = { { 'prettierd', 'prettier' } },
          typescript = { { 'prettierd', 'prettier' } },
          typescriptreact = { { 'prettierd', 'prettier' } },
          vue = { { 'prettierd', 'prettier' } },
          python = { { 'ruff_fix', 'ruff_format', 'ruff_organize_imports' } },
          rust = { 'rustfmt' },
          ['_'] = { 'trim_whitespace' },
        },
      })

      vim.api.nvim_create_autocmd('BufWritePre', {
        callback = function(args)
          require('conform').format({
            bufnr = args.buf,
            lsp_fallback = true,
            quiet = true,
          })
        end,
      })
    end,
  },

  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({
        lightbulb = {
          enable = false,
        },
      })
    end,
  },
}
