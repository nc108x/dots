local w = require("wezterm")
local act = w.action

local config = w.config_builder()

config.font = w.font("CaskaydiaCove Nerd Font")
config.color_scheme = "Tokyo Night"
config.font_size = 14.0
config.initial_rows = 32
config.initial_cols = 120

config.inactive_pane_hsb = {
	saturation = 1,
	brightness = 0.6,
}
config.leader = { key = "s", mods = "CTRL", timeout_milliseconds = 1000 }

-- https://github.com/mrjones2014/smart-splits.nvim
local function is_vim(pane)
	return pane:get_user_vars().IS_NVIM == "true"
end

local direction_keys = {
	h = "Left",
	j = "Down",
	k = "Up",
	l = "Right",
}

local function split_nav(resize_or_move, key)
	return {
		key = key,
		mods = resize_or_move == "resize" and "META" or "CTRL",
		action = w.action_callback(function(win, pane)
			if is_vim(pane) then
				-- pass the keys through to vim/nvim
				win:perform_action({
					SendKey = { key = key, mods = resize_or_move == "resize" and "META" or "CTRL" },
				}, pane)
			else
				if resize_or_move == "resize" then
					win:perform_action({ AdjustPaneSize = { direction_keys[key], 3 } }, pane)
				else
					win:perform_action({ ActivatePaneDirection = direction_keys[key] }, pane)
				end
			end
		end),
	}
end

config.keys = {
	{ key = "-", mods = "LEADER", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "\\", mods = "LEADER", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "d", mods = "LEADER", action = act.CloseCurrentPane({ confirm = true }) },
	{ key = "m", mods = "LEADER", action = act.TogglePaneZoomState },
	split_nav("move", "h"),
	split_nav("move", "j"),
	split_nav("move", "k"),
	split_nav("move", "l"),
	split_nav("resize", "h"),
	split_nav("resize", "j"),
	split_nav("resize", "k"),
	split_nav("resize", "l"),
}

-- https://github.com/michaelbrusegard/tabline.wez
local tabline = w.plugin.require("https://github.com/michaelbrusegard/tabline.wez")
tabline.setup({
	options = {
		icons_enabled = true,
		theme = "Tokyo Night",
		color_overrides = {},
		section_separators = {
			left = "",
			right = "",
		},
		component_separators = {
			left = w.nerdfonts.pl_left_soft_divider,
			right = w.nerdfonts.pl_right_soft_divider,
		},
		tab_separators = {
			left = "",
			right = "",
		},
	},
	sections = {
		tabline_a = { " n-air " },
		tabline_b = {},
		tabline_c = {},
		tab_active = {
			"index",
			{ "parent", padding = 0 },
			"/",
			{ "cwd", padding = { left = 0, right = 1 } },
			{ "zoomed", padding = 1 },
		},
		tab_inactive = {
			"index",
			{ "parent", padding = 0 },
			"/",
			{ "cwd", padding = { left = 0, right = 1 } },
			{ "zoomed", padding = 1 },
		},
		-- tab_inactive = { "index", { "process", padding = { left = 0, right = 1 } } },
		tabline_x = {},
		tabline_y = {},
		tabline_z = {},
	},
	extensions = {},
})
tabline.apply_to_config(config)

return config
