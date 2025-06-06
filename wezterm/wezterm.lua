local wezterm = require("wezterm")
local config = {}

config.front_end = "OpenGL"
config.term = "xterm-256color"
config.prefer_egl = true
config.font = wezterm.font("Cascadia Code NF")
config.color_scheme = "Dark Pastel"
config.window_background_opacity = 0.8
config.font_size = 14
config.default_cursor_style = "SteadyBlock"

config.default_prog = { "pwsh.exe" }

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

return config
