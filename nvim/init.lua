
-- The number of spaces to use for tabs
num_tabs = 2

-- Basic Vim options
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.tabstop = num_tabs
vim.o.softtabstop = num_tabs
vim.o.shiftwidth = num_tabs

-- Load lazy.nvim
require("config.lazy")

-- Configure telescope
require("config.telescope")

-- Configure Lualine
require("config.lualine")
vim.o.cmdheight = 0
