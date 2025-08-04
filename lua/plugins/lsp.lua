return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		config = function()
			require("lspconfig").lua_ls.setup({
				settings = {
					Lua = {
						telemetry = { enable = false },
						workspace = { checkThirdParty = false },
					},
				},
			})
			require("lspconfig").pyright.setup()
			require("lspconfig").phpactor.setup({})
			require("lspconfig").clangd.setup({})
			require("lspconfig").html.setup({})
			require("lspconfig").cssls.setup({})
			require("lspconfig").tailwindcss.setup({})
			require("lspconfig").sqlls.setup({})
			require("lspconfig").marksman.setup({})
		end,
	},
}
