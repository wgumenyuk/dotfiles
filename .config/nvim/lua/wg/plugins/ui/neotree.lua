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
      window = {
        width = 30,
        mappings = {
          C = "close_all_subnodes"
        }
      },
      filesystem = {
        use_libuv_file_watcher = true,
        filtered_items = {
          hide_dotfiles = false,
          hide_by_name = {
            ".git",
            "node_modules"
          }
        }
      },
      default_component_configs = {
        modified = {
          symbol = "*"
        },
        git_status = {
          symbols = {
            added = "A",
            modified = "M",
            deleted = "",
            renamed = "",
            untracked = "U",
            ignored = "",
            unstaged = "",
            staged = "A",
            conflict = "!"
          }
        }
      },
      sources = {
        "filesystem",
        "git_status"
      },
      source_selector = {
        winbar = true
      }
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Schaltet den Dateiexplorer um." })
    keymap.set("n", "<leader>ef", "<cmd>Neotree reveal<CR>", { desc = "Zeigt die geöffnete Datei im Dateiexplorer an." })

    vim.cmd("highlight NeoTreeModified guifg=#f9e2af")
  end
}
