vim.g.mapleader = " "

-- Explorador
vim.keymap.set("n","<leader>pv", vim.cmd.Ex, {desc = 'Abre el explorador'})

-- Archivos
vim.keymap.set("n", "<leader>ft", ":/", {desc = 'Busca palabras dentro del archivo'})
vim.keymap.set("n", "<A-S-k>", ":m -2<CR>", {desc = 'Sube la linea actual'})
vim.keymap.set("n", "<A-S-j>", ":m +1<CR>", {desc = 'Baja la linea actual'})
vim.keymap.set("n", "<leader>i", "gg=G", {desc = 'Indentacion de todo el archivo'})
vim.keymap.set("n", "<leader>rg", ":%s/", {desc = 'Reemplaza todas las ocurrencias de la palabra dentro del archivo'})
vim.keymap.set("n", "<leader>rw", ":s/", {desc = 'Reemplaza la palabra bajo el cursor'})

-- Ventanas
vim.keymap.set("n", "<leader>ws", "<C-w>s", {desc = 'Crea una nueva ventana horizontal'})
vim.keymap.set("n", "<leader>wv", "<C-w>v", {desc = 'Crea una nueva ventana vertical'})
vim.keymap.set("n", "<leader>ww", "<C-w>w", {desc = 'Cambia entre ventanas split'})
vim.keymap.set("n", "<leader>t", ":botright 8sp|term<CR>", {desc = 'Abre una terminal en la parte inferior'}) 
vim.keymap.set("n", "<leader>+", "2<C-w>+", {desc = 'Aumenta el tamaño de la ventana en split'}) 
vim.keymap.set("n", "<leader>-", "2<C-w>-", {desc = 'Disminuye el tamaño de la ventana split'})
