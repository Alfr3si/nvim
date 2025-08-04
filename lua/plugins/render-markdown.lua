return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"echasnovski/mini.icons",
	},
	opts = {
		completions = {
			lsp = { enabled = true },
			blink = { enabled = true },
			code = {
				sign = false,
				width = "block",
				right_pad = 1,
			},
		},
	},
	ft = { "markdown", "norg", "rmd", "org", "codecompanion" },
}
