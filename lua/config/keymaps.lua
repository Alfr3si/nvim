--these are keybindings very utils
vim.keymap.set("n", "<C-q>", ":bd<CR>", { desc = "Cerrar buffer actual", silent = true })

--TODO:: there are commands utils with the servers LSP------------------
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf

		local opts = { noremap = true, silent = true, buffer = bufnr }

		-- Hover
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		-- go to definition
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		-- go to declaration
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		-- look implementations
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		-- look references
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		-- Informacion of simbols
		vim.keymap.set("n", "<leader>ls", vim.lsp.buf.signature_help, opts)
	end,
})
