return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    local devicons = require("nvim-web-devicons")

    local icons = devicons.get_icons()

    local c = icons.c
    local h = icons.h

    h.icon = c.icon

    devicons.set_icon({
      h = h
    })
  end
}
