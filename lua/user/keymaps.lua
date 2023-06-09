-- Keybindings
vim.keymap.set('n', '<leader>fs', '<cmd>update!<Cr>', {desc = 'Save'})

-- Copy & Paste to system clipboard
vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')

-- Delete text without changing registers
vim.keymap.set({'n', 'x'}, 'cv', '"+p')

-- Select all text in current buffer
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- Leader
vim.keymap.set('n', '<Space>', '<Nop>', { silent = false, remap = false })

-- Exit
vim.keymap.set('n', '<leader>q', '<cmd> :q<CR>')

-- Window / split navigation
vim.keymap.set('n', '<C-H>', '<C-W><C-H>')
vim.keymap.set('n', '<C-J>', '<C-W><C-J>')
vim.keymap.set('n', '<C-K>', '<C-W><C-K>')
vim.keymap.set('n', '<C-L>', '<C-W><C-L>')

-- NvimTree
vim.keymap.set('n', '<C-A>', require('nvim-tree.api').fs.create)

-- Swap windows / splits
-- vim.keymap.set('n', '<C-R>', '<C-W><C-R>')

-- Vimtex View
vim.keymap.set('n', '<leader>v', '<plug>:(vimtex-view)', { silent = false, remap = true })
