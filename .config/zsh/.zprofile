if [[ -z $WAYLAND_DISPLAY && ${XDG_VTNR:-0} -eq 1 ]]; then
  exec Hyprland
fi
