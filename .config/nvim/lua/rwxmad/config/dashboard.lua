local db = require('dashboard')

local logo = [[
██████╗ ██╗    ██╗██╗  ██╗███╗   ███╗ █████╗ ██████╗ 
██╔══██╗██║    ██║╚██╗██╔╝████╗ ████║██╔══██╗██╔══██╗
██████╔╝██║ █╗ ██║ ╚███╔╝ ██╔████╔██║███████║██║  ██║
██╔══██╗██║███╗██║ ██╔██╗ ██║╚██╔╝██║██╔══██║██║  ██║
██║  ██║╚███╔███╔╝██╔╝ ██╗██║ ╚═╝ ██║██║  ██║██████╔╝
╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═════╝ 
]]

local lines = {}
for line in logo:gmatch('[^\n]+') do
  table.insert(lines, line)
end

db.setup({
  config = {
    header = lines,
    shortcut = {
      {
        desc = '  Recently',
        action = 'Telescope oldfiles',
        key = 'o',
      },
      {
        desc = '  Files',
        action = 'Telescope find_files find_command=rg,--hidden,--files',
        key = 'f',
      },
      {
        desc = '  Browser',
        action = 'Telescope file_browser',
        key = 'b',
      },
      {
        desc = '  Grep',
        action = 'Telescope live_grep',
        key = 'g',
      },
    },
    footer = {},
  },
})
