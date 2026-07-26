-- Connects runtime parts, that write scripts to
-- ~/.local/state/hypr/toggles/*.lua (for example, disable lid w/ connected external monitor)
-- reload = true - `hyprctl reload`

local paths = require('paths')
local require_all = require('require_all')

local toggles_dir = paths.state_home .. '/hypr/toggles'
package.path = toggles_dir .. '/?.lua;' .. package.path

require_all.files(toggles_dir, nil, { reload = true })
