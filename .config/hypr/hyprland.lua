local config = require('config')
require('hyprvars')

hl.env('EDITOR', 'nvim')
hl.env('AQ_DRM_DEVICES', '/dev/dri/nvidia-dgpu:/dev/dri/intel-igpu')
hl.env('LIBVA_DRIVER_NAME', 'nvidia')
hl.env('__GLX_VENDOR_LIBRARY_NAME', 'nvidia')
hl.env('NVD_BACKEND', 'direct')
hl.env('XDG_SESSION_TYPE', 'wayland')
hl.env('GBM_BACKEND', 'nvidia-drm')

hl.env('CLUTTER_BACKEND', 'wayland')
hl.env('GDK_BACKEND', 'wayland,x11,*')
hl.env('GDK_DPI_SCALE', config.dpi_scale)
hl.env('GDK_SCALE', config.dpi_scale)
hl.env('QT_AUTO_SCREEN_SCALE_FACTOR', config.dpi_scale)
hl.env('QT_QPA_PLATFORM', 'wayland;xcb')
hl.env('QT_QPA_PLATFORMTHEME', 'gtk3')
hl.env('QT_WAYLAND_DISABLE_WINDOWDECORATION', '1')
hl.env('SDL_VIDEODRIVER', 'wayland')
hl.env('GSK_RENDERER', 'ngl')

-- autostart
hl.on('hyprland.start', function()
  hl.exec_cmd('gsettings set org.gnome.desktop.interface gtk-theme ' .. config.system_theme)
  hl.exec_cmd('gsettings set org.gnome.desktop.interface icon-theme ' .. config.icon_theme)
  hl.exec_cmd('gsettings set org.gnome.desktop.interface cursor-theme ' .. config.cursor_theme)
  hl.exec_cmd('gsettings set org.gnome.desktop.interface text-scaling-factor ' .. config.text_scale)
  hl.exec_cmd('gsettings set org.gnome.desktop.interface cursor-size ' .. config.cursor_size)
  hl.exec_cmd('sleep 5 && gsettings set org.gnome.desktop.interface color-scheme prefer-dark')

  hl.exec_cmd('/usr/lib/mate-polkit/polkit-mate-authentication-agent-1')
  hl.exec_cmd('waybar')
  hl.exec_cmd('start-wallpaper')
  hl.exec_cmd('udiskie')
  hl.exec_cmd('swaync')
  hl.exec_cmd('hypridle')
  hl.exec_cmd('wl-clip-persist --clipboard regular')
  hl.exec_cmd('wl-paste --type text --watch cliphist store')
  hl.exec_cmd('wl-paste --type image --watch cliphist store')
  hl.exec_cmd(os.getenv('HOME') .. '/.config/hypr/scripts/monitor-hotplug.sh')

  -- apps (workspace assigned via window rules)
  hl.exec_cmd('uwsm-app -- ghostty -e tmux')
  hl.exec_cmd('uwsm-app -- ' .. config.browser)
  hl.exec_cmd('uwsm-app -- spotify')
  hl.exec_cmd('uwsm-app -- obsidian')
  -- hl.exec_cmd('uwsm-app -- inkscape')
  hl.exec_cmd('uwsm-app -- discord')
  hl.exec_cmd('uwsm-app -- thunderbird')
end)

for i = 1, 10 do
  hl.workspace_rule({ workspace = tostring(i), default = true, persistent = true })
end

-- ###############
-- ### GESTURE ###
-- ###############

-- # touchpad swipe with 3 fingers
hl.gesture({ fingers = 3, direction = 'horizontal', action = 'fullscreen' })

-- #############################
-- ### ENVIRONMENT VARIABLES ###
-- #############################

hl.env('XDG_CURRENT_DESKTOP', 'Hyprland')
hl.env('XDG_SESSION_DESKTOP', 'Hyprland')
hl.env('WLR_NO_HARDWARE_CURSORS', '1')

-- ##############
-- ### CURSOR ###
-- ##############

hl.env('HYPRCURSOR_SIZE', config.cursor_size)
hl.env('HYPRCURSOR_THEME', config.cursor_theme)
hl.env('XCURSOR_SIZE', config.cursor_size)
hl.env('XCURSOR_THEME', config.cursor_theme)

-- ###################
-- ### KEYBINDINGS ###
-- ###################

