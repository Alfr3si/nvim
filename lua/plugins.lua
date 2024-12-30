
-- plugins.lua

-- Configura Packer
return require('packer').startup(function(use)
  -- Packer puede gestionarse a sí mismo
  use 'wbthomason/packer.nvim'

  -- Plugin dashboard
  use 'glepnir/dashboard-nvim'

  -- Plugin de transparencia
  use 'xiyaowong/transparent.nvim'

  -- Plugin para tabline
  use 'kdheepak/tabline.nvim'

  -- Status Bar
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-tree/nvim-web-devicons'  -- Para los iconos

  -- IDE >> plugin de tree
  use 'kyazdani42/nvim-tree.lua'

  -- Asegúrate de tener esta línea dentro de la sección de plugins en tu archivo init.lua
  use 'windwp/nvim-autopairs'

  -- Autocompletado para lenguajes de programación
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Telescope para búsqueda
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'  -- Requerido por telescope

  -- Agregar el plugin de file browser para telescope
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Agregar plugin para trabajar con git (ver commits, cambios, etc.)
  use 'tpope/vim-fugitive'

  -- Muestra cambios en el archivo actual (líneas eliminadas, agregadas, etc.)
  use 'lewis6991/gitsigns.nvim'

end)
