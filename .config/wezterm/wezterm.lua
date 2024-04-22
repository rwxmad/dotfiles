local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.automatically_reload_config = true

config.front_end = "WebGpu"

-- Window
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95
config.window_padding = {
  left = 2,
  right = 2,
  top = 2,
  bottom = 2,
}

config.hide_tab_bar_if_only_one_tab = true

-- Font
-- TODO: try to change font, to display like in alacritty
config.font = wezterm.font({ family = "BlexMono Nerd Font", weight = "Medium" })
config.font_rules = {
  {
    intensity = "Bold",
    font = wezterm.font("BlexMono Nerd Font", { weight = "Bold" }),
  },
  {
    intensity = "Bold",
    italic = true,
    font = wezterm.font("BlexMono Nerd Font", { weight = "Bold", italic = true }),
  },
  {
    italic = true,
    font = wezterm.font("BlexMono Nerd Font", { weight = "Medium", italic = true }),
  },
  {
    intensity = "Half",
    font = wezterm.font("BlexMono Nerd Font", { weight = "Bold", stretch = "Normal" }),
  },
  {
    intensity = "Half",
    italic = true,
    font = wezterm.font("BlexMono Nerd Font", { weight = "Bold", stretch = "Normal", italic = true }),
  },
  {
    intensity = "Half",
    italic = false,
    font = wezterm.font("BlexMono Nerd Font", { weight = "Bold", stretch = "Normal" }),
  },
}

config.font_size = 12.0

-- config.freetype_load_target = "Light"

-- Colorscheme
config.color_scheme_dirs = { os.getenv("HOME") .. "/.config/wezterm/colors" }
config.color_scheme = "Solarized"

config.bold_brightens_ansi_colors = true

return config
