return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    dependencies = {
        'nvim-treesitter/nvim-treesitter'
    },
    init = function()
        -- Disable entire built-in ftplugin mappings to avoid conflicts.
        -- See https://github.com/neovim/neovim/tree/master/runtime/ftplugin for built-in ftplugins.
        vim.g.no_plugin_maps = true

        -- Or, disable per filetype (add as you like)
        -- vim.g.no_python_maps = true
        -- vim.g.no_ruby_maps = true
        -- vim.g.no_rust_maps = true
        -- vim.g.no_go_maps = true
    end,
    config = function()
        -- put your config here
        require('nvim-treesitter-textobjects').setup({
            select = {
                lookahead = true,
                enable = true,
            }
        })
        local select = require('nvim-treesitter-textobjects.select')

        -- Funciones
        vim.keymap.set(
            { 'x', 'o' },
            "af",
            function() select.select_textobject("@function.outer", "textobjects") end,
            { desc = 'Seleccionar funcion completa' }
        )
        vim.keymap.set(
            { 'x', 'o' },
            "if",
            function() select.select_textobject("@function.inner", "textobjects") end,
            { desc = 'Seleccionar cuerpo de funcion' }
        )

        --Condicionales
        vim.keymap.set(
            { 'x', 'o' },
            "ac",
            function() select.select_textobject('@coditional.outer', "textobjects") end,
            { desc = "Seleccionar condicional completo" }
        )
        vim.keymap.set(
            { 'x', 'o' },
            "ic",
            function() select.select_textobject('@conditiona.inner', "textobjects") end,
            { desc = "Seleccionar interior de condicional" }
        )

        -- Bucles
        vim.keymap.set(
            { 'x', 'o' },
            "al",
            function() select.select_textobject('@loop.outer', "textobjects") end,
            { desc = "Seleccionar bucle completo" }
        )
        vim.keymap.set(
            { 'x', 'o' },
            "il",
            function() select.select_textobject('@loop.inner', "textobjects") end,
            { desc = "Seleccionar interior de bucle" }
        )

        -- Scope Local
        vim.keymap.set(
            { 'x', 'o' },
            "as",
            function() select.select_textobject('@local.scope', "locals") end,
            { desc = "Seleccionar alcance local" }
        )
    end,
}
