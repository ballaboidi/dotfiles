-- Pull in the Wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 14

config.enable_tab_bar = false

-- add colors to config --
config.color_scheme = "Nightfox"

config.colors = {
  foreground = "#c9d1d9",
  background = "#192330",
}

config.window_decorations = "TITLE"

config.window_frame = {
  -- Title bar colors inspired by Nightfox palette
  active_titlebar_bg = "#192330",  -- Nightfox bg
  inactive_titlebar_bg = "#1e293b", -- Slightly dimmer
  active_titlebar_fg = "#cdcecf",  -- Light gray for text
  inactive_titlebar_fg = "#a5b4fc", -- Muted blue-violet

  font = wezterm.font({ family="FiraCode Nerd Font", weight="Bold" }),
  font_size = 14
}
-- config.window_background_opacity = 0.9
-- config.macos_window_background_blur = 10

return config
