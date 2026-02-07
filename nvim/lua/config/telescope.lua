
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-s>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-a>', builtin.live_grep, { desc = 'Telescope find files' })
