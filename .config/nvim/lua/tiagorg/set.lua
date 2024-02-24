vim.g.mapleader = " "
vim.g.mouse = "a"

vim.opt.updatetime = 50
vim.opt.wrap = false

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "0"

vim.opt.smartindent = true

vim.opt.hls = true
vim.opt.is = true
vim.opt.ic = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true
vim.opt.isfname:append("@-@")
vim.opt.guitablabel = "\\[%N\\]\\ %t\\ %M"


vim.g.copilot_node_command = "/usr/bin/nodenv"
vim.g.copilot_assume_mapped = true
