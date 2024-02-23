--vim.keymap.set("n", "<leader>e", vim.cmd.E)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set({ "n", "i" }, "<C-S>", vim.cmd.w)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

vim.keymap.set("n", "Q", "@@", { noremap = true, silent = true })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>df", "<cmd>AerialPrev<CR>V$%d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>af", "ggVG")
vim.keymap.set("n", "<leader>ab", "GVgg")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>m", "<cmd>!make > /dev/null<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>so ~/.config/nvim/lua/tiagorg/packer.lua<CR>");

vim.keymap.set("n", "<C-q>", "<cmd>qa<CR>")
vim.keymap.set("n", "<A-t>", "<cmd>tabnew<CR><cmd>NvimTreeFocus<CR>")
vim.keymap.set("n", "<S-Tab>", "<C-w>w")

vim.api.nvim_exec([[
    augroup SearchHighlight
        autocmd!
        autocmd CmdlineLeave /,\? :nnoremap <buffer> <Esc> :nohls<CR>
    augroup END
]], false)
