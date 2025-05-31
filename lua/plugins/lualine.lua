local AlfTheme = {
	normal = {
		a = { fg = "#1e1e2e", bg = "#a8ff51", gui = "bold" },
		b = { fg = "#cdd6f4", bg = "#5f537a" },
		c = { fg = "#bac2de", bg = "#1e1e2e" },
	},
	insert = {
		a = { fg = "#1e1e2e", bg = "#51ffda", gui = "bold" }, -- Verde claro
	},
	visual = {
		a = { fg = "#1e1e2e", bg = "#ff51b0", gui = "bold" }, -- Rosa
	},
	replace = {
		a = { fg = "#1e1e2e", bg = "#ff5c51", gui = "bold" }, -- Rojo
	},
	command = {
		a = { fg = "#1e1e2e", bg = "#c37bfa", gui = "bold" }, -- Naranja
	},
	inactive = {
		a = { fg = "#6c7086", bg = "#1e1e2e" },
		b = { fg = "#6c7086", bg = "#1e1e2e" },
		c = { fg = "#6c7086", bg = "#1e1e2e" },
	},
}
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = AlfTheme,
				transparent = false,
				globalstatus = true,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					"help",
					"NvimTree",
					"lazy",
					"toggleterm",
					"mason",
					"dashboard",
					"snacks_dashboard",
				},
				always_divide_middle = true,
			},
			sections = {
				lualine_a = { { "mode", icon = "" } },
				lualine_b = {
					{
						"branch",
						color = { fg = "#FFB84D", bg = "#444444", gui = "bold" },
					},
					"diagnostics",
				},
				lualine_c = { "filename" },
				lualine_x = {
					{
						"diff",
						symbols = {
							added = "󰌴 ",
							modified = "󱅄 ",
							removed = "󱅁 ",
						},
						colored = true,
						diff_color = {
							added = { fg = "#98c379" },
							modified = { fg = "#61afef" },
							removed = { fg = "#e06c75" },
						},
						source = function()
							local gitsigns = vim.b.gitsigns_status_dict
							if gitsigns then
								return {
									added = gitsigns.added,
									modified = gitsigns.changed,
									removed = gitsigns.removed,
								}
							end
						end,
					},
					"diagnostics",
					"filetype",
				},
				lualine_y = {},
				lualine_z = {
					{ "progress", separator = { left = "" } },
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {
				lualine_a = { { "buffers", mode = 2 } }, -- mode = 2 => solo nombres
				lualine_z = { "tabs" },
			},
			extensions = {},
		})
	end,
}
