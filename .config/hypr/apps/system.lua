-- Floating window rules
hl.window_rule({ float = true, center = true, size = { 875, 600 }, match = {
  tag = 'floating-window',
} })

-- floating windows
hl.window_rule({
  tag = '+floating-window',
  match = {
    class = '(dev.rwxmad.bluetui|dev.rwxmad.impala|dev.rwxmad.wiremix|com.gabm.satty|imv|mpv)',
  },
})

-- btop
hl.window_rule({
  float = true,
  size = { 'monitor_w*0.8', 'monitor_h*0.8' },
  match = {
    class = '^(dev.rwxmad.btop)$',
  },
})

-- nvtop
hl.window_rule({
  float = true,
  size = { 'monitor_w*0.8', 'monitor_h*0.8' },
  match = {
    class = '^(dev.rwxmad.nvtop)$',
  },
})

-- yazi
hl.window_rule({
  float = true,
  size = { 'monitor_w * 0.5', 'monitor_h * 0.5' },
  match = {
    class = '^(dev.rwxmad.yazi)$',
  },
})

-- Calculator
hl.window_rule({
  float = true,
  size = { '600', '800' },
  match = {
    class = '^(org.gnome.Calculator)$',
  },
})
