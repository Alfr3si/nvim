return {
	{
		"sainnhe/sonokai",
		lazy = false,
		priority = 1000,

		config = function()
			vim.g.sonokai_style = "andromeda"
			vim.g.sonokai_better_performance = 1
			vim.g.sonokai_transparent_background = 0 -- change 1 if you want a transparent background
			vim.g.sonokai_enable_italic = true
			vim.cmd.colorscheme("sonokai")
		end,
	},
}
