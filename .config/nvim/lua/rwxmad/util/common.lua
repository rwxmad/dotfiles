local M = {}
local ls = require('luasnip')

local s = ls.snippet
local i = ls.insert_node

local fmt = require('luasnip.extras.fmt').fmt

-- NOTE: add snippets with one node
function M.add_snippet(lang, trigger, fmt_string)
  ls.add_snippets(lang, {
    s(trigger, fmt(fmt_string, { i(0) })),
  })
end

return M
