-- Pull in the wezterm API
local wezterm = require("wezterm")
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- config.color_scheme = "Dracula"
-- config.color_scheme = "Kanagawa (Gogh)"
-- config.color_scheme = "Gruvbox Material Hard"
-- config.color_scheme = "Rosé Pine Moon"
-- config.color_scheme = "Gruvbox Material (Gogh)"
-- config.color_scheme = "Gruvbox dark, hard (base16)"
-- config.color_scheme = "kanagawabones"
-- config.color_scheme = "Kokuban (Gogh)"
config.color_scheme = "Kanagawa Dragon (Gogh)"
-- config.color_scheme = "Gruvbox Material (Gogh)"
-- config.color_scheme = "Kanagawa (Gogh)"
-- config.color_scheme = "Catppuccin Mocha"
-- config.color_scheme = "Dark+"
-- config.color_scheme = "Dark Modern"
-- config.color_scheme = "Vs Code Dark+ (rainglow)"
-- config.color_scheme = "Tokyo Night"

config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" })
config.font_size = 12

config.enable_tab_bar = true
config.use_fancy_tab_bar = false

config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.9
config.macos_window_background_blur = 10
-- config.window_close_confirmation = "NeverPrompt"

config.window_padding = {
	left = 10,
	right = 0,
	top = 0,
	bottom = 0,
}
config.hide_tab_bar_if_only_one_tab = true

local function ai_workspace(window, pane)
	local cwd = pane:get_current_working_dir()

	if type(cwd) == "userdata" then
		cwd = cwd.file_path
	end

	local editor_pane = pane

	local right_pane = editor_pane:split({
		direction = "Right",
		size = 0.3,
		cwd = cwd,
	})

	local bottom_pane = editor_pane:split({
		direction = "Bottom",
		size = 0.2,
		cwd = cwd,
	})

	editor_pane:send_text("nvim .\n")
	bottom_pane:send_text("\n")
	-- right_pane:send_text("agent \n")

	editor_pane:activate()
end

-- Key bindings
config.keys = {
	-- confirm message
	{ key = "w", mods = "CMD", action = wezterm.action.CloseCurrentPane({ confirm = false }) },
	-- split panes shortcuts
	{ key = "\\", mods = "CMD", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "]", mods = "CMD", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	-- Move between panes (like VS Code / Vim)
	{ key = "h", mods = "CMD", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "l", mods = "CMD", action = wezterm.action.ActivatePaneDirection("Right") },
	{ key = "k", mods = "CMD", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "j", mods = "CMD", action = wezterm.action.ActivatePaneDirection("Down") },
	-- Option + Left → move backward one word
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action.SendString("\x1bb") },
	-- Option + Right → move forward one word
	{ key = "RightArrow", mods = "OPT", action = wezterm.action.SendString("\x1bf") },
	{ key = "h", mods = "CMD|SHIFT", action = wezterm.action.AdjustPaneSize({ "Left", 5 }) },
	{ key = "l", mods = "CMD|SHIFT", action = wezterm.action.AdjustPaneSize({ "Right", 5 }) },
	{ key = "k", mods = "CMD|SHIFT", action = wezterm.action.AdjustPaneSize({ "Up", 5 }) },
	{ key = "j", mods = "CMD|SHIFT", action = wezterm.action.AdjustPaneSize({ "Down", 5 }) },
	{ key = "a", mods = "CMD|SHIFT", action = wezterm.action_callback(ai_workspace) },
	-- {
	-- 	key = "L",
	-- 	mods = "CMD",
	-- 	action = wezterm.action.TogglePaneZoomState,
	-- },
	{
		key = "`",
		mods = "CTRL",
		action = wezterm.action_callback(function(_, pane)
			local tab = pane:tab()
			local panes = tab:panes_with_info()
			if #panes == 1 then
				pane:split({
					direction = "Right",
					size = 0.4,
				})
			elseif not panes[1].is_zoomed then
				panes[1].pane:activate()
				tab:set_zoomed(true)
			elseif panes[1].is_zoomed then
				tab:set_zoomed(false)
				panes[2].pane:activate()
			end
		end),
	},
	{
		key = "r",
		mods = "ALT",
		action = wezterm.action.PromptInputLine({
			description = "Enter new tab title:",
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
}

--  move directly to tab number, keep for now, may delete later
for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "ALT",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

config.colors = {
	tab_bar = {
		background = "#1F1F28", -- Kanagawa sumi-ish base

		active_tab = {
			bg_color = "#DCA561", -- autumn yellow
			fg_color = "#1F1F28",
		},

		inactive_tab = {
			bg_color = "#2A2A37",
			fg_color = "#C8C093",
		},

		inactive_tab_hover = {
			bg_color = "#3A3A4A",
			fg_color = "#FFFFFF",
		},
	},
	-- foreground = "#d4d4d4",
	background = "#1e1e1e",

	-- cursor_bg = "#d4d4d4",
	-- cursor_fg = "#1e1e1e",

	-- selection_bg = "#264f78",

	ansi = {
		"#0d0c0c", -- black (sumi ink)
		"#c4746e", -- red (muted crimson)
		"#8a9a7b", -- green (ash green)
		"#c4b28a", -- yellow (warm muted gold)
		"#8ba4b0", -- blue (steel blue)
		"#a292a3", -- magenta (dusty purple)
		"#7aa89f", -- cyan (jade teal)
		"#c5c9c5", -- white (foggy gray)
	},

	brights = {
		"#727169", -- bright black (gray)
		"#e46876", -- bright red
		"#87a987", -- bright green
		"#e6c384", -- bright yellow
		"#7fb4ca", -- bright blue
		"#938aa9", -- bright magenta
		"#7aa89f", -- bright cyan
		"#dcd7ba", -- bright white (soft parchment)
	},
	foreground = "#c8c093",
	-- background = "#0d0c0c",

	cursor_bg = "#c8c093",
	cursor_fg = "#0d0c0c",
	cursor_border = "#c8c093",
}

-- and finally, return the configuration to wezterm
return config
