-- Trim trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = {"*"},
    callback = function()
        local save_cursor = vim.fn.getpos(".")
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.setpos(".", save_cursor)
    end,
})

-- Highlight search results
vim.api.nvim_create_autocmd({"CmdlineLeave", "CmdlineChanged"}, {
    group = vim.api.nvim_create_augroup("SearchHighlight", { clear = true }),
    pattern = { "/", "\\?" },
    callback = function()
        vim.cmd([[nnoremap <buffer> <Esc> :noh<CR>]])
    end
})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight yanked text",
    group = vim.api.nvim_create_augroup("HighlightYank", { clear = true}),
    callback = function()
        vim.highlight.on_yank()
    end
})

-- Set filetype for antlr4 files
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = {"*.g4"},
    command = "set filetype=antlr4"
})
