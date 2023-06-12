-- Global Options
vim.g.mapleader = " "
-- vim.cmd([[ let localmapleader = " " ]])

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true
vim.opt.scrolloff = 8

-- Transparent nvim
vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, { "Pmenu", "Float", "NormalFloat" })

-- Transparency
vim.cmd([[ au ColorScheme * hi Normal gui=none ]])

-- Disable new line comment continuation
vim.cmd([[ autocmd BufNewFile,BufRead * setlocal formatoptions-=cro ]])
