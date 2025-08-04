return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts_extend = { "spec" },
	opts = {
		preset = "helix",
		defaults = {},
		spec = {
			{
				mode = { "n", "v" },
				{ "<leader><tab>", group = "tabs" },
				{ "<leader>e", group = "File explorer", icon = { icon = " ", color = "green" } },
				{ "<leader>t", group = "Toggle", icon = { icon = " ", color = "yellow" } },
				{ "<leader>C", group = "Color Picker", icon = { icon = " ", color = "orange" } },
				{ "<leader>O", group = "Obsidian", icon = { icon = " ", color = "red" } },
				{ "<leader>S", group = "Scratch list", icon = { icon = "󱥘 ", color = "green" } },
				{ "<leader>A", group = "Windsurf Chat", icon = { icon = "󰚩 ", color = "purple" } },
				{ "<leader>.", group = "Scratch toggle", icon = { icon = "󱥘 ", color = "green" } },
				{ "<leader>v", group = "Split window V", icon = { icon = " ", color = "blue" } },
				{ "<leader>h", group = "Split window H ", icon = { icon = " ", color = "blue" } },
				{ "<leader>=", group = "Equal windows", icon = { icon = " ", color = "blue" } },
				--- notify
				{ "<leader>n", group = "Notify", icon = { icon = "󰍨 ", color = "yellow" } },
				{ "<leader>nh", group = "History", icon = { icon = " ", color = "yellow" } },
				{ "<leader>nn", group = "Dismiss all", icon = { icon = " ", color = "yellow" } },
				--- find
				{ "<leader>f", group = "file/find", icon = { icon = "󰺮 ", color = "pink" } },
				{ "<leader>fc", group = "Config file", icon = { icon = " ", color = "green" } },
				{ "<leader>ff", group = "Find files", icon = { icon = "󰈞 ", color = "yellow" } },
				{ "<leader>fg", group = "Buffer lines", icon = { icon = "󰪸 ", color = "orange" } },
				{ "<leader>fp", group = "Projects", icon = { icon = "󰥨 ", color = "blue" } },
				{ "<leader>fr", group = "Recent", icon = { icon = " ", color = "green" } },

				--- git
				{ "<leader>g", group = "Git", icon = { icon = " ", color = "orange" } },
				{ "<leader>gb", group = "Blame line", icon = { icon = " ", color = "orange" } },
				{ "<leader>gB", group = "Browse", icon = { icon = " ", color = "orange" } },
				{ "<leader>gs", group = "Status", icon = { icon = " ", color = "orange" } },
				{ "<leader>gf", group = "Lazygit current file history", icon = { icon = " ", color = "orange" } },
				{ "<leader>gg", group = "Lazygit", icon = { icon = " ", color = "orange" } },
				{ "<leader>gl", group = "Lazygit log", icon = { icon = " ", color = "orange" } },
				--- buffer
				{ "<leader>b", group = "Buffer", icon = { icon = "󰪸 ", color = "yellow" } },
				{ "<leader>bl", group = "List", icon = { icon = " ", color = "yellow" } },
				{ "<leader>bd", group = "Close", icon = { icon = " ", color = "yellow" } },
				--- search
				{ "<leader>s", group = "search", icon = { icon = " ", color = "green" } },
				{ "<leader>sB", group = "Grep open buffers", icon = { icon = "󱎸 ", color = "green" } },
				{ "<leader>sC", group = "commands", icon = { icon = ": ", color = "green" } },
				{ "<leader>sd", group = "Diagnostics", icon = { icon = "󱖫 ", color = "red" } },
				{ "<leader>sD", group = "Buffer diagnostics", icon = { icon = "󱖫 ", color = "green" } },
				{ "<leader>sg", group = "Grep", icon = { icon = "󰥨 ", color = "orange" } },
				{ "<leader>sh", group = "Help pages", icon = { icon = "󰞋 ", color = "green" } },
				{ "<leader>si", group = "Icons", icon = { icon = " ", color = "red" } },
				{ "<leader>sk", group = "Keymaps", icon = { icon = " ", color = "green" } },
				{ "<leader>sm", group = "Marks", icon = { icon = "󰍎 ", color = "green" } },
				{ "<leader>sM", group = "Man pages", icon = { icon = " ", color = "pink" } },
				{ "<leader>st", group = "Todo", icon = { icon = " ", color = "orange" } },
				{ "<leader>sT", group = "Todo/Fix/Fixme", icon = { icon = " ", color = "orange" } },
				{ "<leader>su", group = "Undo history", icon = { icon = " ", color = "green" } },
				{ "<leader>sw", group = "Visual selection or word", icon = { icon = "󱈅 ", color = "green" } },

				{ "<leader>x", group = "diagnostics/quickfix", icon = { icon = "󱖫 ", color = "green" } },
				{ "[", group = "prev" },
				{ "]", group = "next" },
				{ "g", group = "goto" },
				{ "gs", group = "surround" },
				{ "z", group = "fold" },
				{
					"<leader>w",
					group = "windows",
					proxy = "<c-w>",
					expand = function()
						return require("which-key.extras").expand.win()
					end,
				},
				-- better descriptions
				{ "gx", desc = "Open with system app" },
			},
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Keymaps (which-key)",
		},
		{
			"<c-w><space>",
			function()
				require("which-key").show({ keys = "<c-w>", loop = true })
			end,
			desc = "Window Hydra Mode (which-key)",
		},
	},
}
