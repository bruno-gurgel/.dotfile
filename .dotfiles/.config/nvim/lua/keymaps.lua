local builtin = require('telescope.builtin')
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = ' '


map('n', '<leader>pv', ':Vex<CR>', opts)
map('n', '<C-p>', ':GFiles<CR>', opts)
map('n', '<leader>pf', ':Files<CR>', opts)
map('n', '<C-j>', ':cnext<CR>', opts)
map('n', '<C-k>', ':cprev<CR>', opts)
map('n', '<C-t>', ':NvimTreeToggle<CR>', opts)
map('n', '<C-e>', ':Explore<CR>', opts)
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

