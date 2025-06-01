local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Theme settings
local THEME = {
	color_scheme = "JWR dark (terminal.sexy)",
	background_color = "#000111",
	visual_bell_color = "#200000",
	opacity = 0.9,
}

-- Font settings
local FONT = {
	family = "GeistMono Nerd Font",
	size = 15,
}

-- Performance settings
local PERFORMANCE = {
	renderer = "WebGpu",
	max_fps = 120,
	animation_fps = 120,
}

-- Cursor settings
local CURSOR = {
	style = "BlinkingBar",
	blink_rate = 500,
	blink_ease_in = "Linear",
	blink_ease_out = "Linear",
}

-- Window settings
local WINDOW = {
	decorations = "INTEGRATED_BUTTONS|RESIZE",
	padding = {
		left = "9px",
		right = "9px",
		top = "6px",
		bottom = "1px",
	},
	hide_tab_bar_if_only_one_tab = true,
	show_tab_index_in_tab_bar = false,
	close_confirmation = "NeverPrompt",
}

-- Background settings
local BACKGROUND = {
	base_image = "/home/mobasir-popos/Pictures/pure_black_wallpaper.jpg",
	overlay_image = "/home/mobasir-popos/Pictures/wez_wallpaper/11.jpeg",
	dimmer = { brightness = 0.02 },
}

-- Keybindings
local KEYS = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
	-- Add more keybindings here
}

-- Visual bell settings
local VISUAL_BELL = {
	fade_in_function = "EaseIn",
	fade_in_duration_ms = 1,
	fade_out_function = "EaseOut",
	fade_out_duration_ms = 200,
}

-- Apply font settings
config.font = wezterm.font(FONT.family)
config.font_size = FONT.size

-- Apply window settings
config.window_decorations = WINDOW.decorations
config.window_padding = WINDOW.padding
config.hide_tab_bar_if_only_one_tab = WINDOW.hide_tab_bar_if_only_one_tab
config.show_tab_index_in_tab_bar = WINDOW.show_tab_index_in_tab_bar
config.window_close_confirmation = WINDOW.close_confirmation

-- Apply theme settings
config.color_scheme = THEME.color_scheme
config.colors = {
	background = THEME.background_color,
	visual_bell = THEME.visual_bell_color,
}
config.text_background_opacity = THEME.opacity

-- Apply performance settings
config.front_end = PERFORMANCE.renderer
config.max_fps = PERFORMANCE.max_fps
config.animation_fps = PERFORMANCE.animation_fps

-- Apply cursor settings
config.default_cursor_style = CURSOR.style
config.cursor_blink_rate = CURSOR.blink_rate
config.cursor_blink_ease_in = CURSOR.blink_ease_in
config.cursor_blink_ease_out = CURSOR.blink_ease_out

-- Apply background settings
config.background = {
	{
		source = {
			File = BACKGROUND.base_image,
		},
	},
	{
		source = {
			File = BACKGROUND.overlay_image,
		},
		hsb = BACKGROUND.dimmer,
		repeat_x = "NoRepeat",
		repeat_y = "NoRepeat",
		height = "100%",
		width = "40%",
		attachment = "Fixed",
		vertical_align = "Middle",
		horizontal_align = "Center",
	},
}

-- Apply keybindings
config.keys = KEYS

-- Apply visual bell settings
config.visual_bell = VISUAL_BELL

return config
