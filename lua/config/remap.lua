vim.g.mapleader = " "
local keymap = vim.keymap.set

-- Explorador
-- keymap("n", "<leader>pv", vim.cmd.Ex, { desc = 'Abre el explorador' })
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- Archivos
keymap("n", "<leader>ft", "/", { desc = 'Busca palabras dentro del archivo' })
keymap("n", "<A-S-k>", ":m -2<CR>", { desc = 'Sube la linea actual' })
keymap("n", "<A-S-j>", ":m +1<CR>", { desc = 'Baja la linea actual' })
keymap("n", "<leader>i", "gg=G", { desc = 'Indentacion de todo el archivo' })

-- Reemplazar
keymap("n", "<leader>rg", ":%s/",
    {
        desc =
        'Reemplaza todas las ocurrencias de la palabra dentro del archivo (usar el flag /c al final para preguntar)'
    }
)

keymap(
    "n",
    "<leader>rw",
    ":s/",
    { desc = 'Reemplaza la palabra bajo el cursor (usar flag /g para reemplazar toda la linea)' }
)

keymap("n", '<leader>gU', 'viwU', { desc = 'Convierte la palabra bajo el cursor a mayusculas', silent = true })
keymap("n", '<leader>gu', 'viwu', { desc = 'Convierte la palabra bajo el cursor a minusculas', silent = true })
keymap("n", '<leader>gt', 'viw~', { desc = 'Alterna entre mayusculas y minusculas', silent = true })
keymap("n", '<leader>gp', 'bgUl', { desc = 'Pone la primera letra de la palabra en mayusculas', silent = true })

-- Ventanas
keymap("n", "<leader>ws", "<C-w>s", { desc = 'Divide la ventana horizontalmente' })
keymap("n", "<leader>wv", "<C-w>v", { desc = 'Divide la ventana verticalmente' })
keymap("n", "<leader>ww", "<C-w>w", { desc = 'Cambia entre ventanas split' })
keymap("n", "<leader>wj", "<C-w>j", { desc = 'Cambia a la ventana inferior.' })
keymap("n", "<leader>wk", "<C-w>k", { desc = 'Cambia a la ventana superior' })
keymap("n", "<leader>wl", "<C-w>l", { desc = 'Cambia a la ventana derecha' })
keymap("n", "<leader>wh", "<C-w>h", { desc = 'Cambia a la ventana izquierda' })
keymap("n", "<leader>w_", "<C-w>_", { desc = 'Maximiza el alto de la ventana' })
keymap("n", "<leader>w|", "<C-w>|", { desc = 'Maximiza el ancho de la ventana' })
keymap("n", "<leader>w=", "<C-w>=", { desc = 'Iguala el tamaño de todas las ventanas' })
keymap("n", "<leader>t", ":term<CR>i", { desc = 'Abre una terminal', silent = true })
keymap("n", "<leader>+", "2<C-w>+", { desc = 'Aumenta el tamaño de la ventana en split' })
keymap("n", "<leader>-", "2<C-w>-", { desc = 'Disminuye el tamaño de la ventana split' })

-- buffers
keymap("n", "gb", ":bn<CR>", {
    desc = 'Cambia al buffer siguiente',
    noremap = true,
    silent = true
})

keymap("n", "gB", ":bp<CR>", {
    desc = 'Cambia al buffer anterior',
    noremap = true,
    silent = true
})

keymap("n", "<leader>bd", ":bd<CR>", {
    desc = 'Elimina el buffer actual',
    noremap = true,
    silent = true
})

keymap("n", "<leader>ba", ":%bd<CR>", {
    desc = 'Elimina TODOS los buffers',
    noremap = true,
    silent = true
})

-- Terminal
keymap("t", "<C-\\>", "<C-\\><C-n>", { desc = 'Sale del modo terminal y vuelve al modo normal' })

-- Markdown
keymap('n', '<leader>mp', ':MarkdownPreviewToggle<CR>', {
    desc = 'Inicia o detiene el m Markdown Preview',
    silent = true
})

-- Autocompletado
keymap('i', '"', '""<left>', { noremap = true, silent = true })
keymap("i", "'", "''<left>", { noremap = true, silent = true })
keymap('i', '(', '()<left>', { noremap = true, silent = true })
keymap('i', '[', '[]<left>', { noremap = true, silent = true })
keymap('i', '{', '{}<left>', { noremap = true, silent = true })
keymap('i', '<', '<><left>', { noremap = true, silent = true })
