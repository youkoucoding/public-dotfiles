local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.font = wezterm.font('Dank Mono', { weight = 'Medium' })
config.font_size = 14

-- Colors
config.color_scheme = 'Belge (terminal.sexy)'

-- Window
config.window_padding = { left = 10, right = 10, top = 10, bottom = 10 }
config.window_decorations = "RESIZE"

-- tab bar
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.show_tab_index_in_tab_bar = false
config.show_tabs_in_tab_bar = true
config.show_new_tab_button_in_tab_bar = false


config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.initial_cols = 128
config.initial_rows = 90

config.animation_fps = 60

return config
