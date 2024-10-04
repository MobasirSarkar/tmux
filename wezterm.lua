local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("FantasqueSansM Nerd Font")

config.font_size = 22

config.window_decorations = "RESIZE"

config.color_scheme = "Ef-Maris-Dark"

config.window_background_opacity = 1
config.macos_window_background_blur = 40

config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}
config.window_background_image = "/home/mobasirsarkar/Pictures/digital-art-with-urban-landscape-architecture.jpg"
config.window_background_image_hsb = {
	brightness = 0.040,
	hue = 1.0,
	saturation = 1.0,
}
config.text_background_opacity = 0.9

return config