hl.bind(config.mod .. ' + Q', hl.dsp.window.close())
hl.bind(config.mod .. ' + return', hl.dsp.exec_cmd(config.terminal))
hl.bind(config.mod .. ' + SPACE', hl.dsp.exec_cmd(config.launcher))
hl.bind(config.mod .. ' + S', hl.dsp.exec_cmd(config.web_search))
hl.bind(config.mod .. ' + F', hl.dsp.window.fullscreen({ mode = 'fullscreen' }))
hl.bind(config.mod .. ' + P', hl.dsp.window.pseudo())
hl.bind(config.mod .. ' + E', hl.dsp.exec_cmd(config.file_manager))
hl.bind(config.mod .. ' + B', hl.dsp.exec_cmd(config.bluetooth))
hl.bind(config.mod .. ' + T', hl.dsp.window.float({ action = 'toggle' }))
hl.bind(config.mod .. ' + V', hl.dsp.exec_cmd(config.clipboard))
hl.bind(config.mod .. ' + ALT + L', hl.dsp.exec_cmd('hyprlock'))
hl.bind(config.mod .. ' + C', hl.dsp.exec_cmd('hyprpicker -a -f hex'))
hl.bind(config.mod .. ' + SHIFT + N', hl.dsp.exec_cmd('swaync-client -t -sw'))

-- Move focus
hl.bind(config.mod .. ' + H', hl.dsp.focus({ direction = 'l' }))
hl.bind(config.mod .. ' + J', hl.dsp.focus({ direction = 'd' }))
hl.bind(config.mod .. ' + K', hl.dsp.focus({ direction = 'u' }))
hl.bind(config.mod .. ' + L', hl.dsp.focus({ direction = 'r' }))
hl.bind(config.mod .. ' + left', hl.dsp.focus({ direction = 'l' }))
hl.bind(config.mod .. ' + right', hl.dsp.focus({ direction = 'r' }))
hl.bind(config.mod .. ' + up', hl.dsp.focus({ direction = 'u' }))
hl.bind(config.mod .. ' + down', hl.dsp.focus({ direction = 'd' }))

-- Move windows
hl.bind(config.mod .. ' + SHIFT + H', hl.dsp.window.swap({ direction = 'l' }))
hl.bind(config.mod .. ' + SHIFT + J', hl.dsp.window.swap({ direction = 'd' }))
hl.bind(config.mod .. ' + SHIFT + K', hl.dsp.window.swap({ direction = 'u' }))
hl.bind(config.mod .. ' + SHIFT + L', hl.dsp.window.swap({ direction = 'r' }))

-- Workspaces
for workspace = 1, 10 do
  local key = 'code:' .. tostring(workspace + 9)
  hl.bind(
    'SUPER + ' .. key,
    hl.dsp.focus({ workspace = tostring(workspace) }),
    { desc = 'Switch to workspace ' .. workspace }
  )
  hl.bind(
    'SUPER + ALT + ' .. key,
    hl.dsp.window.move({ workspace = tostring(workspace) }),
    { desc = 'Move window to workspace ' .. workspace }
  )
  hl.bind(
    'SUPER + SHIFT + ALT + ' .. key,
    hl.dsp.window.move({ workspace = tostring(workspace), follow = false }),
    { desc = 'Move window silently to workspace ' .. workspace }
  )
end

-- Audio
hl.bind(
  'XF86AudioRaiseVolume',
  hl.dsp.exec_cmd('wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+'),
  { locked = true, repeating = true }
)
hl.bind(
  'XF86AudioLowerVolume',
  hl.dsp.exec_cmd('wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-'),
  { locked = true, repeating = true }
)
hl.bind(
  'XF86AudioMute',
  hl.dsp.exec_cmd('wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle'),
  { locked = true, repeating = true }
)
hl.bind(
  'XF86AudioMicMute',
  hl.dsp.exec_cmd('wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle'),
  { locked = true, repeating = true }
)

-- Media
hl.bind('XF86AudioPlay', hl.dsp.exec_cmd('playerctl play-pause'), { locked = true })
hl.bind('XF86AudioNext', hl.dsp.exec_cmd('playerctl next'), { locked = true })
hl.bind('XF86AudioPrev', hl.dsp.exec_cmd('playerctl previous'), { locked = true })

-- Brightness
hl.bind('XF86MonBrightnessUp', hl.dsp.exec_cmd('brightnessctl -e4 -n2 set 5%+'), { locked = true, repeating = true })
hl.bind('XF86MonBrightnessDown', hl.dsp.exec_cmd('brightnessctl -e4 -n2 set 5%-'), { locked = true, repeating = true })

