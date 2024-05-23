local wezterm = require("wezterm")

wezterm.on("format-window-title", function()
  return "Terminal"
end)

return {
  -- Theme
  color_scheme = "catppuccin-mocha",

  -- Font
  font = wezterm.font("JetBrainsMono Nerd Font Mono"),
  font_size = 14.0,

  -- Window
  initial_cols = 100,
  initial_rows = 30,
  enable_tab_bar = false,
  window_close_confirmation = "NeverPrompt"
}

