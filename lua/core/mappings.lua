vim.g.mapleader = " "

vim.keymap.set('n', '<leader>r', ':luafile %<CR>')

-- NeoTree

vim.keymap.set('n', '<F2>', ':NeoTreeFocusToggle<CR>')

vim.keymap.set('n', '<leader>j', ':bprev<CR>')
vim.keymap.set('n', '<leader>k', ':bnext<CR>')
