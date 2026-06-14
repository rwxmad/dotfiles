-- MONITORS
hl.monitor({ output = 'eDP-1', mode = '3200x2000@120Hz', position = '0x0', scale = 1.25 })
hl.monitor({ output = 'DP-1', mode = '2560x1440@144Hz', position = 'auto', scale = 1 })
hl.monitor({ output = '', mode = 'preferred', position = 'auto', scale = 'auto' })

local f = io.open(os.getenv('HOME') .. '/.local/state/hypr/lid-internal-off')
if f then
  f:close()
  hl.monitor({ output = 'eDP-1', disabled = true })
end

-- GENERAL
hl.config({
  general = {
    allow_tearing = true,
    gaps_in = 4,
    gaps_out = 4,
    border_size = 2,
    col = {
      active_border = 'rgba(a3be8cff)',
      inactive_border = 'rgba(191d24ff)',
    },
  },
})

-- INPUT
hl.config({
  input = {
    repeat_rate = 66,
    repeat_delay = 300,
    kb_layout = 'us, ru',
    kb_options = 'grp:ctrl_space_toggle, ctrl:nocaps',
    float_switch_override_focus = 0,
    follow_mouse = 2,
    sensitivity = 0,
    touchpad = {
      natural_scroll = true,
      scroll_factor = 0.3,
      clickfinger_behavior = true,
      tap_to_click = false,
    },
  },
})

-- MISC
hl.config({
  misc = {
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    mouse_move_enables_dpms = true,
    enable_swallow = false,
    focus_on_activate = true,
  },
})

-- DECORATION
hl.config({
  decoration = {
    active_opacity = 1.0,
    fullscreen_opacity = 1.0,
    rounding = 4,
  },
})

-- SCROLLING
hl.config({
  scrolling = {
    direction = 'right',
  },
})

-- XWAYLAND
hl.config({
  xwayland = {
    force_zero_scaling = true,
  },
})

-- ANIMATIONS
hl.config({ animations = { enabled = true } })

hl.curve('overshot', { type = 'bezier', points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve('smoothOut', { type = 'bezier', points = { { 0.36, 0 }, { 0.66, -0.56 } } })
hl.curve('smoothIn', { type = 'bezier', points = { { 0.25, 1 }, { 0.5, 1 } } })

hl.animation({ leaf = 'windows', enabled = true, speed = 1, bezier = 'overshot', style = 'slide' })
hl.animation({ leaf = 'windowsOut', enabled = true, speed = 1, bezier = 'smoothOut', style = 'slide' })
hl.animation({ leaf = 'windowsMove', enabled = true, speed = 1, bezier = 'default' })
hl.animation({ leaf = 'border', enabled = true, speed = 10, bezier = 'default' })
hl.animation({ leaf = 'fade', enabled = true, speed = 2, bezier = 'smoothIn' })
hl.animation({ leaf = 'fadeDim', enabled = true, speed = 2, bezier = 'smoothIn' })
hl.animation({ leaf = 'workspaces', enabled = true, speed = 6, bezier = 'default' })
hl.animation({ leaf = 'specialWorkspace', enabled = true, speed = 4, bezier = 'default', style = 'slidevert' })

-- DEVICE
hl.device({
  name = 'snsl002d:00-2c2f:002d-touchpad',
  sensitivity = 0.4,
})
