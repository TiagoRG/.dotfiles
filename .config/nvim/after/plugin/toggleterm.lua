require("toggleterm").setup {
    size = function(term)
        if term.direction == "horizontal" then
            return 10
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.3
        end
    end,

    hide_numbers = true,
    persist_size = false,
    persist_mode = true,
    close_on_exit = true,
    auto_scroll = true,
    shell = vim.o.shell,

    float_opts = {
        border = 'curved',
        width = vim.o.columns * 0.8,
        height = vim.o.lines * 0.8,
        winblend = 3,
        zindex = 50,
    },

    -- direction = 'horizontal'
    direction = 'float'
}

-- ToggleTerm non terminal mode keybinds
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>")
vim.keymap.set("n", "<leader>vl", "<cmd>ToggleTermCurrentLine<CR>")
vim.keymap.set("n", "<leader>vv", "<cmd>ToggleTermVisualLines<CR>")
vim.keymap.set("n", "<leader>vs", "<cmd>ToggleTermVisualSelection<CR>")

-- ToggleTerm terminal mode keybinds
vim.keymap.set("t", "<esc>", "<C-\\><C-n>")
