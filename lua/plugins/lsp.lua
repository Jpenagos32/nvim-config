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
            "jsonls",
            "emmet_language_server"
        })

        vim.lsp.config('emmet_language_server', {
            filetypes = {
                "php",
                "astro",
                "css",
                "eruby",
                "html",
                "htmlangular",
                "htmldjango",
                "javascriptreact",
                "less",
                "pug",
                "sass",
                "scss",
                "svelte",
                "templ",
                "typescriptreact",
                "vue"
            }
        })
    end
}
