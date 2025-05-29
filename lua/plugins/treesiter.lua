
return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  build = ":TSUpdate", -- recomendado para mantener actualizado
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "lua",
        "luadoc",
        "php",
        "css",
        "javascript",
        "html",
        "python",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    }
  end,
}
