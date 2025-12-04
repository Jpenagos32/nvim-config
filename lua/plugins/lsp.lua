return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "phpactor",
            -- "intelephense",
            "html",
            "ts_ls",
            "cssls",
            "css_variables",
            "jsonls",
            "emmet_language_server",
            "laravel_ls"
        },
        automatic_enable = true
    },

    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            }
        },
        {
            "neovim/nvim-lspconfig",
            config = function()
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
                        "vue",
                        "blade",
                    }
                })

                vim.lsp.config('lua_ls', {
                    settings = {
                        Lua = {
                            diagnostics = {
                                disable = { "undefined-global" }
                            }
                        }
                    }
                })
            end
        },
    }
}
