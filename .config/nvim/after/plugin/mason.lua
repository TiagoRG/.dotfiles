require("mason-lspconfig").setup {
    ensure_installed = {
        "ansiblels",
        "ast_grep",
        "bashls",
        "clangd",
        "cmake",
        "docker_compose_language_service",
        "dockerls",
        "jsonls",
        "jdtls",
        "lua_ls",
        "pyright",
        "ts_ls"
    },
    automatic_installation = false,
}
