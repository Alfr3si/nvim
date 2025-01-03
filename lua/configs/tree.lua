
-- plugin_configs/nvim_tree.lua

require'nvim-tree'.setup {
  view = {
    width = 30,
    side = 'left',
  },
}

-- separador de color gris medio
vim.cmd("highlight WinSeparator guibg=None guifg=#808080") -- Gris medio
