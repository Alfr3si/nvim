---@diagnostic disable : undefined-global
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
			statuscolumn = { enabled = true },
		})
	end,
	--these keymaps are for picker
	keys = require("plugins.settings.key_snacks"),
}
