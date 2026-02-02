return {
  "neovim/nvim-lspconfig",
  event = "BufReadPre",
  dependencies = {
    "saghen/blink.cmp",
    "nvimtools/none-ls.nvim",
    "antosha417/nvim-lsp-file-operations",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local init_capabilities = {
      textDocuments = {
        semanticTokens = {
          multilineTokenSupport = true,
        },
      },
    }
    local capabilities = 
      vim.tbl_deep_extend("force", init_capabilities, require("lsp-file-operations").default_capabilities())

      vim.lsp.config("*", {
        capabilities = require("blink.cmp").get_lsp_capabilities(capabilities),
        root_markers = {".git"},
      })

      for _, server in ipairs {
        'lua_ls',
      } do
      vim.lsp.enable(server)
    end
  end,
}
