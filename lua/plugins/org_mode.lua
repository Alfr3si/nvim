return {
	"nvim-orgmode/orgmode",
	dependencies = {
		"nvim-orgmode/org-bullets.nvim",
		"danilshvalov/org-modern.nvim",
	},
	event = "VeryLazy",
	ft = { "org" },
	config = function()
		local Menu = require("org-modern.menu")

		-- Setup orgmode
		require("orgmode").setup({
			org_startup_indented = true,
			org_adapt_indentation = true,
			org_agenda_files = "~/.Alf/**/*",
			org_default_notes_file = "~/.Alf/Agenda/Tarea.org",
			org_capture_templates = {
				t = {
					description = "Tareas",
					template = "* TODO %?\n  %u",
					target = "~/.Alf/Agenda/Tarea.org",
				},
				e = {
					description = "Eventos",
					template = "* ",
					target = "~/.Alf/Agenda/Evento.org",
				},
				n = {
					description = "Notas",
					target = "~/.Alf/Nota.org",
				},
				i = {
					description = "Ideas",
					target = "~/.Alf/Idea.org",
				},
			},

			ui = {
				menu = {
					handler = function(data)
						Menu:new({
							window = {
								margin = { 1, 0, 1, 0 },
								padding = { 0, 1, 0, 1 },
								title_pos = "center",
								border = "single",
								zindex = 1000,
							},
							icons = {
								separator = "➜",
							},
						}):open(data)
					end,
				},
			},
		})
		require("org-bullets").setup()

		-- Experimental LSP support
		vim.lsp.enable("org")
	end,
}
