local aerial = require("aerial")

aerial.setup({
    layout = {
        width = 50,
        default_direction = "float",
    },

    show_guides = true,

    open_automatic = false,
})

vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>")
vim.keymap.set("n", "}", "<cmd>AerialNext<CR>")
vim.keymap.set("n", "<leader><leader>", aerial.toggle)

