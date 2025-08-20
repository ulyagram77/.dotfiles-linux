local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Breeze (Gogh)'
-- config.color_scheme = 'Andromeda'
-- config.color_scheme = 'Apple System Colors'
-- config.color_scheme = 'Ashes (base16)'
-- config.color_scheme = 'Ayu Mirage (Gogh)'
-- config.color_scheme = 'Atom (Gogh)'
-- config.color_scheme = 'Atom'
-- config.color_scheme = 'Batman'
-- config.color_scheme = 'Bamboo'
-- config.color_scheme = 'BlulocoDark'
-- config.color_scheme = 'Breeze'
-- config.color_scheme = 'Broadcast (Gogh)'
config.window_background_opacity = 0.85
config.window_padding = {
    left = 10,
    right = 10,
    top = 0,
    bottom = 10,
}
config.enable_tab_bar = false
config.enable_wayland = false
config.font = wezterm.font 'FiraCode Nerd Font Mono'
-- config.font = wezterm.font 'CaskaydiaCove Nerd Font Mono'
config.font_size = 11.5
config.bold_brightens_ansi_colors = false

config.default_prog = { 'zsh' }

return config
