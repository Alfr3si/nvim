return {
	"nvim-orgmode/orgmode",
	event = "VeryLazy",
	ft = { "org" },
	config = function()
		-- Setup orgmode
		require("orgmode").setup({
			org_agenda_files = "~/.orgfiles/**/*",
			org_todo_keywords = { "TODO", "|", "DONE" },
			win_split_mode = "vertical", -- vertical/horizontal/float
			win_border = "rounded", --rounded/none/single/solid/shadow
			org_startup_folded = "overview", --overview/content/showeverything/inherit
			org_todo_keyword_faces = {
				WAITING = ":foreground blue :weight bold",
				DELEGATED = ":background #FFFFFF :slant italic :underline on",
				TODO = ":background #000000 :foreground red", -- overrides builtin color for `TODO` keyword
			},
			org_hide_leading_stars = false,
			org_startup_indented = true,
			org_cycle_separator_lines = 2,
			calendar_week_start_day = 1,
			org_deadline_warning_days = 14,
      --templates
			org_capture_templates = {
				t = {
					description = "Todo",
					template = "* TODO %?\n %u",
					target = "~/.orgfiles/todo/%<%Y-%m>.org",
				},
				j = {
					description = "Journal",
					template = "\n*** %<%Y-%m-%d> %<%A>\n**** %U\n\n%?",
					target = "~/orgfiles/journal/%<%Y-%m>.org",
				},
				e = {
					description = "Event",
					subtemplates = {
						r = {
							description = "recurring",
							template = "** %?\n %T",
							target = "~/.orgfiles/calendar/calendar.org",
							headline = "recurring",
						},
						o = {
							description = "one-time",
							template = "** %?\n %T",
							target = "~/.orgfiles/calendar/calendar.org",
							headline = "one-time",
						},
					},
				},
			},
		})

		-- Experimental LSP support
		vim.lsp.enable("org")
	end,
}
