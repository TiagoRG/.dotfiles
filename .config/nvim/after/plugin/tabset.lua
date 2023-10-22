require("tabset").setup({
    defaults = {
        tabwidth = 4,
        expandtab = true
    },
    languages = {
        asm = {
            tabwidth = 8,
            expandtab = false
        },
        {
            filetypes = { "html", "json", "yaml" },
            config = {
                tabwidth = 2
            }
        }
    }
})
