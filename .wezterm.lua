local wezterm = require("wezterm")

local get_os = function()
  local target = wezterm.target_triple

  if target:find("windows") then
    return "windows"
  elseif target:find("linux") then
    return "linux"
  else
    return nil
  end
end

local default_prog = get_os() == "linux" and { "bin/bash" } or { "powershell.exe" }

wezterm.on("format-window-title", function()
  return "Terminal"
end)

return {
  -- Shell
  default_prog = default_prog,

  -- Theme
  color_scheme = "catppuccin-mocha",

  -- Font
  font = wezterm.font("JetBrainsMono Nerd Font Mono"),
  font_size = 14.0,

  -- Maus
  hide_mouse_cursor_when_typing = false,

  -- Window
  initial_cols = 100,
  initial_rows = 30,
  enable_tab_bar = false,
  window_close_confirmation = "NeverPrompt",

  -- Keybinds
  keys = {
    {
      key = "F11",
      action = wezterm.action.ToggleFullScreen
    }
  }
}
