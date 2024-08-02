return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      sync_install = false,
      highlight = {
        enable = true,
        use_languagetree = true
      },
      indent = {
        enable = true
      },
      autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
        filetypes = {
          "html",
          "svelte"
        }
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
        "svelte",
        "tmux",
        "typescript",
        "tsx",
        "vim",
        "yaml"
      }
    })
  end
}