-- Screenshot
hl.bind('Print', hl.dsp.exec_cmd('grim -g "$(slurp)" - | swappy -f -'))
hl.bind('SHIFT + Print', hl.dsp.exec_cmd('grim - | swappy -f -'))

-- Mouse side buttons — scroll workspaces
hl.bind('mouse:275', hl.dsp.focus({ workspace = 'e-1' }))
hl.bind('mouse:276', hl.dsp.focus({ workspace = 'e+1' }))

-- Mouse move/resize
hl.bind(config.mod .. ' + mouse:272', hl.dsp.window.drag(), { mouse = true })
hl.bind(config.mod .. ' + mouse:273', hl.dsp.window.resize(), { mouse = true })

-- Zoom
hl.bind(config.mod .. ' + mouse_down', function()
  local zoom = hl.get_config('cursor.zoom_factor')
  hl.config({ cursor = { zoom_factor = zoom * 1.1 } })
end, { mouse = true })

hl.bind(config.mod .. ' + mouse_up', function()
  local zoom = hl.get_config('cursor.zoom_factor')
  hl.config({ cursor = { zoom_factor = math.max(1, zoom * 0.9) } })
end, { mouse = true })

hl.bind(config.mod .. ' + minus', function()
  local zoom = hl.get_config('cursor.zoom_factor')
  hl.config({ cursor = { zoom_factor = math.max(1, zoom * 0.9) } })
end, { repeating = true })

hl.bind(config.mod .. ' + KP_Add', function()
  local zoom = hl.get_config('cursor.zoom_factor')
  hl.config({ cursor = { zoom_factor = zoom * 1.1 } })
end, { repeating = true })

hl.bind(config.mod .. ' + KP_Equal', function()
  hl.config({ cursor = { zoom_factor = 1 } })
end)

-- ##############################
-- ### WINDOWS AND WORKSPACES ###
-- ##############################

hl.window_rule({
  workspace = 2,
  match = {
    class = '^(helium)$',
  },
})

hl.window_rule({
  workspace = 3,
  match = {
    class = '^(Spotify)$',
  },
})

hl.window_rule({
  workspace = 4,
  match = {
    class = '^(obsidian)$',
  },
})

hl.window_rule({
  workspace = 5,
  match = {
    class = '^(org.inkscape.Inkscape)$',
  },
})

hl.window_rule({
  workspace = 6,
  match = {
    class = '^(discord)$',
  },
})

hl.window_rule({
  workspace = 7,
  match = {
    class = '^(org.mozilla.Thunderbird)$',
  },
})

hl.window_rule({
  float = true,
  size = { 'monitor_w * 0.5', 'monitor_h * 0.5' },
  match = {
    title = '^(yazi)$',
  },
})

hl.window_rule({
  float = true,
  size = { '600', '800' },
  match = {
    class = '^(org.telegram.desktop)$',
  },
})

hl.window_rule({
  float = true,
  size = { '600', '800' },
  match = {
    title = 'Calculator',
  },
})

hl.window_rule({
  float = true,
  size = { '800', '800' },
  match = {
    title = '^(impala)$',
  },
})

hl.window_rule({
  float = true,
  size = { '800', '800' },
  match = {
    title = '^(bluetui)$',
  },
})

hl.window_rule({
  float = true,
  size = { 'monitor_w * 0.5', 'monitor_h * 0.5' },
  match = {
    class = '^(wiremix)$',
  },
})

-- Ignore maximize requests from apps. You'll probably like this.
hl.window_rule({
  name = 'windowrule-supress-maximize',
  suppress_event = 'maximize',
  match = {
    class = '.*',
  },
})

-- Fix some dragging issues with XWayland.
hl.window_rule({
  match = {
    class = '^$',
    title = '^$',
    xwayland = true,
    float = true,
    fullscreen = false,
    pin = false,
  },
  no_focus = true,
})

-- # swaync layer rules
-- layerrule = blur on, match:namespace swaync-control-center
-- layerrule = ignore_alpha 0.1, match:namespace swaync-control-center
-- layerrule = animation slide right, match:namespace swaync-control-center
--
-- layerrule = blur on, match:namespace swaync-notification-window
-- layerrule = ignore_alpha 0.1, match:namespace swaync-notification-window
-- layerrule = animation slide right, match:namespace swaync-notification-window
