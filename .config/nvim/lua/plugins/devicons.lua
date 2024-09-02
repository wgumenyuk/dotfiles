return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    local devicons = require("nvim-web-devicons")

    local icons = devicons.get_icons()

    local c = icons.c
    local h = icons.h
    local makefile = icons.makefile

    -- C Header
    h.icon = c.icon

    -- Makefile
    makefile.icon = ""
    makefile.color = "orange"

    devicons.set_icon({
      h = h,
      makefile = makefile
    })
  end
}
