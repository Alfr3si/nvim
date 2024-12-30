
-- plugin_configs/lualine.lua

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nightfly',  -- Puedes cambiar esto al tema que prefieras
    component_separators ={ left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},  -- Comentado para quitar esta sección
    lualine_y = {'progress'},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},  -- Comentado para quitar esta sección
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
