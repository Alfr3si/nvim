
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

-- Definir los colores de los signos con colores más suaves de la paleta Nord
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = '#A3BE8C' })           -- Verde claro (Nord 7)
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = '#EBCB8B' })        -- Amarillo claro (Nord 8)
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = '#BF616A' })        -- Rojo claro (Nord 9)
vim.api.nvim_set_hl(0, 'GitSignsChangeDelete', { fg = '#D08770' })  -- Naranja claro (Nord 11)
vim.api.nvim_set_hl(0, 'GitSignsUntracked', { fg = '#8FBCBB' })     -- Azul claro (Nord 6)

vim.api.nvim_set_hl(0, 'GitSignsStagedAdd', { fg = '#A3BE8C' })      -- Verde claro (Nord 7)
vim.api.nvim_set_hl(0, 'GitSignsStagedChange', { fg = '#EBCB8B' })   -- Amarillo claro (Nord 8)
vim.api.nvim_set_hl(0, 'GitSignsStagedDelete', { fg = '#BF616A' })   -- Rojo claro (Nord 9)
vim.api.nvim_set_hl(0, 'GitSignsStagedChangeDelete', { fg = '#D08770' }) -- Naranja claro (Nord 11)
vim.api.nvim_set_hl(0, 'GitSignsStagedUntracked', { fg = '#8FBCBB' }) -- Azul claro (Nord 6)
