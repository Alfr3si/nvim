return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && npm install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },

	--these are keymap for open a browser
	vim.keymap.set(
		"n",
		"<leader>lp",
		"<cmd>MarkdownPreviewToggle<CR>",
		{ silent = true, desc = "Alternar vista previa de Markdown" }
	),
	vim.keymap.set(
		"n",
		"<leader>lP",
		"<cmd>MarkdownPreview<CR>",
		{ silent = true, desc = "Alternar vista previa de Markdown" }
	),
}
