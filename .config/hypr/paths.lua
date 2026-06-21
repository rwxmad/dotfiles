-- Shared path constants.
-- Lua files loaded with require() have separate local scopes, so modules that
-- need these paths import this table instead of repeating os.getenv() lookups.

local home = os.getenv('HOME')

return {
  home = home,
  config_home = os.getenv('XDG_CONFIG_HOME') or (home .. '/.config'),
  state_home = os.getenv('XDG_STATE_HOME') or (home .. '/.local/state'),
}
