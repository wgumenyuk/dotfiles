return {
  "neovim/nvim-lspconfig",
  event = {
    "BufReadPre",
    "BufNewFile"
  },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp"
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")
    local cmp = require("cmp_nvim_lsp")

    local api = vim.api
    local keymap = vim.keymap

    api.nvim_create_autocmd("LspAttach", {
      group = api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(event)
        -- noop
      end
    })

    local capabilities = cmp.default_capabilities()

    mason_lspconfig.setup_handlers({
      -- Allgemeines Setup
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities
        })
      end,

      -- Lua
      lua_ls = function()
        lspconfig.lua_ls.setup({
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
        })
      end
    })
  end
}
