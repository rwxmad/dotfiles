require('luasnip.session.snippet_collection').clear_snippets('javascript')
require('luasnip.session.snippet_collection').clear_snippets('typescript')
local common = require('rwxmad.util.common')

-- Log
local console_log = 'console.log({})'
--
-- JavaScript
common.add_snippet('javascript', 'log', console_log)

-- Typescript
common.add_snippet('typescript', 'log', console_log)
