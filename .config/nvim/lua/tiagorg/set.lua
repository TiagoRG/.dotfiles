vim.g.mapleader = " "
vim.g.mouse = "a"

vim.opt.updatetime = 50
vim.opt.compatible = false

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 10
vim.opt.colorcolumn = "0"
vim.opt.cursorline = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.scs = true

vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.wrap = false

vim.opt.showmode = false
vim.opt.wildmenu = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true
vim.opt.isfname:append("@-@")
vim.opt.guitablabel = "\\[%N\\]\\ %t\\ %M"

vim.g.copilot_node_command = "/usr/bin/nodenv"
vim.g.copilot_assume_mapped = true
