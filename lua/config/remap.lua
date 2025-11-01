vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex, {desc = 'Abre el explorador'})
vim.keymap.set("n", "<leader>f", ":/", {desc = 'Busca palabras dentro del archivo'})
vim.keymap.set("n", "<leader>t", ":botright 8sp|term<CR>", {desc = 'Abre una terminal en la parte inferior'}) 
vim.keymap.set("n", "<leader>+", "2<C-w>+", {desc = 'Aumenta el tamaño de la ventana en split'}) 
vim.keymap.set("n", "<leader>-", "2<C-w>-", {desc = 'Disminuye el tamaño de la ventana split'})
vim.keymap.set("n", "<leader>w", "<C-w>w", {desc = 'Cambia entre ventanas split'})
