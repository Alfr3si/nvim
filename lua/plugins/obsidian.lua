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
      preferred_link_style = "markdown",
			workspaces = vaults,
			completion = {
				nvim_cmp = false,
        blink = true,
			},
			ui = { enable = false },

			notes_subdir = "00-Inbox",
      new_notes_location = "notes_subdir",
			attachments = {
				folder = "00-Inbox/img",
			},

      daily_notes = {
        folder = "04-Daily",
        date_format = "%Y-%m-%d",
        alias_format = "%B %-d, %Y",
        default_tags = { "daily-notes" },
        template = nil,
      },
      templates = {
        subdir = "99-Templates",
        date_format = "%Y-%m-%d-%a",
        gtime_format = "%H:%M",
        tags = "",
      },
		})
	end,
}
