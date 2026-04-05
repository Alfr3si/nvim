return {
	"stevearc/oil.nvim",
	---@module 'oil'
	opts = {},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	keys = {
		{ "-", "<Cmd>Oil<CR>" },
	},
	config = function()
		require("oil").setup({
			default_file_explorer = true,
		})
	end,
	lazy = false,
}
