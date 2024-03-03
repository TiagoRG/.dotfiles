require("tabset").setup({
    defaults = {
        tabwidth = 4,
        expandtab = true
    },
    languages = {
        {
            filetypes = { "html", "json", "yaml", "xml", "markdown" },
            config = {
                tabwidth = 2
            }
        },
        {
            filetypes = { "asm", "s" },
            config = {
                tabwidth = 8,
                expandtab = false
            }
        },
        {
            filetypes = { "Makefile", "make", "snippets" },
            config = {
                tabwidth = 4,
                expandtab = false
            }
        }
    }
})
