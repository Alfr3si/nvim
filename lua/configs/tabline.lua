
-- plugin_configs/tabline.lua

require('tabline').setup {
    -- Habilitar el plugin
    enable = true,

    -- Opciones adicionales de configuración
    options = {
        -- Configura las secciones
        section_left = { 'buffers', 'close' },   -- Aquí puedes definir los elementos que aparecerán en la parte izquierda
        section_middle = { 'tabs' },              -- Esto muestra las pestañas en el centro
        section_right = { 'line_number', 'location' }, -- Esto muestra la línea y columna a la derecha

        -- Puedes agregar más opciones aquí, como la apariencia de la barra:
        separator = { left = '', right = '' },  -- Separadores personalizados entre secciones
        padding = 2,                             -- Espaciado entre los elementos
    },

     -- Comportamiento de las pestañas
    tabline = {
        -- Muestra el número de pestañas abiertas y la de la pestaña actual
        show_tab_count = true,
        -- Configura si quieres que las pestañas se puedan cerrar o no
        close_button = true,
    },

    -- Sección para personalizar el comportamiento del tabline según el archivo actual
    filetype = {
        ['javascript'] = {
            -- Configuración específica para archivos JavaScript
            section_left = { 'file_name', 'file_type' },
        },
    },
}
