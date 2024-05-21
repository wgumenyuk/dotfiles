return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    require("nvim-treesitter.configs").setup({
      sync_install = false,
      highlight = {
        enable = true
      },
      indent = {
        enable = true
      },
      ensure_installed = {
        "bash",
        "c",
        "cmake",
        "cpp",
        "css",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "luadoc",
        "make",
        "python",
        "svelte",
        "tmux",
        "typescript",
        "vim",
        "vimdoc",
        "yaml"
      }
    })
  end
}
