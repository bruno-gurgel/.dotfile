local g = vim.g
local opt = vim.opt
local cmd = vim.cmd
local Plug = vim.fn['plug#']



opt.scrolloff=8
opt.number = true
opt.relativenumber = true
opt.tabstop=2 softtabstop=2
opt.shiftwidth=2
opt.expandtab = true
opt.smartindent = true
opt.hls = true
opt.is = true
opt.hlsearch = true
opt.incsearch = true
opt.foldlevel = 20
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

cmd[[
let g:python3_host_prog="/usr/bin/python3"
]]

vim.call('plug#begin', '~/.vim/plugged')
Plug('nvim-treesitter/nvim-treesitter', {
  ['do'] = function()
    vim.call('TSUpdate')
  end
})
cmd[[
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
]]
cmd[[
Plug 'neoclide/coc.nvim', {'branch': 'release'}
]]
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lualine/lualine.nvim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'github/copilot.vim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'preservim/nerdcommenter'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'glepnir/dashboard-nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wakatime/vim-wakatime'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'phaazon/hop.nvim'
Plug 'sindrets/diffview.nvim'
vim.call('plug#end')



cmd[[
colorscheme gruvbox
]]

cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=700})
augroup END
]]
