return {
	{
		"saghen/blink.compat",
		version = "*",
		lazy = true,
		opts = {},
	},
	{
		"saghen/blink.cmp",
		event = "InsertEnter",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"moyiz/blink-emoji.nvim",
			{
				"L3MON4D3/LuaSnip",
				version = "v2.*",
				name = "luasnip",
				config = function()
					require("plugins.conf.luasnip").config()
				end,
			},
			{ "echasnovski/mini.icons", opts = {} },
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
					default = { "lsp", "path", "snippets", "buffer", "lazydev", "emoji" },
					per_filetype = {
						sql = { "snippets", "dadbod", "buffer" },
					},
					providers = {
						dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
						lazydev = {
							name = "LazyDev",
							module = "lazydev.integrations.blink",
							-- make lazydev completions top priority (see `:h blink.cmp`)
							score_offset = 100,
						},
						cmdline = {
							min_keyword_length = 2,
						},
						emoji = {
							module = "blink-emoji",
							name = "Emoji",
							score_offset = 15, -- Tune by preference
							opts = {
								insert = true, -- Insert emoji (default) or complete its name
								---@type string|table|fun():table
								trigger = function()
									return { ":" }
								end,
							},
							should_show_items = function()
								return vim.tbl_contains(
									-- Enable emoji completion only for git commits and markdown.
									-- By default, enabled for all file-types.
									{ "gitcommit", "markdown" },
									vim.o.filetype
								)
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
						scrollbar = false,
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
