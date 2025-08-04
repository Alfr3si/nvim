return {
	"williamboman/mason.nvim",
	cmd = "Mason", -- o también puedes usar: keys = "<leader>cm"
	build = ":MasonUpdate",
	opts = {
		ui = {
			border = "rounded",
			icons = {
				package_installed = " ",
				package_pending = " ",
				package_uninstalled = " ",
			},
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)
	end,
}
