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

db.custom_header = lines -- type can be nil,table or function(must be return table in function)
-- db.custom_footer        -- type can be nil,table or function(must be return table in function)
-- db.preview_file_Path    -- string or function type that mean in function you can dynamic generate height width
-- db.preview_file_height  -- number type
-- db.preview_file_width   -- number type
-- db.preview_command      -- string type (can be ueberzug which only work in linux)
-- db.confirm_key          -- string type key that do confirm in center select
-- db.hide_statusline      -- boolean default is true.it will hide statusline in dashboard buffer and auto open in other buffer
-- db.hide_tabline         -- boolean default is true.it will hide tabline in dashboard buffer and auto open in other buffer
-- db.hide_winbar          -- boolean default is true.it will hide the winbar in dashboard buffer and auto open in other buffer
-- db.session_directory    -- string type the directory to store the session file
-- db.header_pad           -- number type default is 1
-- db.center_pad           -- number type default is 1
-- db.footer_pad           -- number type default is 1

db.custom_center = {
  {
    icon = '  ',
    desc = 'Recently opened files                   ',
    action = 'Telescope oldfiles',
    shortcut = 'SPC f o',
  },
  {
    icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f',
  },
  {
    icon = '  ',
    desc = 'File Browser                            ',
    action = 'Telescope file_browser',
    shortcut = 'SPC f b',
  },
  {
    icon = '  ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
    shortcut = 'SPC f g',
  },
}
