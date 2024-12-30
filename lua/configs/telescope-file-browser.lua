
-- Configuración de Telescope con file-browser
require('telescope').setup{
  extensions = {
    file_browser = {
      hidden = true,  -- Habilitar la visualización de archivos ocultos
      hijack_netrw = true,  -- Permite tomar control de la ventana de exploración de archivos
    }
  }
}

-- Carga la extensión de file-browser
--require('telescope').load_extension('file_browser')

