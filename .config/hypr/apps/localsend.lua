hl.window_rule({
  float = true,
  center = true,
  match = {
    class = '^(Share|localsend)$',
  },
})

hl.window_rule({
  size = { 1100, 700 },
  match = {
    class = '^(localsend)$',
  },
})
