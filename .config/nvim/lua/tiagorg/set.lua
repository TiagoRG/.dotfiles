-- vim.opt.guicursor = ""

-- vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.guitablabel = "\\[%N\\]\\ %t\\ %M"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.copilot_node_command = "/usr/bin/nodenv"
vim.g.copilot_assume_mapped = true

vim.g.mapleader = " "
