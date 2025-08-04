return {
	"norcalli/nvim-colorizer.lua",
	ft = {
		"css",
		"html",
		"php",
		"javascript",
		"tailwindcss",
	},
	cmd = "ColorizerToggle",
	config = function()
		require("colorizer").setup({
			css = { rgb_fn = true },
			php = { rgb_fn = true },
			html = { rgb_fn = true },
			javascript = { rgb_fn = true },
			tailwindcss = {},
		})
	end,
}
