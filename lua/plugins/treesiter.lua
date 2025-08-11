return {
	"nvim-treesitter/nvim-treesitter",
	event = {
		"BufReadPost",
		"BufNewFile",
	},
	build = ":TSUpdate", -- for parsers update
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
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
			"diff",
			"sql",
			"bash",
			"yaml",
			"json",
			"markdown",
			"markdown_inline", -- util for Snacks.image
			"latex", -- 👈 these render latex
			"http",
			"graphql",
		},
		-- Install parsers synchronously (only applied to `ensure_installed`)
		sync_install = false,
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["af"] = "@function.outer",
					["ac"] = "@class.outer",
					["if"] = "@function.inner",
				},
			},
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
