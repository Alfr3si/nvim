---@diagnostic disable : undefined-global
return {
	"folke/snacks.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		bigfile = { enabled = true },
		dashboard = require("plugins.snacks.dashboard"),
		indent = { enabled = true },
		input = { enabled = true },
		explorer = { enabled = true },
		picker = { enabled = true },
		notifier = { enabled = true },
		image = { enabled = true },
		statuscolumn = { enabled = true },
		quickfile = { enabled = true },
		gitbrowse = { enabled = true },
		lazygit = { enabled = true },
		toggle = { enabled = true },
	},
	init = function()
		vim.api.nvim_create_autocmd("User", {
			pattern = "VeryLazy",
			callback = function()
				Snacks.toggle.indent():map("<leader>tg")
				Snacks.toggle.dim():map("<leader>td")
				Snacks.toggle.diagnostics():map("<leader>tD")
				Snacks.toggle.zen():map("<leader>tZ")
				Snacks.toggle.line_number():map("<leader>tl")
				Snacks.toggle.zoom():map("<leader>tz")
				Snacks.toggle.scroll():map("<leader>ts")
				Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>tS")
				Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>tw")
				Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>tL")
				--- Custom
				Snacks.toggle
					.new({
						name = "Render Markdown",
						get = function()
							return require("render-markdown").get()
						end,
						set = function(state)
							if state then
								require("render-markdown").enable()
							else
								require("render-markdown").disable()
							end
						end,
					})
					:map("<leader>tm")
				--- custom
				Snacks.toggle
					.new({
						name = "󰚩 Neocodeium",
						get = function()
							local status = require("neocodeium").get_status()
							return status == 0
						end,
						set = function(on)
							if on then
								require("neocodeium.commands").enable()
							else
								require("neocodeium.commands").disable()
							end
						end,
					})
					:map("<leader>tC")
			end,
		})
	end,
	keys = {
    -- stylua: ignore start
    --- Top pickers and explorer
    {"<leader>e", function() Snacks.explorer() end, desc = "File explorer"},
    {"<leader>bl", function() Snacks.picker.buffers() end, desc = "Buffer list"},
    --- find
    {"<leader>ff", function() Snacks.picker.files() end, desc = "Find files"},
    {"<leader>fg", function() Snacks.picker.lines() end, desc = "Buffer lines"},
    {"<leader>fp", function() Snacks.picker.projects() end, desc = "Projects"},
    {"<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },
    {"<leader>fc", function() Snacks.picker.files({cwd = vim.fn.stdpath("config")}) end, desc = "Config files"},
    --- search
    {"<leader>si", function() Snacks.picker.icons() end, desc = "Icons"},
    {"<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps"},
    {"<leader>sm", function() Snacks.picker.marks() end, desc = "Marks"},
    {"<leader>sM", function() Snacks.picker.man() end, desc = "Man pages"},
    {"<leader>sh", function() Snacks.picker.help() end, desc = "Help pages"},
    {"<leader>sC", function() Snacks.picker.commands() end, desc = "Commands" },
    {"<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
    {"<leader>sD", function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },
    {"<leader>su", function() Snacks.picker.undo() end, desc = "Undo History" },
        --- git
    {"<leader>gb", function() Snacks.git.blame_line() end,desc = "Git Blame Line", {"n", "v"}},
    {"<leader>gB", function() Snacks.gitbrowse() end, desc = "Git browse"},
    {"<leader>gf", function() Snacks.lazygit.log_file() end, desc = "Lazygit Current File History"},
    {"<leader>gl", function() Snacks.lazygit.log() end, desc = "Lazygit Log (cwd)"},
    {"<leader>gs", function() Snacks.picker.git_status() end, desc = "Git status"},
    {"<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit"},
    --- Grep
    {"<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
    {"<leader>sg", function() Snacks.picker.grep() end, desc = "Grep" },
    {"<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
    --- Notifications
    {"<leader>nh", function() Snacks.notifier.show_history() end, desc = "Notification history"},
    {"<leader>nn", function() Snacks.notifier.hide() end, desc = "Notification Dismiss all"},
    --- Scratch  ===> path = (.local/share/nvim/scratch)
    {"<leader>.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer"},
    {"<leader>S",  function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },
    --- Miscsellaneous
    {"<c-\\>", function() Snacks.terminal() end, "Toggle terminal", { "n", "t" }},
    {"[[", function() Snacks.words.jump(vim.v.count1) end, "Next Reference"},
    {"]]", function() Snacks.words.jump(-vim.v.count1) end, "Prev Reference"},
		-- stylua: ignore end
	},
}
