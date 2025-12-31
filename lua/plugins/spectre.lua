return {
    "nvim-pack/nvim-spectre",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require('spectre').setup({
            open_cmd = 'botright new',
            mapping = {
                ['delete_line'] = {
                    map = '<leader>rd',
                    -- cmd = "<cmd>lua require('spectre.actions').run_delete_line()<CR>",
                    cmd = "<cmd>lua print('¡CUIDADO! Comando de borrado deshabilitado para proteger tu código')<cr>",
                    desc = 'Accion de borrado deshabilitado',
                }
            }
        })
        vim.keymap.set('n', '<leader>ss', '<cmd>lua require("spectre").toggle()<CR>', {
            desc = "Toggle Spectre"
        })
        vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
            desc = "Search current word (Spectre)"
        })
        vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
            desc = "Search current word (Spectre)"
        })
        vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
            desc = "Search on current file (Spectre)"
        })
        vim.keymap.set('v', '<leader>sp', '<esc><cmd>lua require("spectre").open_file_search()<CR>', {
            desc = "Search on current file (Spectre)"
        })
    end
}
