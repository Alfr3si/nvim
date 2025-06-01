--these add options to Neovim
--abreviations
local opt = vim.opt
local g = vim.g

g.mapleader = " "
g.maplocalleader = " "
opt.number = true
opt.relativenumber = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.termguicolors = true
opt.hlsearch = true
opt.textwidth = 80
opt.autoindent = true
opt.smartindent = true
opt.mouse = ""
opt.clipboard = "unnamedplus"
opt.cursorline = true
