return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function ()
    require("catppuccin").setup({
      styles = {
        comments = {
          "italic"
        },
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        miscs = {},
      },
      integrations = {
        neotree = true
      }
    })

    vim.cmd.colorscheme("catppuccin-mocha")
  end
}
