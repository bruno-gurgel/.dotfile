local opt = vim.opt
local cmd = vim.cmd


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

vim.g.mapleader = " "


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    'junegunn/fzf.vim',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'onsails/lspkind-nvim',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim', tag = '0.1.2', branch = '0.1.x',dependencies = { 'nvim-lua/plenary.nvim' },
    'nvim-telescope/telescope-fzy-native.nvim',
    "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {},
    'nvim-lualine/lualine.nvim',
    'nvim-tree/nvim-web-devicons',
    "L3MON4D3/LuaSnip", version = "2.*", build = "make install_jsregexp",
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", dependencies = { 'JoosepAlviste/nvim-ts-context-commentstring' },
    'windwp/nvim-autopairs', event = "InsertEnter", opts = {},
    "nvim-telescope/telescope-file-browser.nvim", dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    'nvimdev/lspsaga.nvim', dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    'jose-elias-alvarez/null-ls.nvim',
    'MunifTanjim/prettier.nvim',
    'lewis6991/gitsigns.nvim',
    'github/copilot.vim',
    'tpope/vim-commentary',
    'tpope/vim-rhubarb',
    'tpope/vim-fugitive',
    'tpope/vim-surround',
    'windwp/nvim-ts-autotag',
    'ThePrimeagen/harpoon',
    'mfussenegger/nvim-dap',
    "jay-babu/mason-nvim-dap.nvim",
    "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, opts = {},
    "folke/zen-mode.nvim", opts = {},
    "ThePrimeagen/refactoring.nvim", dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("refactoring").setup()
    end,
    "lukas-reineke/indent-blankline.nvim",
    'norcalli/nvim-colorizer.lua',
    'JoosepAlviste/nvim-ts-context-commentstring', build = ":TSUpdate", dependencies = { "nvim-treesitter/nvim-treesitter" },
    "kdheepak/lazygit.nvim", dependencies = { "nvim-lua/plenary.nvim" },
  }, {})

  vim.cmd[[colorscheme tokyonight]]
