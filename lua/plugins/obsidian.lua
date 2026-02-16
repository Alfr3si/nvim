local vaults = {
	{
		name = "Alf",
		path = os.getenv("HOME") .. "/.Alf",
	},
}

return {
	"obsidian-nvim/obsidian.nvim",
	version = "*",
	ft = "markdown",
	cmd = {
		"Obsidian",
	},
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"folke/snacks.nvim",
	},
	keys = {
		{ "<leader>ob", "<cmd>Obsidian<cr>", desc = "Obsidian" },
	},
	config = function()
		require("obsidian").setup({
			picker = { name = "snacks.pick" },
			legacy_commands = false,
			workspaces = vaults,
			notes_subdir = "temp",
      new_notes_location = "notes_subdir",
			completion = {
				nvim_cmp = false,
        blink = true,
			},
			attachments = {
				folder = "assets/imgs",
			},
			ui = { enable = false },
		})
	end,
}
