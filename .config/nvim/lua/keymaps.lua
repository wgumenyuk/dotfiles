local g = vim.g
local keymap = vim.keymap

-- Leader
g.mapleader = " "

-- Navigation
keymap.set("n", "j", "k")
keymap.set("n", "k", "j")

-- Definition anzeigen
keymap.set(
  "n",
  "K",
  "<cmd>lua vim.lsp.buf.hover()<cr>",
  { desc = "Zeigt die Definition an." }
)

-- Diagnostics anzeigen
keymap.set(
  "n",
  "L",
  "<cmd>lua vim.diagnostic.open_float()<cr>",
  { desc = "Zeigt die Diagnostics an." }
)

