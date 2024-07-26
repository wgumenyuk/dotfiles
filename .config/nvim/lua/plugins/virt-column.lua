return {
  "lukas-reineke/virt-column.nvim",
  config = function()
    require("virt-column").setup({
      virtcolumn = "85",
      char = "│",
      highlight = "ColumnGuard"
    })

    vim.cmd("highlight ColumnGuard guifg=#313244")
  end
}
