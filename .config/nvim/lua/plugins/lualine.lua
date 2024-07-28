return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "nvim-tree/nvim-web-devicons"
  },
  event = "VeryLazy",
  config = function()
    require("lualine").setup({
      options = {
        component_separators = "",
        section_separators = ""
      },
      sections = {
        lualine_a = {
          "mode"
        },
        lualine_b = {
          {
            "branch",
            icon = "󰘬",
          }
        },
        lualine_c = {
          "filename"
        },
        lualine_x = {
          "location"
        },
        lualine_y = {
          "filesize"
        },
        lualine_z = {
          {
            "filetype",
            icons_enabled = false
          }
        }
      }
    })
  end
}
