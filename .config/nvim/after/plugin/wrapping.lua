local opts = {
    auto_set_mode_filetype_allowlist = {
        "asciidoc",
        "gitcommit",
        "html",
        "latex",
        "mail",
        "markdown",
        "rst",
        "tex",
        "text",
    },
    soft_wrap = true,
}

require("wrapping").setup(opts)
