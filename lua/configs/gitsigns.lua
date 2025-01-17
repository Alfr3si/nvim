
require('gitsigns').setup {
  signs = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signs_staged = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signs_staged_enable = true,
  signcolumn = true,
  numhl      = false,
  linehl     = false,
  word_diff  = false,
  watch_gitdir = {
    follow_files = true
  },
  auto_attach = true,
  attach_to_untracked = false,
  current_line_blame = false,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol',
    delay = 1000,
    ignore_whitespace = false,
    virt_text_priority = 100,
    use_focus = true,
  },
  current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil,
  max_file_length = 40000,
  preview_config = {
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  }
}


-- Definir los colores de los signos con la paleta personalizada
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = '#50FA7B' })           -- Verde claro
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = '#F1FA8C' })        -- Amarillo claro
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = '#FF5555' })        -- Rojo claro
vim.api.nvim_set_hl(0, 'GitSignsChangeDelete', { fg = '#FF79C6' })  -- Rosa
vim.api.nvim_set_hl(0, 'GitSignsUntracked', { fg = '#8BE9FD' })     -- Azul claro

vim.api.nvim_set_hl(0, 'GitSignsStagedAdd', { fg = '#69FF94' })      -- Verde más claro
vim.api.nvim_set_hl(0, 'GitSignsStagedChange', { fg = '#FFFFA5' })   -- Amarillo más claro
vim.api.nvim_set_hl(0, 'GitSignsStagedDelete', { fg = '#FF6E6E' })   -- Rojo más claro
vim.api.nvim_set_hl(0, 'GitSignsStagedChangeDelete', { fg = '#FF92D0' }) -- Rosa más claro
vim.api.nvim_set_hl(0, 'GitSignsStagedUntracked', { fg = '#A4FFFF' }) -- Azul más claro
