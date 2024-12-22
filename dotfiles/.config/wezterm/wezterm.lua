local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Breeze (Gogh)'
config.window_background_opacity = 0.90
config.window_padding = {
    left = 10,
    right = 10,
    top = 10,
    bottom = 10,
}
config.enable_tab_bar = false

config.font = wezterm.font 'FiraCode Nerd Font Mono'
config.font_size = 13.0
config.bold_brightens_ansi_colors = false

config.default_prog = { 'zsh' }

return config
