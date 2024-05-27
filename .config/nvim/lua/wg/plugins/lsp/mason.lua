return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim"
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "autotools_ls",
        "bashls",
        "cssls",
        "clangd",
        "dockerls",
        "gopls",
        "html",
        "jsonls",
        "lua_ls",
        "pyright",
        "remark_ls",
        "svelte",
        "tailwindcss",
        "tsserver",
        "yamlls"
      }
    })
  end
}
