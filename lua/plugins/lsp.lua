return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable({
            "lua_ls",
            "phpactor",
            "html",
            "ts_ls",
            "cssls",
            "css_variables",
            "jsonls"
        })
    end
}
