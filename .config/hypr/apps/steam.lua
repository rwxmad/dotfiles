hl.window_rule({
  float = true,
  idle_inhibit = 'fullscreen',
  match = {
    class = '^(steam)$',
  },
})

hl.window_rule({
  center = true,
  size = { 1100, 700 },
  match = {
    class = '^(steam)$',
    title = 'Steam',
  },
})

hl.window_rule({
  tag = '-default-opacity',
  opacity = '1 1',
  match = {
    class = '^(steam.*)$',
  },
})

hl.window_rule({
  size = { 460, 800 },
  match = {
    class = '^(steam)$',
    title = 'Friends List',
  },
})
