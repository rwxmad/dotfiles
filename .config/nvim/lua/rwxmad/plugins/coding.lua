return {
  -- auto pairs
  {
    'echasnovski/mini.pairs',
    event = 'VeryLazy',
    opts = {
      mappings = {
        ['`'] = { action = 'closeopen', pair = '``', neigh_pattern = '[^\\`].', register = { cr = false } },
      },
    },
  },
  -- comments
  {
    'folke/ts-comments.nvim',
    event = 'VeryLazy',
    opts = {},
    enabled = vim.fn.has('nvim-0.10') == 1,
  },
}
