vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", ":/")
vim.keymap.set("n", "<leader>t", ":botright 8sp|term<CR>") --Abre una terminal en la parte inferior
vim.keymap.set("n", "<leader>+", "2<C-w>+") -- aumenta el tamaño de la ventana en split
vim.keymap.set("n", "<leader>-", "2<C-w>-")-- disminute el tamaño de la ventana split
vim.keymap.set("n", "<leader>w", "<C-w>w")-- cambia entre ventanas
