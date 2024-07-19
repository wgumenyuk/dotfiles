return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim"
  },
  config = function()
    require("neo-tree").setup({
      sources = {
        "filesystem",
        "git_status"
      },
      source_selector = {
        winbar = true
      },
      window = {
        width = 30
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_by_name = {
            ".git",
            "node_modules"
          }
        }
      },
      default_component_configs = {
        indent = {
          with_expanders = true
        },
        modified = {
          symbol = "*"
        },
        git_status = {
          symbols = {
            added = "",
            modified = "M",
            deleted = "D",
            renamed = "R",
            untracked = "U",
            ignored = "",
            unstaged = "",
            staged = "A",
            conflict = "!"
          }
        }
      }
    })

    local keymap = vim.keymap

    keymap.set(
      "n",
      "<leader>ee",
      "<cmd>Neotree toggle<cr>",
      { desc = "Schaltet den Dateiexplorer um." }
    )

    keymap.set(
      "n",
      "<leader>ef",
      "<cmd>Neotree reveal<cr>",
      { desc = "Zeigt die geöffnete Datei im Explorer an." }
    )

    vim.cmd([[
      highlight NeoTreeIndentMarker guifg=#4e5163
      highlight NeoTreeModified guifg=#f9e2af
    ]])
  end
}
