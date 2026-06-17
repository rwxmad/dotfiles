return {
  primary_monitor = 'eDP-1',
  secondary_monitor = 'DP-1',

  system_theme = 'Material-Green-Dark-Darker',
  cursor_theme = 'Bibata-Modern-Classic',
  icon_theme = 'Papirus-Dark',
  cursor_size = 16,
  dpi_scale = 1,
  text_scale = 1,

  terminal = 'ghostty',
  browser = 'helium-browser',
  launcher = 'launch-walker',
  file_manager = 'launch-or-focus-tui yazi',
  bluetooth = 'launch-or-focus-tui bluetui',
  clipboard = os.getenv('HOME') .. '/.config/rofi/scripts/cliphist/run',
  web_search = os.getenv('HOME') .. '/.config/rofi/scripts/web-search.sh',

  meh = 'CONTROL SHIFT ALT',
  mod = 'SUPER',
}
