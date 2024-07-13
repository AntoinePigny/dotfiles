-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

wezterm.action.SpawnCommandInNewWindow {
    cwd = "/home/pwaps",
}
-- For example, changing the color scheme:
config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#706b4e",
	selection_fg = "#f3d9c4",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.default_domain = "WSL:Debian"
config.wsl_domains = {
    {
        name = "WSL:Debian",
        distribution = "Debian",
		default_cwd = "/home/pwaps"
    },
}

config.font = wezterm.font("CaskaydiaCove Nerd Font Mono")
config.font_size = 13

config.enable_tab_bar = true
config.use_fancy_tab_bar = true
config.window_close_confirmation = 'NeverPrompt'

config.window_decorations = "RESIZE"
config.window_background_opacity = 0
config.win32_system_backdrop = "Acrylic"


-- and finally, return the configuration to wezterm
return config