--[[ keys.lua ]]
local builtin = require('telescope.builtin')

-- don't allow arrow keys
vim.keymap.set('', '<up>', '<nop>', {})
vim.keymap.set('', '<down>', '<nop>', {})
vim.keymap.set('', '<left>', '<nop>', {})
vim.keymap.set('', '<right>', '<nop>', {})

-- remap the key used to leave insert mode
vim.keymap.set('i', 'jk', '<Esc>', {})
vim.keymap.set('v', 'jk', '<Esc>', {})
-- don't allow escape in insert and visual mode
vim.keymap.set('i', '<Esc>', '<nop>', { noremap  = true })
vim.keymap.set('v', '<Esc>', '<nop>', { noremap  = true })

-- telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fc', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

