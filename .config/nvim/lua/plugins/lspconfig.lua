return {
  "neovim/nvim-lspconfig",
  event = {
    "BufReadPre",
    "BufNewFile"
  },
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp"
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local api = vim.api

    api.nvim_create_autocmd("LspAttach", {
      group = api.nvim_create_augroup("UserLspConfig", {}),
      callback = function()
        -- noop
      end
    })

    local lua_options = {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = {
              "vim"
            }
          }
        }
      }
    }

    require("mason-lspconfig").setup_handlers({
      -- Allgemein
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities
        })
      end,

      -- Lua
      lua_ls = function()
        lspconfig.lua_ls.setup(lua_options)
      end
    })
  end
}
