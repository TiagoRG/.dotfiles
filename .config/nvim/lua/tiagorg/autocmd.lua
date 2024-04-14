vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = {"*"},
    callback = function()
        local save_cursor = vim.fn.getpos(".")
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.setpos(".", save_cursor)
    end,
})

vim.api.nvim_exec([[
    augroup SearchHighlight
        autocmd!
        autocmd CmdlineLeave /,\? :nnoremap <buffer> <Esc> :noh<CR>
        autocmd CmdlineChanged /,\? :nnoremap <buffer> <Esc> :noh<CR>
    augroup END
]], false)

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight yanked text",
    group = vim.api.nvim_create_augroup("HighlightYank", { clear = true}),
    callback = function()
        vim.highlight.on_yank()
    end
})
