if [[ -z $WAYLAND_DISPLAY && ${XDG_VTNR:-0} -eq 1 ]]; then
  exec start-hyprland
fi

# npm global packages path
export PATH="$HOME/.local/npm-global/bin:$PATH"
