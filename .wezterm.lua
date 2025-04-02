local wezterm = require("wezterm")

function get_os()
	local target = wezterm.target_triple

	if target:find("windows") then
		return "windows"
	end

	if target:find("linux") then
		return "linux"
	end

	return nil
end

function basename(path)
	return string.gsub(path, "(.*[/\\])(.*)", "%2")
end

wezterm.on("format-window-title", function(tab)
	return basename(tab.active_pane.foreground_process_name) .. " | Terminal"
end)

return {
	-- Shell
	default_prog = get_os() == "windows" and { "powershell.exe" } or { "bash" },

	-- Theme
	color_scheme = "GitHub Dark",
	font = wezterm.font_with_fallback({
		{
			family = "JetBrainsMono Nerd Font Mono",
			harfbuzz_features = {
				"zero"
			}
		},
		"Noto Color Emoji",
		"Segoe UI Emoji"
	}),
	font_rules = {
		{
			intensity = "Half",
			font = wezterm.font({
				family = "JetBrainsMono Nerd Font Mono",
				weight = "Regular"
			})
		}
	},
	font_size = 14.0,

	-- Window
	initial_cols = 100,
	initial_rows = 30,
	enable_tab_bar = false,

	-- Keybinds
	keys = {
		{
			key = "F11",
			action = wezterm.action.ToggleFullScreen
		}
	},

	-- Other
	audible_bell = "Disabled",
	window_close_confirmation = "NeverPrompt",
	hide_mouse_cursor_when_typing = false,
	detect_password_input = false
}
