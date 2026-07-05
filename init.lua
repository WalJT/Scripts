
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

vim.pack.add({
--  'https://github.com/rebelot/kanagawa.nvim',
  { src = 'https://github.com/nvim-mini/mini.nvim', version = 'stable' },

})

-- Load components of mini.nvim that I use
require('mini.icons').setup()
require('mini.git').setup()
require('mini.pick').setup()
require('mini.statusline').setup()


-- leader + ff -> mini.pick
vim.keymap.set("n", "<leader>ff", function()
  vim.cmd("Pick files")
end, { desc = "Pick files (mini.pick)" })

