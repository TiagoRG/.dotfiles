local builtin = require('telescope.builtin')
local trouble = require("trouble.sources.telescope")

-- File pickers
vim.keymap.set('n', '<leader>pf', "<cmd>Telescope find_files hidden=true<CR>", {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Git pickers
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_stash, {})

-- LSP pickers
vim.keymap.set('n', '<leader>pe', trouble.open, {})

-- Help pickers
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
vim.api.nvim_create_user_command('Help',function()
    builtin.help_tags()
end,{})
