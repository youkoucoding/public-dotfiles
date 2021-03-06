-- WezTerm
-- https://wezfurlong.org/wezterm/

local wezterm = require("wezterm")

return {
	-- Smart tab bar [distraction-free mode]
	hide_tab_bar_if_only_one_tab = true,

	-- Color scheme
	-- https://wezfurlong.org/wezterm/config/appearance.html
	--
	-- Dracula
	-- https://draculatheme.com
	-- color_scheme = 'Dracula',

	window_background_opacity = 0.99,

	-- Font configuration
	-- font = wezterm.font("JetBrains Mono", { weight = "Medium" }),
	font = wezterm.font("Dank mono"),
	font_size = 18.2,

	-- Disable ligatures
	-- https://wezfurlong.org/wezterm/config/font-shaping.html
	-- harfbuzz_features = { "calt=0", "clig=0", "liga=0" },

	-- Cursor style
	-- default_cursor_style = "BlinkingBar",

	-- Enable CSI u mode
	-- https://wezfurlong.org/wezterm/config/lua/config/enable_csi_u_key_encoding.html
	enable_csi_u_key_encoding = true,

	-- Colors
  -- full list at wezfurlong.org/wezterm/colorschemes/index.html
	color_scheme = "Banana Blueberry",
	-- color_scheme = "Cobalt Neon",

	-- Window Padding
  enable_scroll_bar = false,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

  --  terminal exits
  exit_behavior = "Close",
}
