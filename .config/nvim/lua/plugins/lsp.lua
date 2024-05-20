return {
  {
    'folke/neodev.nvim',
    opts = {
      debug = true,
    },
  },

  {
    'williamboman/mason.nvim',
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        'stylua',
        'selene',
        'luacheck',
        'shellcheck',
        'shfmt',
      })
    end,
  },

  {
    'neovim/nvim-lspconfig',
    event = 'LazyFile',
    dependencies = {
      { 'folke/neoconf.nvim', cmd = 'Neoconf', config = false, dependencies = { 'nvim-lspconfig' } },
      { 'folke/neodev.nvim', opts = {} },
      'mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    opts = {
      inlay_hints = {
        enabled = true,
      },
      -- add any global capabilities here
      capabilities = {},
      -- options for vim.lsp.buf.format
      -- `bufnr` and `filter` is handled by the LazyVim formatter,
      -- but can be also overridden when specified
      format = {
        formatting_options = nil,
        timeout_ms = nil,
      },
      servers = {
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
          },
          filetypes = {
            'javascript',
            'javascriptreact',
            'typescript',
            'typescriptreact',
            'vue',
          },
        },
        -- eslint = {
        --   -- TODO: finish this
        --   enable = true,
        --   format = { enable = true },
        --   autoFixOnSave = true,
        --   settings = {
        --     -- helps eslint find the eslintrc when it's placed in a subfolder instead of the cwd root
        --     workingDirectories = { mode = 'auto' },
        --   },
        -- },
        gopls = {},
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
      },
    },
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
