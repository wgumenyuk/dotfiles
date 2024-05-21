local opt = vim.opt

-- Farben
opt.termguicolors = true

-- Indent
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Zeilennummern
opt.number = true
opt.signcolumn = "yes"

-- Statusline
opt.laststatus = 3

-- Cursor
opt.guicursor = "i:block"

-- Wrap
opt.wrap = false

-- Maus
opt.mouse = ""

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Windows
opt.splitright = true
opt.splitbelow = true

-- Swapfile
opt.swapfile = false
