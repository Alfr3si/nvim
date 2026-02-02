return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"echasnovski/mini.icons",
		},
		ft = { "markdown", "norg", "rmd", "org", "codecompanion" },
		opts = {
			completions = {
				lsp = { enabled = true },
				blink = { enabled = true },
			},
			code = {
				position = "right",
				width = "block",
				left_pad = 2,
				language_pad = 1,
				right_pad = 15,
			},
			heading = {
				icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
			},
		},
	},
}
