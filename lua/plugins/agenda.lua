return {
	"Kamyil/markdown-agenda.nvim",
	-- Required for :MarkdownAgenda command to be available
	-- Alternatively, use: cmd = 'MarkdownAgenda' for lazy-loading on command
	lazy = false,
	config = function()
		require("markdown-agenda").setup({
			directory = "~/.Obsidian/Agenda",
			-- Scan subdirectories recursively
			recursive = true,
			-- Date format used in your notes
			-- Options: '%Y-%m-%d' (2025-12-30), '%m/%d/%Y' (12/30/2025), '%d/%m/%Y' (30/12/2025)
			date_format = "%Y-%m-%d",

			-- Show footer help in the agenda window
			help = true,

			-- Show header separator line under the title
			header_separator = true,

			-- Show separator line above footer help text
			help_separator = true,

			-- Floating window border style
			-- 'none', 'single', 'double', 'rounded', 'solid', 'shadow'
			border = "rounded",

			-- Floating window title (set to false to hide)
			title = " Agenda✏️🗒️ ",

			-- Floating window title alignment
			-- 'left', 'center', 'right'
			title_pos = "center",

			-- Calendar settings
			calendar = {
				enabled = true,
				months_to_show = 3, -- current month + N-1 months ahead
				position = "right", -- 'right' or 'top'
				grid_columns = 2, -- used in 'top' mode (set months_to_show=4 for a 2x2 grid)
				week_start = "monday", -- 'monday' or 'sunday'
			},

			-- Customize icons
			icons = {
				scheduled = "📌",
				deadline_urgent = "🔴", -- ≤1 day
				deadline_soon = "🟡", -- 2-4 days
				deadline_ok = "🟢", -- >4 days
				overdue = "⚠️",
				today = "▶",
				collapsed = "▶",
				expanded = "▼",
			},

			-- Keymaps (set to false to disable)
			keymaps = {
				open = "<leader>oa",
			},
		})
	end,
}
