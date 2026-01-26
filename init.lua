
local Plug = vim.fn['plug#']

vim.o.number = true
vim.o.wrap = false

vim.call('plug#begin')
Plug ('brianhuster/live-preview.nvim')
vim.call('plug#end')


