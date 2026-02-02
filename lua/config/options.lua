vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.clipboard = {
  name = 'win32yank',
  copy = {
    ['+'] = 'win32yank.exe -i --crlf',
    ['*'] = 'win32yank.exe -i --crlf',
  },
  paste = {
    ['+'] = 'win32yank.exe -o --lf',
    ['*'] = 'win32yank.exe -o --lf',
  },
  cache_enabled = 0,
}
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.termguicolors = true
vim.opt.hlsearch = true
vim.opt.textwidth = 130
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.mouse = ""
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.conceallevel = 1
vim.opt.foldenable = true
