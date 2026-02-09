return {
	-- mason (gestión de binarios)
		"williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "WhoIsSethDaniel/mason-tool-installer.nvim"
    },
		cmd = "Mason",
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local mason_tool = require("mason-tool-installer")

      -- 1 Inicializar mason
      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
      -- lista de herramientas
      mason_lspconfig.setup({
        ensure_installed = {
          "ts_ls",
          "tailwindcss",
          "eslint",
          "html",
          "cssls",
          "lua_ls",
        },
        automatic_installation = true,
      })

      mason_tool.setup({
        ensure_installed = {
          "stylua", -- formatter de lua
        },
        auto_update = true,
        run_on_start = true,
      })
    end,
}
