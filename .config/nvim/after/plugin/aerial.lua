local aerial = require("aerial")

aerial.setup({
    layout = {
        width = 0.2,
        default_direction = "prefer_right",
    },

    show_guides = true,

    open_automatic = true,
})

vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>")
vim.keymap.set("n", "}", "<cmd>AerialNext<CR>")
vim.keymap.set("n", "<leader><leader>", aerial.focus)
