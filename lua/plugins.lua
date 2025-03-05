
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim") 
-- plugins.lua

require("lazy").setup({
  -- Lazy.nvim puede gestionarse a sí mismo
  { "folke/lazy.nvim" },

  --Theme de capuccino
  { "catppuccin/nvim", name = "catppuccin"},
  
  -- Plugin dashboard
  { "glepnir/dashboard-nvim" },

  -- Plugin de transparencia
  { "xiyaowong/transparent.nvim" },

  -- Plugin para tabline
  { "kdheepak/tabline.nvim" },

  -- Status Bar
  { "nvim-lualine/lualine.nvim" },
  { "nvim-tree/nvim-web-devicons" }, -- Para los iconos

  -- IDE >> plugin de tree
  { "kyazdani42/nvim-tree.lua" },

  -- Autopares para el cierre automático de corchetes y paréntesis
  { "windwp/nvim-autopairs" },

  -- Autocompletado para lenguajes de programación
  { "neoclide/coc.nvim", branch = "release" },

  -- Telescope para búsqueda
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Agregar el plugin de file browser para telescope
  { "nvim-telescope/telescope-file-browser.nvim" },

  -- Agregar plugin para trabajar con git (ver commits, cambios, etc.)
  { "tpope/vim-fugitive" },

  -- Muestra cambios en el archivo actual (líneas eliminadas, agregadas, etc.)
  { "lewis6991/gitsigns.nvim" },

  --Para poder crear Snippets
  { "rafamadriz/friendly-snippets" },

  --para especificacion and full type annotations
  { "nvim-neotest/nvim-nio" },
  
  --para comentarios
  { "JoosepAlviste/nvim-ts-context-commentstring" },

  -- UI for messages cmdline and the popupmenu
  {
  "folke/noice.nvim",
   event = "VeryLazy",
   opts = {
    -- add any options here
    },
   dependencies = {
     "MunifTanjim/nui.nvim",
     "rcarriga/nvim-notify",
     }
   }
})

