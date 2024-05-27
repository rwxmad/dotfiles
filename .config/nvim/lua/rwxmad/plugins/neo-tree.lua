return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    cmd = 'Neotree',
    keys = {
      {
        '<leader>fE',
        function()
          require('neo-tree.command').execute({ toggle = true, dir = vim.uv.cwd() })
        end,
        desc = 'Explorer NeoTree (cwd)',
      },
      { '<leader>e', '<leader>fe', desc = 'Explorer NeoTree (Root Dir)', remap = true },
      { '<leader>E', '<leader>fE', desc = 'Explorer NeoTree (cwd)', remap = true },
      {
        '<leader>ge',
        function()
          require('neo-tree.command').execute({ source = 'git_status', toggle = true })
        end,
        desc = 'Git Explorer',
      },
      {
        '<leader>be',
        function()
          require('neo-tree.command').execute({ source = 'buffers', toggle = true })
        end,
        desc = 'Buffer Explorer',
      },
    },
    opts = {
      close_if_last_window = true,
      enable_diagnostics = false,
      content_layout = 'center',
      source_selector = {
        winbar = true,
        statusline = false,
      },
      default_component_configs = {
        indent = { padding = 0 },
      },
      window = {
        width = 30,
        mappings = {
          ['<space>'] = false, -- disable space until we figure out which-key disabling
          o = 'open',
          H = 'prev_source',
          L = 'next_source',
        },
      },
      filesystem = {
        follow_current_file = true,
        hijack_netrw_behavior = 'open_current',
        use_libuv_file_watcher = true,
        window = { mappings = { h = 'toggle_hidden' } },
        filtered_items = {
          hide_dotfiles = false,
        },
      },
      event_handlers = {
        {
          event = 'neo_tree_buffer_enter',
          handler = function(_)
            vim.opt_local.signcolumn = 'auto'
          end,
        },
      },
    },
  },
}
