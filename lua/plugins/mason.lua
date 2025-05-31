return {
	"williamboman/mason.nvim",
	event = "VeryLazy",
	dependencies = { "williamboman/mason-lspconfig.nvim" },
	opts = {
		ui = {
			border = "rounded",
			icons = {
				package_installed = " ",
				package_pending = " ",
				package_uninstalled = " ",
			},
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)

		-- Servers Lsp
		require("mason-lspconfig").setup({
			ensure_installed = {
				"cssls",
				"html",
				"lua_ls",
				"phpactor",
				"pyright",
			},
			automatic_installation = true,
		})

		-- Tools externs (black, isort, prettier, etc.)
		local mr = require("mason-registry")

		local function ensure_installed(pkg_name)
			local p = mr.get_package(pkg_name)
			if not p:is_installed() then
				p:install()
			end
		end

		-- List of tools externs :
		local tools = { "black", "isort", "prettier", "prettierd", "stylua" }
		for _, tool in ipairs(tools) do
			ensure_installed(tool)
		end
	end,
}
