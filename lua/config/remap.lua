vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", ":/")
vim.keymap.set("n", "<leader>t", vim.cmd.terminal)
vim.keymap.set("n", "<leader>+", "<C-w>+") -- aumenta el tamaño de la ventana en split
vim.keymap.set("n", "<leader>-", "<C-w>-")-- disminute el tamaño de la ventana split
vim.keymap.set("n", "<leader>w", "<C-w>w")-- cambia entre ventanas
