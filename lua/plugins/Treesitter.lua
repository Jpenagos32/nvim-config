return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install({
            "php",
            "php_only",
            "phpdoc",
            "html",
            "javascript",
            "typescript",
            "tsx",
            "lua",
            "css",
            "markdown",
            "markdown_inline",
            "yaml",
            "typst",
            "blade",
            'java',
            'javadoc'
        })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = {
                'php',
                'html',
                'javascript',
                'lua',
                'javascript',
                'typescript',
                'typescriptreact',
                'javascriptreact',
                'css',
                'markdown',
                'yaml',
                'typst',
                'blade',
                'java'
            },
            callback = function()
                vim.treesitter.start()
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end
        })
    end
}
