
-- plugin_configs/telescope.lua

require('telescope').setup {
    defaults = {
	layout_config = {
            prompt_position = "top",  -- Esto coloca la barra de búsqueda encima de los resultados
	     width = 0.7,             -- Ajusta el ancho (80% de la pantalla)
             height = 0.8,            -- Ajusta la altura (90% de la pantalla)
	  },
	 borderchars = {
--            '─', '│', '─', '│', '┌', '┐', '┘', '└'  -- Estos son los bordes que se utilizan
--	      '━', '┃', '━', '┃', '┏', '┓', '┛', '┗'  -- Estos son los bordes que se utilizan
              '─', '│', '─', '│', '╭', '╮', '╯', '╰'
  },
        mappings = {
            i = {
                ["<C-n>"] = require('telescope.actions').move_selection_next,
                ["<C-p>"] = require('telescope.actions').move_selection_previous,
            },
        },
        -- Desactivar la vista previa globalmente
        preview = {
            hide_on_startup = true,  -- Esto asegura que la vista previa esté oculta al inicio
	    timeout = 200,              -- Tiempo en milisegundos antes de que la vista previa se actualice
        },
	    sorting_strategy = "ascending", -- Orden ascendente: carpetas/archivos desde arriba hacia abajo
    },
    pickers = {
        -- Aseguramos que el previewer esté desactivado solo para live_grep
        live_grep = {
            previewer = false,  -- Desactiva la vista previa en live_grep
        },
    },
}

-- Mapeo para abrir Telescope con archivos y buscar archivos ocultos
local builtin = require('telescope.builtin')

--buscar archivos (incluyendo los ocultos)
vim.keymap.set('n', '<leader>ff', function()
    builtin.find_files({
        prompt_title = "Find Files",
        hidden = true, -- Incluir archivos ocultos
        file_ignore_patterns = { "node_modules", "*.git/*" },  -- Ignorar ciertas carpetas
    })
end, { desc = 'Telescope find files' })

-- Mapeo para buscar live grep
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Colores personalizados para Telescope
vim.cmd [[
  hi TelescopePromptBorder guifg=#FEEC37      " Color del borde de la barra de búsqueda
  hi TelescopePromptNormal guibg=NONE        " Fondo de la barra de búsqueda
  hi TelescopePromptPrefix guifg=#7CF5FF        " Color del prefijo en la barra de búsqueda
  hi TelescopeResultsBorder guifg=#9b59b6          " Color del borde de los resultados
  hi TelescopeResultsNormal guibg=NONE          " Fondo de los resultados
  hi TelescopeSelection guibg=#444444           " Color de la selección en los resultados
  hi TelescopeMatching guifg=#7CF5FF            " Color para las coincidencias en los resultados
  hi TelescopeTitle guifg=#FEEC37             " Color del título
]]
