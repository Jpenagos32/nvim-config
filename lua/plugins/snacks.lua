return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        -- bigfile = { enabled = true },
        -- dashboard = { enabled = true },
        explorer = {
            enabled = true,
        },
        indent = { enabled = true }, -- Habilita las lineas de indentado
        --input = { enabled = true },
        picker = {
            enabled = true,
            sources = {
                explorer = {
                    ignored = true,
                    hidden = true, -- Muestra los archivos ocultos por defecto en el explorador
                    layout = {
                        layout = {
                            position = "right" -- Posicion del explorador a la derecha
                        }
                    },
                    auto_close = true, -- Cierra el explorador automaticamente
                },
            },
        },
        -- notifier = { enabled = true },
        -- quickfile = { enabled = true },
        -- scope = { enabled = true },
        -- scroll = { enabled = true },
        -- statuscolumn = { enabled = true },
        -- words = { enabled = true },
    },
    keys = {
        -- Top Pickers & Explorer
        { "<leader><space>", function() Snacks.picker.smart() end,           desc = "Smart Find Files" },
        { "<leader>,",       function() Snacks.picker.buffers() end,         desc = "Buffers" },
        { "<leader>/",       function() Snacks.picker.grep() end,            desc = "Grep" },
        { "<leader>:",       function() Snacks.picker.command_history() end, desc = "Command History" },
        { "<leader>n",       function() Snacks.picker.notifications() end,   desc = "Notification History" },
        { "<leader>e",       function() Snacks.explorer() end,               desc = "File Explorer" },
    }
}
