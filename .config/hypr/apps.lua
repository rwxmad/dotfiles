-- Load every per-application rule file under hypr/apps/ in sorted order.
-- Drop a new <appname>.lua into that folder and it gets picked up automatically.
local paths = require('paths')
local require_all = require('require_all')

require_all.files(paths.config_home .. '/hypr/apps', 'apps')
