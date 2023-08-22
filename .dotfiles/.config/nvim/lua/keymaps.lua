local builtin = require('telescope.builtin')
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = ' '


map('n', '<leader>pv', ':Vex<CR>', opts)
map('n', '<C-j>', ':cnext<CR>', opts)
map('n', '<C-k>', ':cprev<CR>', opts)
map('n', '<leader>pf', ':Explore<CR>', opts)
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>gg", "gg: LazyGit<CR>", opts)






