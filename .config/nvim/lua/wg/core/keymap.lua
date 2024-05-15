local g = vim.g
local keymap = vim.keymap

-- Leader
g.mapleader = " "

-- Suche
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Entfernt die aktuellen Highlights." })

-- Windows
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Teilt das Fenster vertikal." })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Teilt das Fenster horizontal." })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Macht die Fenster gleich groß." })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Schließt das aktuelle Fenster." })

-- Tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Öffnet einen neuen Tab." })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Schließt den aktuellen Tab." })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Wechselt zum nächsten Tab." })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Wechselt zum vorherigen Tab." })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Öffnet den aktuellen Buffer in einem neuen Tab." })
