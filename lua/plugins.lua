
-- plugins.lua

-- Asegúrate de que Lazy.nvim esté instalado
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- Usa la rama estable
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configura Lazy.nvim con los plugins
require("lazy").setup({
  -- Lazy.nvim puede gestionarse a sí mismo
  { "folke/lazy.nvim" },

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
})
