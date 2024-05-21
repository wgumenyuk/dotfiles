local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazy_path) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--depth=1",
    "https://github.com/folke/lazy.nvim.git",
    lazy_path
  })
end

vim.opt.rtp:prepend(lazy_path)

require("wg.core")
require("lazy").setup(
  {
    { import = "wg.plugins" },
    { import = "wg.plugins.lsp" },
    { import = "wg.plugins.ui" },
  },
  {
    checker = {
      enabled = true,
      notify = false
    },
    change_detection = {
      notify = false
    }
  }
)
