return {
  -- comments
  {
    'folke/ts-comments.nvim',
    event = 'VeryLazy',
    opts = {},
    enabled = vim.fn.has('nvim-0.10') == 1,
  },
}
