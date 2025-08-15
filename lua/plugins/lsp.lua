return {
	-- mason (gestión de binarios)
	{
		"williamboman/mason.nvim",
		cmd = "Mason",
		build = ":MasonUpdate",
		opts = {
			ui = {
				border = "rounded",
				icons = {
					package_installed = " ",
					package_pending = " ",
					package_uninstalled = " ",
				},
			},
		}, -- si quieres opciones para mason, agrégalas aquí
	},

	-- mason-lspconfig + nvim-lspconfig (instala servidores y los configuro manualmente)
	{
		"williamboman/mason-lspconfig.nvim",
		event = "BufReadPre",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
			"saghen/blink.cmp",
		},
		config = function()
			-- 1) inicializa mason
			require("mason").setup()

			-- 2) configura mason-lspconfig
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
					"omnisharp",
				},
				automatic_installation = true,
				-- importante: evita que mason-lspconfig active LSPs automáticamente
				automatic_enable = false,
			})

			-- 3) instala algunas herramientas extra vía mason-registry (opcional)
			local ok, mr = pcall(require, "mason-registry")
			if ok then
				local function ensure_tool_installed(pkg)
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
					"csharpier",
				}) do
					-- evita errores si el paquete no existe en el registro
					if mr.has_package(tool) then
						ensure_tool_installed(tool)
					end
				end
			end

			-- add cmp capabilities
			vim.lsp.config("*", {
				capabilities = require("blink.cmp").get_lsp_capabilities(),
			})
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("cssls")
			vim.lsp.enable("html")
			vim.lsp.enable("phpactor")
			vim.lsp.enable("marksman")
			vim.lsp.enable("clangd")
			vim.lsp.enable("tailwindcss")
			vim.lsp.enable("pyright")
			vim.lsp.enable("omnisharp")
		end,
	},
}
