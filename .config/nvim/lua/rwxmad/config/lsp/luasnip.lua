require('luasnip').config.setup({
  history = false,
})

-- Loading any vscode snippets from plugins
require('luasnip.loaders.from_vscode').lazy_load()

-- Allow jsx and tsx to use js snippets
require('luasnip').filetype_extend('javascript', { 'javascriptreact', 'typescriptreact', 'jsdoc' })

-- Mappins to move around inside snippets
vim.keymap.set('i', '<C-j>', '<CMD>lua require("luasnip").jump(1)<CR>')
vim.keymap.set('i', '<C-k>', '<CMD>lua require("luasnip").jump(-1)<CR>')
vim.keymap.set('s', '<C-j>', '<CMD>lua require("luasnip").jump(1)<CR>')
vim.keymap.set('s', '<C-k>', '<CMD>lua require("luasnip").jump(-1)<CR>')
