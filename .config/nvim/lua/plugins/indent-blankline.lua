return {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    require("ibl").setup({
      indent = {
        char = "│"
      },
      scope = {
        enabled = false
      },
      debounce = 50
    })
  end
}
