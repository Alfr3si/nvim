return {
	{
		"saghen/blink.compat",
		version = "*",
		lazy = true,
		opts = {},
	},
	{
		"saghen/blink.cmp",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"moyiz/blink-emoji.nvim",
			"echasnovski/mini.icons",
			"L3MON4D3/LuaSnip",
		},
		version = "*",
		config = function()
			require("blink.cmp").setup({
				snippets = { preset = "luasnip" },
				signature = { enabled = true },
				appearance = {
					use_nvim_cmp_as_default = true,
					nerd_font_variant = "mono",
				},
				sources = {
					default = { "lsp", "path", "snippets", "buffer", "emoji" },
					per_filetype = {
						sql = { "snippets", "dadbod", "buffer" },
					},
					providers = {
						dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
						cmdline = {
							min_keyword_length = 2,
						},
						emoji = {
							module = "blink-emoji",
							name = "Emoji",
							score_offset = 15,
							opts = {
								insert = true,
								---@type string|table|fun():table
								trigger = function()
									return { ":" }
								end,
							},
							should_show_items = function()
								return vim.tbl_contains({ "gitcommit", "markdown" }, vim.o.filetype)
							end,
						},
					},
				},
				keymap = {
					["<C-f>"] = {},
					["<C-j>"] = {},
					["<C-k>"] = {},
				},
				cmdline = {
					enabled = false,
					completion = { menu = { auto_show = true } },
					keymap = {
						["<CR>"] = { "accept_and_enter", "fallback" },
					},
				},
				completion = {
					accept = {
						auto_brackets = { enabled = true },
					},
					menu = {
						border = "none",
						scrolloff = 1,
						scrollbar = true,
						draw = {
							columns = {
								{ "kind_icon" },
								{ "label", "label_description", gap = 1 },
								{ "kind" },
								{ "source_name" },
							},
						},
					},
					documentation = {
						window = {
							border = "none",
							scrollbar = false,
							winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc",
						},
						auto_show = true,
						auto_show_delay_ms = 500,
					},
				},
			})
		end,
	},
}
