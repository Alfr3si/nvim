return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"echasnovski/mini.nvim",
	},
	opts = {},
	ft = { "markdown" },
	-- Alternar renderización
	vim.keymap.set("n", "<leader>rm", "<cmd>RenderMarkdown toggle<CR>", {
		silent = true,
		desc = "Toggle Render Markdown",
	}),
}
