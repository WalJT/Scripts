
-- The number of spaces to use for tabs
num_tabs = 2

-- Basic Vim options
vim.o.relativenumber = true
vim.o.number = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.tabstop = num_tabs
vim.o.softtabstop = num_tabs
vim.o.shiftwidth = num_tabs
vim.g.mapleader = " "


-- Plugins
vim.pack.add({
  'https://github.com/rebelot/kanagawa.nvim',
  'https://github.com/nvim-lualine/lualine.nvim',
  { src = 'https://github.com/nvim-mini/mini.nvim', version = 'stable' },

})

-- Set theme
vim.cmd([[colorscheme kanagawa-dragon]])

-- mini.pick file picker
require('mini.pick').setup({})

-- Configure Lualine
require('lualine').setup()
vim.o.cmdheight = 0

