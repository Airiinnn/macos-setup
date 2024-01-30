local global = vim.g
local o = vim.o

vim.scriptencoding = "utf-8"

-- Map <leader>
global.mapleader = " "
global.maplocalleader = " "

global.loaded_netrw = 1
global.loaded_netrwPlugin = 1

o.clipboard = "unnamedplus"
o.completeopt = "menu,menuone,noselect"
o.mouse = 'a'

-- Tab
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.extendtab = true

-- UI config
o.number = false
o.relativenumber = true
o.cursorline = true
o.splitbelow = true
o.splitright = true
o.showmode = true

-- Searching
o.incsearch = true
o.hlsearch = true
o.ignorecase = true
o.smartcase = false

-- True color terminal
o.termguicolors = true

