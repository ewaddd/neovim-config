vim.g.mapleader = ' '

vim.keymap.set('i', 'jj', '<ESC>')

-- Clear search highlight
vim.keymap.set('n', '<leader>ch', ':nohl<CR>')

-- Window management
vim.keymap.set('n', '<leader>sv', '<C-w>v')     -- split window vertically
vim.keymap.set('n', '<leader>sh', '<C-w>s')     -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=')     -- make split windows equal width & height
vim.keymap.set('n', '<leader>sx', ':close<CR>') -- close current split window
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')      -- Move down
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')      -- Move up
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')      -- Move left
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')      -- Move right

-- ThePrimeagen's keymaps
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
