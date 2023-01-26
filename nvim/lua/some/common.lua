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
set.cursorline = true
set.clipboard = 'unnamed'
set.list = true
-- set.lcs='space:·'
g.mapleader=','

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('i', 'jk', '<esc>')

