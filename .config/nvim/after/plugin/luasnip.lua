require("luasnip.loaders.from_snipmate").load({ path = { "$HOME/.config/nvim/snippets/" } })

local ls = require("luasnip")
vim.keymap.set({"i", "s"}, "<C-D>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-C>", function() ls.jump(-1) end, {silent = true})
