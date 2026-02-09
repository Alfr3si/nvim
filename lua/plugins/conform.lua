return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd" },
			},
			format_on_save = false, -- formatear al guardar
		})

		local function format_code()
			require("conform").format({
				async = true,
				lsp_fallback = true,
			})
		end

		vim.keymap.set("n", "<leader>F", format_code, { desc = "File formatt" })
		vim.keymap.set("v", "<leader>F", format_code, { desc = "Select formatt" })
	end,
}
