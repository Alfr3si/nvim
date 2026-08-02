return {
	{
		"nvim-flutter/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = function()
			require("flutter-tools").setup({
				ui = {
					border = "rounded",
					notification_style = "native", -- Usa las notificaciones nativas de Neovim
				},
				widget_guides = {
					enabled = true, -- Ayuda visual para ver dónde termina cada widget
				},
				lsp = {
					color_indicator = {
						enabled = true, -- Muestra cuadritos de color en el código (útil para UI)
					},
					settings = {
						showTodos = true,
						completeFunctionCalls = true,
						renameFilesWithClasses = "always", -- Actualiza imports al mover archivos
					},
				},
			})
		end,
		keys = {
			{ "<leader>fr", "<cmd>FlutterRun<cr>", desc = "Run Flutter" },
			{ "<leader>fq", "<cmd>FlutterQuit<cr>", desc = "Quit Flutter" },
			{ "<leader>fR", "<cmd>FlutterRestart<cr>", desc = "Hot Restart" },
			{ "<leader>fd", "<cmd>FlutterDevices<cr>", desc = "Select Device" },
			{ "<leader>fe", "<cmd>FlutterEmulators<cr>", desc = "Select Emulator" },
		},
	},
}
