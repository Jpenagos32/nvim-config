vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.wrap = true               -- es para el linewrap
vim.opt.clipboard = "unnamedplus" -- sincroniza la papelera de neovim con la papelera del sistema operativo

-- Habilita texto informativo
vim.diagnostic.config({
    virtual_text = true
})
