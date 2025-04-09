vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
local opt = vim.opt

opt.relativenumber = true
opt.number = true


-- Easy window splits
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { desc = 'Vertical Split' })
vim.keymap.set('n', '<leader>sh', ':split<CR>', { desc = 'Horizontal Split' })

-- Navigation between windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to upper window' })

-- Resizing
vim.keymap.set('n', '<leader>=', '<C-w>=', { desc = 'Equalize splits' })
