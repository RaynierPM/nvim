vim.keymap.set('n', '<C-_>', 'gcc', { remap = true, silent = true })
vim.keymap.set('v', '<C-c>', '"+y', { remap = true, desc = "Copy on OS clipboard" })
vim.keymap.set('n', '<C-s>', ':w<CR>', { remap = true, desc = "Save file shorcut" })
vim.keymap.set('n', '<C-S-o>', ':Ex $PWD<CR>', { remap = true, desc = "Open the current file system file selector" })

-- # general config
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true

-- # Indentation
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.api.nvim_set_option("clipboard", "unnamed")
