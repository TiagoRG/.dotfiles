require("tabset").setup({
    defaults = {
        tabwidth = 4,
        expandtab = true
    },
    languages = {
        {
            filetypes = { "html", "json", "yaml", "xml" },
            config = {
                tabwidth = 2
            }
        },
        {
            filetypes = { "asm" },
            config = {
                tabwidth = 8,
                expandtab = false
            }
        },
    }
})
