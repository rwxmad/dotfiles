return {
  {
    'echasnovski/mini.nvim',
    config = function()
      require('mini.pairs').setup({
        mappings = {
          ['`'] = { action = 'closeopen', pair = '``', neigh_pattern = '[^\\`].', register = { cr = false } },
        },
      })
      require('mini.surround').setup()
    end,
  },
}
