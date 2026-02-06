return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- aqui la configuracion
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end, desc = "Which-key"
    },
  },
}
