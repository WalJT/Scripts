
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


-- Plugins
vim.pack.add({
  'https://github.com/rebelot/kanagawa.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/nvim-lualine/lualine.nvim'
})

-- Set theme
vim.cmd([[colorscheme kanagawa-dragon]])

-- Configure Lualine
require('lualine').setup()
vim.o.cmdheight = 0

