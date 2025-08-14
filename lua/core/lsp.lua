-- diagnostics
vim.diagnostic.config({
	virtual_lines = {
		current_line = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰚌 ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.INFO] = " ",
			[vim.diagnostic.severity.HINT] = "󱧣 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})
-- add cmp capabilities
vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
})

-- enable configurations of lsp
vim.lsp.enable({
	"clangd",
	"css",
	"html",
	"lua_ls",
	"php_actor",
	"python",
	"tailwindcss",
	"csharp_ls",
})
