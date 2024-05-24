return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    local devicons = require("nvim-web-devicons")

    local json_icon, json_color = devicons.get_icon_color_by_filetype("json")

    devicons.set_icon({
      swcrc = {
        icon = json_icon,
        color = json_color,
        name = "Swcrc"
      }
    })
  end
}
