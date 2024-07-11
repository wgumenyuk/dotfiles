local opt = vim.opt

-- Farben
opt.termguicolors = true

-- Indent
opt.tabstop = 2
opt.expandtab = true
opt.softtabstop = 2
opt.shiftwidth = 2
opt.breakindent = true
opt.autoindent = true
opt.smartindent = true

-- Zeilennummern
opt.number = true
opt.signcolumn = "yes"

-- Status
opt.laststatus = 3

-- Cursor
opt.guicursor = "i:block"
opt.cursorline = true

-- Maus
opt.mouse = ""

-- Clipboard
opt.clipboard = "unnamedplus"

-- Suche
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true

-- Undo-History
opt.undofile = true

-- Completion
opt.completeopt = "menuone,noselect"

-- Popup-Menü
opt.pumheight = 7

-- Diagnostics
vim.diagnostic.config({
  virtual_text = false
})
