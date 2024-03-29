-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width = 40,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
        -- don't hide gitignored files
        git_ignored = false,
    },
})

vim.keymap.set({'n', 'i'}, '<C-t>', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>")
