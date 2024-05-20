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
    opts = function(_, opts)
      local vue_typescript_plugin = require('mason-registry').get_package('vue-language-server'):get_install_path()
        .. '/node_modules/@vue/language-server'
        .. '/node_modules/@vue/typescript-plugin'

      opts.inlay_hints.enabled = true

      opts.servers = vim.tbl_deep_extend('force', opts.servers, {
        volar = {},
        -- Volar 2.0 has discontinued their "take over mode" which in previous version provided support for typescript in vue files.
        -- The new approach to get typescript support involves using the typescript language server along side volar.
        tsserver = {
          single_file_support = true,
          init_options = {
            plugins = {
              -- Use typescript language server along with vue typescript plugin
              {
                name = '@vue/typescript-plugin',
                location = vue_typescript_plugin,
                languages = { 'javascript', 'typescript', 'vue' },
              },
            },
          },
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
            'javascript.jsx',
            'typescript',
            'typescriptreact',
            'typescript.tsx',
            'vue',
          },
        },
        html = {},
        cssls = {},
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
        bashls = {},
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
