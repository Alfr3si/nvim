local vaults = {
	{
		name = "personal",
		path = "~/Documents/vaults/personal",
	},
	{
		name = "work",
		path = "~/Documents/vaults/work",
	},
}

local events = vim.iter(vaults)
	:map(function(vault)
		return vim.fn.expand(vault.path)
	end)
	:map(function(vault)
		return {
			string.format("BufReadPre %s/*.md", vault),
			string.format("BufNewFile %s/*.md", vault),
		}
	end)
	:flatten()
	:totable()

return {
	"obsidian-nvim/obsidian.nvim",
	version = "*",
	lazy = true,
	event = events,
	cmd = { "ObsidianMenu" },
	keys = {
		{ "<leader>O", "<cmd>Obsidian<cr>", desc = "Obsidian" },
	},
	ft = "markdown",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		legacy_commands = false,
		workspaces = vaults,
		pickers = { name = "snacks.pick" },
		completion = {
			nvim_cmp = false,
			blink = true,
		},
	},
}
