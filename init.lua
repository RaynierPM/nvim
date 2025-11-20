require("config.lazy")

vim.keymap.set('n', '<C-_>', 'gcc', { remap = true, silent = true, desc = "Command to comment text/code" })
vim.keymap.set('v', '<C-_>', 'gcc', { remap = true, silent =  true, desc = "Command to comment text/code" })
vim.keymap.set('v', '<C-c>', '"+y', { remap = true, desc = "Copy on OS clipboard" })
vim.keymap.set('n', '<C-s>', ':w<CR>', { remap = true, desc = "Save file shorcut" })

vim.keymap.set('n', '<C-A-o>', ':Ex $PWD<CR>', { remap = true, desc = "Open the current file system file selector" })

vim.keymap.set('n', '<C-a>', 'gg0v<S-g><S-$>', { remap = true, desc = "Select all te content on file" })

-- Tabs - Not working yet
vim.keymap.set('n', '<C-Right>', 'gt', { remap = true, desc = "Go to the next tab" })
vim.keymap.set('n', '<C-Left>', 'gT', { remap = true, desc = "Go to the previous tab" })
-- vim.keymap.set('n', '<C-S-o>', ':tabnew<cr>', { remap = true, desc = "Create a new tab" })
-- vim.keymap.set('n', '<C-w>', ':tabclose<cr>', { remap = true, desc = "Close the current tab" })

-- # general config
vim.opt.number = true
vim.opt.cursorline = true

-- # Indentation
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.api.nvim_set_option("clipboard", "unnamed")

-- Plugins customization
-- Telescope
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, { desc = 'Telescope help tags' })

-- Lazy
local lazy = require("lazy")
vim.keymap.set('n', '<leader>ls', lazy.show, { desc = "Showing the lazy dashboard" })

