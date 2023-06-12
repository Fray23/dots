local set = vim.opt
local g = vim.g

set.encoding = 'UTF-8'
set.number = true
set.relativenumber = true
set.tabstop = 8
set.softtabstop = 0
set.shiftwidth = 4
set.expandtab = true
set.smarttab = true
-- set.cursorline = true
set.clipboard = 'unnamedplus'
set.list = true
set.lcs='space:·'
g.mapleader='\\'

vim.o.termguicolors = true
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', 'm', '<CR>')
-- vim.keymap.set('v', 'p', 'P')

vim.keymap.set('n', '<A-k>', ':resize +5<cr>')
vim.keymap.set('n', '<A-j>', ':resize -5<cr>')
vim.keymap.set('n', '<A-K>', ':vertical resize -5<cr>')
vim.keymap.set('n', '<A-J>', ':vertical resize +5<cr>')

