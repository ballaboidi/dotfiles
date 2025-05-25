-- Pull in the Wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 14

config.enable_tab_bar = false

-- add colors to config --

config.colors = {
	background = "#192330",
	foreground = "#C3C6CA",
}


config.window_background_opacity = 0.9
config.macos_window_background_blur = 40

return config
