return {
	"nvim-treesitter/nvim-treesitter",
	event = {
		"BufReadPost",
		"BufNewFile",
	},
	build = ":TSUpdate", -- for parsers update
	opts = {
		ensure_installed = {
			"lua",
			"luadoc",
			"php",
			"css",
			"javascript",
			"html",
			"python",
			"c",
			"sql",
			"markdown",
			"markdown_inline", -- util for Snacks.image
			"latex", -- 👈 these render latex
			"http",
			"graphql",
		},
		-- Install parsers synchronously (only applied to `ensure_installed`)
		sync_install = false,
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = { enable = true },
	},
}
