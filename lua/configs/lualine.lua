require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nightfly',  -- Puedes cambiar esto al tema que prefieras
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { {
      'branch',
      color= { fg= '#FFB84D', bg= '#444444', gui = 'bold'}
    },
      'diagnostics'},
    lualine_c = { 'filename' },
    lualine_x = {
      {
        'diff',
        symbols = {
          added = '󰌴 ',  -- Icono para añadido
          modified = '󱅄 ', -- Icono para modificado
          removed = '󱅁 ',  -- Icono para eliminado
        },
        colored = true, -- Habilita colores personalizados
        diff_color = {
          added = { fg = '#98c379' },    -- Verde para añadidos
          modified = { fg = '#61afef' }, -- Amarillo para modificados
          removed = { fg = '#e06c75' },  -- Rojo para eliminados
        },
        source = function()
          local gitsigns = vim.b.gitsigns_status_dict
          if gitsigns then
            return {
              added = gitsigns.added,
              modified = gitsigns.changed,
              removed = gitsigns.removed
            }
          end
        end
      },
      'diagnostics','filetype'
    },
    lualine_y = {},
    lualine_z = {
      { 'progress', separator = { left = '' } } -- Agregado con separadores
    }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
