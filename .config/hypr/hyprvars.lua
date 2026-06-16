-- MONITORS
hl.monitor({ output = 'eDP-1', mode = '3200x2000@120Hz', position = '0x0', scale = 1.25 })
-- hl.monitor({ output = 'DP-1', mode = '2560x1440@144Hz', position = 'auto', scale = 1 })
hl.monitor({ output = 'DP-1', mode = '3840x2160@165Hz', position = 'auto', scale = 1 })
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

    blur = {
      enabled = false,
    },
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

hl.curve('easeOutQuint', { type = 'bezier', points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve('easeInOutCubic', { type = 'bezier', points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve('linear', { type = 'bezier', points = { { 0, 0 }, { 1, 1 } } })
hl.curve('almostLinear', { type = 'bezier', points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve('quick', { type = 'bezier', points = { { 0.15, 0 }, { 0.1, 1 } } })

hl.animation({ leaf = 'global', enabled = true, speed = 10, bezier = 'default' })
hl.animation({ leaf = 'border', enabled = true, speed = 5.39, bezier = 'easeOutQuint' })
hl.animation({ leaf = 'windows', enabled = true, speed = 3.79, bezier = 'easeOutQuint' })
hl.animation({ leaf = 'windowsIn', enabled = true, speed = 4.1, bezier = 'easeOutQuint', style = 'popin 87%' })
hl.animation({ leaf = 'windowsOut', enabled = true, speed = 1.49, bezier = 'linear', style = 'popin 87%' })
hl.animation({ leaf = 'fadeIn', enabled = true, speed = 1.73, bezier = 'almostLinear' })
hl.animation({ leaf = 'fadeOut', enabled = true, speed = 1.46, bezier = 'almostLinear' })
hl.animation({ leaf = 'fade', enabled = true, speed = 3.03, bezier = 'quick' })
hl.animation({ leaf = 'layers', enabled = true, speed = 3.81, bezier = 'easeOutQuint' })
hl.animation({ leaf = 'layersIn', enabled = true, speed = 4, bezier = 'easeOutQuint', style = 'fade' })
hl.animation({ leaf = 'layersOut', enabled = true, speed = 1.5, bezier = 'linear', style = 'fade' })
hl.animation({ leaf = 'fadeLayersIn', enabled = true, speed = 1.79, bezier = 'almostLinear' })
hl.animation({ leaf = 'fadeLayersOut', enabled = true, speed = 1.39, bezier = 'almostLinear' })
hl.animation({ leaf = 'workspaces', enabled = false })
hl.animation({ leaf = 'specialWorkspace', enabled = true, speed = 3, bezier = 'easeOutQuint', style = 'slidevert' })

-- DEVICE
hl.device({
  name = 'snsl002d:00-2c2f:002d-touchpad',
  sensitivity = 0.4,
})
