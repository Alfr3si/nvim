return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"echasnovski/mini.icons",
		},
		ft = { "markdown", "norg", "rmd", "org", "codecompanion" },
		opts = {
			completions = {
				lsp = { enabled = true },
				blink = { enabled = true },
			},
			code = {
				position = "right",
				width = "block",
				left_pad = 2,
				language_pad = 1,
				right_pad = 15,
			},
			heading = {
				icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
			},
		},
		config = function(_, opts)
			require("render-markdown").setup(opts)

			local md_colors = {
				h1_bg = "#04d1f9",
				h2_bg = "#e58f2a",
				h3_bg = "#9ad900",
				h4_bg = "#37f499",
				h5_bg = "#987afb",
				h6_bg = "#fca6ff",
				h_fg = "#000000", -- texto negro
				code_inline_fg = "#ffffff",
				code_inline_bg = "#444444",
			}

			local function apply_render_groups()
				for i = 1, 6 do
					local bg = md_colors["h" .. i .. "_bg"]
					local fg = md_colors.h_fg

					-- Texto negro sin fondo
					vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i, { fg = fg, bg = "NONE", bold = true })

					-- Fondo con color definido (si quieres puedes omitir esta línea para que no haya fondo)
					vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i .. "Bg", { bg = bg, fg = "#000000" })

					-- cambia el color de ( --- )
					vim.api.nvim_set_hl(0, "RenderMarkdownDash", { fg = "#e58f2a" })
				end

				-- Código inline usado por el plugin en la vista
				vim.api.nvim_set_hl(
					0,
					"RenderMarkdownCodeInline",
					{ fg = md_colors.code_inline_fg, bg = md_colors.code_inline_bg }
				)
			end

			apply_render_groups()
			vim.api.nvim_create_autocmd("ColorScheme", { callback = apply_render_groups })
		end,
	},
}
