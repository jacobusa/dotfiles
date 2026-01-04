-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = "Catppuccin Mocha"


config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 12

-- config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 10
config.window_close_confirmation = "NeverPrompt"

config.window_padding = {
  left = 14,
  right = 14,
  top = 12,
  bottom = 12,
}

-- Key bindings
config.keys = {
	-- confirm message
	{ key = 'w', mods = 'CMD', action = wezterm.action.CloseCurrentPane { confirm = false }, },
	-- split panes shortcuts
	{ key = '\\', mods = 'CMD', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }, },
	{ key = ']', mods = 'CMD', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }, },
  -- Move between panes (like VS Code / Vim)
  { key = 'h', mods = 'CTRL', action = wezterm.action.ActivatePaneDirection('Left') },
  { key = 'l', mods = 'CTRL', action = wezterm.action.ActivatePaneDirection('Right') },
  { key = 'k', mods = 'CTRL', action = wezterm.action.ActivatePaneDirection('Up') },
  { key = 'j', mods = 'CTRL', action = wezterm.action.ActivatePaneDirection('Down') },
    -- Option + Left → move backward one word
  { key = "LeftArrow", mods = "OPT", action = wezterm.action.SendString("\x1bb"), },
  -- Option + Right → move forward one word
  { key = "RightArrow", mods = "OPT", action = wezterm.action.SendString("\x1bf"), },
}

-- and finally, return the configuration to wezterm
return config
