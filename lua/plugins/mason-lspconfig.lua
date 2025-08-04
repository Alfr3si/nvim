return {
	"williamboman/mason-lspconfig.nvim",
	event = "BufReadPre",
	dependencies = { "williamboman/mason.nvim" },
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"cssls",
				"html",
				"lua_ls",
				"phpactor",
				"pyright",
				"clangd",
				"tailwindcss",
				"sqlls",
				"marksman",
			},
			automatic_installation = true,
		})

		-- Autoinstalar herramientas externas cuando mason-lspconfig se carga
		local mr = require("mason-registry")
		local function ensure_installed(pkg)
			local p = mr.get_package(pkg)
			if not p:is_installed() then
				p:install()
			end
		end

		for _, tool in ipairs({
			"black",
			"isort",
			"prettier",
			"prettierd",
			"stylua",
			"clang-format",
			"tree-sitter-cli",
			"sqlfluff",
			"markdownlint-cli2",
			"markdown-toc",
		}) do
			ensure_installed(tool)
		end
	end,
}
