local wezterm = require("wezterm")

local get_os = function()
  local target = wezterm.target_triple

  if target:find("windows") then
    return "windows"
  end

  if target:find("linux") then
    return "linux"
  end

  return nil
end

local default_prog = get_os() == "windows" and { "powershell.exe" } or { "bash" }

wezterm.on("format-window-title", function()
  return "Terminal"
end)

return {
  -- Shell
  default_prog = default_prog,

  -- Theme
  color_scheme = "catppuccin-mocha",

  -- Schriftart
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

  -- Bell
  audible_bell = "Disabled",

  -- Maus
  hide_mouse_cursor_when_typing = false,

  -- Fenster
  initial_cols = 100,
  initial_rows = 30,
  enable_tab_bar = false,
  window_close_confirmation = "NeverPrompt",

  -- Lock-Symbol bei Passworteingabe deaktivieren
  detect_password_input = false,

  -- Keybinds
  keys = {
    {
      key = "F11",
      action = wezterm.action.ToggleFullScreen
    }
  }
}
