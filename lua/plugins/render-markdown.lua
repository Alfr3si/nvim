return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "echasnovski/mini.icons",
    },
    ft = { "markdown" },
    opts = {
      -- 1. Configuraciones Globales (Aplican a MD y Org)
      code = {
        sign = false,
        width = "block",
        position = "right",
        left_pad = 2,
        language_pad = 1,
        right_pad = 15,
      },
      bullet = {
        enabled = true,
        icons = { "●", "○", "◆", "◇" },
        left_pad = 0,
        right_pad = 1,
      },
      heading = {
        -- Estos iconos se usarán para Markdown
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      },

      completions = {
        lsp = { enabled = true },
      },
    },
  },
}
