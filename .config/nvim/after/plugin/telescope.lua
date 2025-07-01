local telescope = require('telescope')
local builtin = require('telescope.builtin')
local trouble = require("trouble.sources.telescope")

telescope.load_extension('aerial')

telescope.setup({
    defaults = {
        vimgrep_arguments = { "rg", "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case", "--hidden", "--no-ignore" },
        file_ignore_patterns = {
            "node_modules", "vendor", "bower_components", "target", ".venv", "__pycache__",
            "dist", "%.pyc", "%.pyo", "%.pyd",
            "%.class", "%.jar",
            "%.o", "%.obj", "%.dll", "%.exe", "%.so",
            "%.dylib",
            "%.zip", "%.tar",
            "%.git", "%.cache",
            "%.next", "%.nuxt",
            "%.vscode", "%.idea",
            "build", "install", "coverage",
        }
    },
    extensions = {
        aerial = {
            -- How to format the symbols
            format_symbol = function(symbol_path, filetype)
                if filetype == "json" or filetype == "yaml" then
                    return table.concat(symbol_path, ".")
                else
                    return symbol_path[#symbol_path]
                end
            end,
            -- Available modes: symbols, lines, both
            show_columns = "both",
        },
    },
})

-- File pickers
vim.keymap.set('n', '<leader>pf', "<cmd>Telescope find_files hidden=true no_ignore=true<CR>", {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Context pickers
vim.keymap.set('n', '<leader>pa', "<cmd>Telescope aerial<CR>", {})

-- Git pickers
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_stash, {})

-- LSP pickers
vim.keymap.set('n', '<leader>pe', trouble.open, {})

-- Help pickers
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
vim.api.nvim_create_user_command('Help', function()
    builtin.help_tags()
end, {})

