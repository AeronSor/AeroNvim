local set = vim.opt

-- Global (vim.o)
vim.o.termguicolors = true

-- Change tabbing behaviour
set.expandtab = true
set.shiftwidth = 4
set.softtabstop = 4

-- Cursor
set.cursorline = true
set.number = true 
set.mouse = 'a'

-- Relative numbering
set.relativenumber = true

-- Make the cwd be the same as file opened
set.autochdir = true

-- Vimscript
vim.cmd "colorscheme alduin" 
vim.cmd "syntax enable"

-- Lua calls
vim.diagnostic.config({virtual_text = false})
