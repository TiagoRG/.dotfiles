require("toggleterm").setup {
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,

    hide_numbers = true,
    persist_size = true,
    persist_mode = true,
    close_on_exit = true,
    auto_scroll = true,
    shell = vim.o.shell,

    float_opts = {
        border = 'curved',
        width = 200,
        height = 20,
        winblend = 3,
        zindex = 50,
    },

    direction = 'horizontal'
}

vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>")
