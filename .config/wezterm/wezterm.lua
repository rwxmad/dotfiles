local wezterm = require("wezterm")

local config = wezterm.config_builder()

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

config.freetype_load_target = "Light"

-- Solarized theme
config.colors = {
  foreground = "#708183",
  background = "#001217",
  cursor_bg = "#708183",
  cursor_border = "#708183",
  cursor_fg = "#001217",
  selection_bg = "#708183",
  selection_fg = "#001217",

  ansi = { "#002b36", "#dc322f", "#859900", "#b58900", "#268bd2", "#d33682", "#2aa198", "#eee8d5" },
  brights = { "#002b36", "#cb4b16", "#586e75", "#657b83", "#839496", "#6c71c4", "#93a1a1", "#fdf6e3" },
}
config.bold_brightens_ansi_colors = true

return config
