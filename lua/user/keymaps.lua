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
