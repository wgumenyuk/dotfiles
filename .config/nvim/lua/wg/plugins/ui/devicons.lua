return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    local devicons = require("nvim-web-devicons")

    local get_icon = devicons.get_icon_color
    local get_icon_by_filetype = devicons.get_icon_color_by_filetype

    local ignored_color = "#6c7087"

    -- Env
    local env_icon, _ = get_icon(".env", "env")

    -- JSON
    local json_icon, json_color = get_icon_by_filetype("json")

    -- TypeScript
    local _, ts_color = get_icon_by_filetype("typescript")
    local tsx_icon, _ = get_icon_by_filetype("typescriptreact");

    devicons.set_icon({
      -- Env
      ["env.production"] = {
        icon = env_icon,
        color = ignored_color,
        name = "EnvProduction"
      },
      ["env.development"] = {
        icon = env_icon,
        color = ignored_color,
        name = "EnvProduction"
      },
      ["env.example"] = {
        icon = env_icon,
        color = ignored_color,
        name = "EnvProduction"
      },
      ["env.keys"] = {
        icon = env_icon,
        color = ignored_color,
        name = "EnvKeys"
      },
      ["env.vault"] = {
        icon = env_icon,
        color = ignored_color,
        name = "EnvVault"
      },

      -- SWC
      swcrc = {
        icon = json_icon,
        color = json_color,
        name = "Swcrc"
      },

      -- TSX
      tsx = {
        icon = tsx_icon,
        color = ts_color,
        name = "Tsx"
      }
    })
  end
}
