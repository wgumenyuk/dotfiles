return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "bashls",
        "clangd",
        "cmake",
        "cssls",
        "dockerls",
        "docker_compose_language_service",
        "eslint",
        "gopls",
        "html",
        "jsonls",
        "tsserver",
        "lua_ls",
        "autotools_ls", -- Make
        "remark_ls",
        "pyright",
        "svelte",
        "taplo", -- TOML
        "yamlls"
      }
    })
  end
}
