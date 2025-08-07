return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	keys = {
		{ "-", "<Cmd>Oil<CR>" },
	},
	mcd = { "Oil" },
	lazy = true,
}
