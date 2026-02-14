return {
	"jameswolensky/marker-groups.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"folke/snacks.nvim",
	},
	config = function()
		local mg = require("marker-groups")

		mg.setup({
			-- Persistence
			data_dir = vim.fn.stdpath("data") .. "/marker-groups",
			-- Logging
			debug = false,
			log_level = "info",
			drawer_config = {
				width = 60, -- 30..120
				side = "right", -- "left" | "right"
				border = "rounded",
				title_pos = "center",
			},
			context_lines = 2,
			max_annotation_display = 50, -- truncate long annotations
			highlight_groups = {
				marker = "MarkerGroupsMarker",
				annotation = "MarkerGroupsAnnotation",
				context = "MarkerGroupsContext",
				multiline_start = "MarkerGroupsMultilineStart",
				multiline_end = "MarkerGroupsMultilineEnd",
			},
			keymaps = {
				enabled = true,
				prefix = "<leader>m",
				mappings = {
					marker = {
						add = { suffix = "a", mode = { "n", "v" }, desc = "Add marker" },
						edit = { suffix = "e", desc = "Edit marker at cursor" },
						delete = { suffix = "d", desc = "Delete marker at cursor" },
						list = { suffix = "l", desc = "List markers in buffer" },
						info = { suffix = "i", desc = "Show marker at cursor" },
					},
					group = {
						create = { suffix = "gc", desc = "Create marker group" },
						select = { suffix = "gs", desc = "Select marker group" },
						list = { suffix = "gl", desc = "List marker groups" },
						rename = { suffix = "gr", desc = "Rename marker group" },
						delete = { suffix = "gd", desc = "Delete marker group" },
						info = { suffix = "gi", desc = "Show active group info" },
						from_branch = { suffix = "gb", desc = "Create group from git branch" },
					},
					view = { toggle = { suffix = "v", desc = "Toggle drawer marker viewer" } },
				},
			},
			picker = "snacks",
		})
	end,
}
