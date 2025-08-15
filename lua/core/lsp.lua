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

-- keymaps for lsp
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
	callback = function(event)
		local map = function(keys, func, desc)
			vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
		end

		map("gd", require("snacks").picker.lsp_definitions, "[G]oto [D]efinition")
		map("gr", require("snacks").picker.lsp_references, "[G]oto [R]eferences")
		map("gI", require("snacks").picker.lsp_implementations, "[G]oto [I]mplementation")
		-- map("<leader>D", require("snacks").picker.lsp_type_definitions, "Type [D]efinition")
		map("<leader>cd", require("snacks").picker.lsp_symbols, "[D]ocument [S]ymbols")
		map("<leader>cw", require("snacks").picker.lsp_workspace_symbols, "[W]orkspace [S]ymbols")
		map("<leader>cr", vim.lsp.buf.rename, "[R]e[n]ame")
		map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
		map("K", function()
			vim.lsp.buf.hover({ border = "rounded" })
		end, "Hover Documentation")
		map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
	end,
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
