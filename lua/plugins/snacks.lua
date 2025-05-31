return {
	"folke/snacks.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("snacks").setup({
			dashboard = require("plugins.settings.dashboard"),
			indent = { enabled = true },
			input = { enabled = true },
			explorer = { enabled = true },
			picker = { enabled = true },
			notifier = { enabled = true },
			image = { enabled = false },
		})
	end,
	--these keymaps are for picker
	keys = {
		{
			"<leader>e",
			function()
				require("snacks").explorer()
			end,
			desc = "File Explorer",
		},
		{
			"<leader>ff",
			function()
				require("snacks").picker.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>g",
			function()
				Snacks.picker.lines()
			end,
			desc = "Buffer Lines",
		},
		{
			"<C-_>",
			function()
				require("snacks").terminal()
			end,
			desc = "open toggle a terminal",
			mode = { "n", "t" },
		},
	},
}
