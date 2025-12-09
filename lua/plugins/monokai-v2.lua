return {
    "khoido2003/monokai-v2.nvim",
    priority = 1000,
    config = function()
        require("monokai-v2").setup({
            transparent_background = false,
            terminal_colors = true,
            devicons = false,
            filter = "classic" -- pro | classic | light | machine | octagon ristretto | spectrum
        })
        vim.cmd("colorscheme monokai-v2")
    end,
    -- 'tanvirtin/monokai.nvim',
    -- config = function()
    --     vim.cmd('colorscheme monokai_pro')
    --     -- require('monokai').setup({
    --     --     palette = {
    --     --         base1 = "#272822",
    --     --         base2 = "#272822",
    --     --     }
    --     -- })
    -- end
}
