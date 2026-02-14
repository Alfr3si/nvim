return {
	"windwp/nvim-ts-autotag",
	ft = { "html", "php", "markdown", "xml", "javascript", "tailwindcss" },
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		local ts_a = require("nvim-ts-autotag")

		ts_a.setup({
			opts = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = true,
			},
		})
	end,
}
