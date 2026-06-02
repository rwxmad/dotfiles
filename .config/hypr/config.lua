return {
  primary_monitor   = 'eDP-1',
  secondary_monitor = 'DP-1',

  system_theme = 'Gruvbox-Green-Dark',
  cursor_theme = 'Bibata-Modern-Classic',
  icon_theme   = 'Papirus-Dark',
  cursor_size  = 16,
  dpi_scale    = 1,
  text_scale   = 1,

  terminal     = 'ghostty',
  browser      = 'helium-browser',
  launcher     = 'launch-walker',
  file_manager = 'foot --title=yazi -e yazi',
  bluetooth    = 'ghostty --title=bluetui -e bluetui',
  clipboard    = os.getenv('HOME') .. '/.config/rofi/scripts/cliphist/run',
  web_search   = os.getenv('HOME') .. '/.config/rofi/scripts/web-search.sh',

  meh = 'CONTROL SHIFT ALT',
  mod = 'SUPER',
}
