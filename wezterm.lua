-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--config.color_scheme = 'JetBrains Mono'
config.font_size = 17.0
config.window_background_opacity = 0.80
config.window_decorations = "NONE"
config.text_background_opacity = 0.80

config.use_fancy_tab_bar = false
config.tab_max_width = 23

config.colors = {
	tab_bar = {
		background = 'black'
	}
}



-- and finally, return the configuration to wezterm
return config
	
