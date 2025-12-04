vim.g.mapleader = " "

-- Explorador
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Abre el explorador' })

-- Archivos
vim.keymap.set("n", "<leader>ft", "/", { desc = 'Busca palabras dentro del archivo' })
vim.keymap.set("n", "<A-S-k>", ":m -2<CR>", { desc = 'Sube la linea actual' })
vim.keymap.set("n", "<A-S-j>", ":m +1<CR>", { desc = 'Baja la linea actual' })
vim.keymap.set("n", "<leader>i", "gg=G", { desc = 'Indentacion de todo el archivo' })

-- Reemplazar
vim.keymap.set("n", "<leader>rg", ":%s/",
    {
        desc =
        'Reemplaza todas las ocurrencias de la palabra dentro del archivo (usar el flag /c al final para preguntar)'
    }
)

vim.keymap.set(
    "n",
    "<leader>rw",
    ":s/",
    { desc = 'Reemplaza la palabra bajo el cursor (usar flag /g para reemplazar toda la linea)' }
)

-- Ventanas
vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = 'Divide la ventana horizontalmente' })
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = 'Divide la ventana verticalmente' })
vim.keymap.set("n", "<leader>ww", "<C-w>w", { desc = 'Cambia entre ventanas split' })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = 'Cambia a la ventana inferior.' })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = 'Cambia a la ventana superior' })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = 'Cambia a la ventana derecha' })
vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = 'Cambia a la ventana izquierda' })
vim.keymap.set("n", "<leader>w_", "<C-w>_", { desc = 'Maximiza el alto de la ventana' })
vim.keymap.set("n", "<leader>w|", "<C-w>|", { desc = 'Maximiza el ancho de la ventana' })
vim.keymap.set("n", "<leader>w=", "<C-w>=", { desc = 'Iguala el tamaño de todas las ventanas' })
vim.keymap.set("n", "<leader>t", ":botright 8sp|term<CR>", { desc = 'Abre una terminal en la parte inferior' })
vim.keymap.set("n", "<leader>+", "2<C-w>+", { desc = 'Aumenta el tamaño de la ventana en split' })
vim.keymap.set("n", "<leader>-", "2<C-w>-", { desc = 'Disminuye el tamaño de la ventana split' })

-- buffers
vim.keymap.set("n", "gb", ":bn<CR>", {
    desc = 'Cambia al buffer siguiente',
    noremap = true,
    silent = true
})

vim.keymap.set("n", "gB", ":bp<CR>", {
    desc = 'Cambia al buffer anterior',
    noremap = true,
    silent = true
})

vim.keymap.set("n", "<leader>bd", ":bd<CR>", {
    desc = 'Elimina el buffer actual',
    noremap = true,
    silent = true
})

-- Terminal
vim.keymap.set("t", "<C-\\>", "<C-\\><C-n>", { desc = 'Sale del modo terminal y vuelve al modo normal' })

-- Code actions
vim.keymap.set("n", "<leader>aa", "gra", {
    desc = 'Muestra los code actions',
    noremap = true
})

vim.keymap.set("n", "<leader>ai", "gri", {
    desc = 'Muestra las implementaciones del símbolo bajo el cursor',
    noremap = true
})

vim.keymap.set("n", "<leader>an", "grn", {
    desc = 'Renombra todas las referencias del simbolo bajo el cursor',
    noremap = true
})

vim.keymap.set("n", "<leader>ar", "grr", {
    desc = 'Muestra todas las referencias del símbolo bajo el cursor',
    noremap = true
})

vim.keymap.set("n", "<leader>at", "grt", {
    desc = 'Salta a la definicion del tipo del símbolo bajo el cursor',
    noremap = true
})

vim.keymap.set("n", "<leader>at", "grt", {
    desc = 'Salta a la definicion del tipo del símbolo bajo el cursor',
    noremap = true
})
