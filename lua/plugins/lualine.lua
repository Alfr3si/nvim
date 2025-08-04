return {
	"nvim-lualine/lualine.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				transparent = false,
				globalstatus = true,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
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
				lualine_a = {
					{
						"mode",
						color = { gui = "bold" },
						right_padding = 2,
						icon = { " ", color = { fg = "#11a331" } },
					},
				},
				lualine_b = {
					{
						"branch",
						right_padding = 4,
						icon = { "", color = { fg = "#ff4000" } },
						color = { fg = "#ffffff" },
						separator = { right = "" },
					},
				},
				lualine_c = {
					{
						"diagnostics",
						symbols = {
							Error = " ",
							Warn = " ",
							Hint = " ",
							Info = " ",
						},
					},
					{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
					{ "filename", path = 1 },
				},
				lualine_x = {
					{
						"diff",
						symbols = {
							added = " ",
							modified = " ",
							removed = " ",
						},
					},
				},
				lualine_y = { "filetype" },
				lualine_z = {
					{ "progress", separator = { left = "" }, color = { gui = "bold" } },
				},
			},
			tabline = {
				-- lualine_a = { { "buffers", mode = 2 } }, -- mode = 2 => solo nombres
				-- lualine_z = { "tabs" },
			},
			extensions = {},
		})
	end,
}
