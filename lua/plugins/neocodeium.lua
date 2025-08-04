return {
	"monkoose/neocodeium",
	event = "VeryLazy",
	opts = {
		silent = true,
		show_label = false, -- signcolumn label for number of suggestions
		filetypes = {
			bib = false,
			text = false, -- `pass` passwords editing ft (extra safeguard)
		},
		filter = function(bufnr)
			-- not when recording
			if vim.fn.reg_recording() ~= "" then
				return false
			end
			local parent = vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr))
			local name = vim.fs.basename(vim.api.nvim_buf_get_name(bufnr))
			local ignoreBuffer = parent:find("private dotfiles") or name:lower():find("recovery") or name == ".env"
			return not ignoreBuffer -- `false` -> disable in that buffer
		end,
	},
	config = function(_, opts)
		require("neocodeium").setup(opts)
	end,
	keys = {
		{
			"<A-f>",
			function()
				require("neocodeium").accept()
			end,
			mode = "i",
			desc = "󰚩 Accept full suggestion",
		},
		{
			"<A-s>",
			function()
				require("neocodeium").accept_line()
			end,
			mode = "i",
			desc = "󰚩 Accept line",
		},
		{
			"<A-c>",
			function()
				require("neocodeium").clear()
			end,
			mode = "i",
			desc = "󰚩 Clear suggestion",
		},
		{
			"<A-n>",
			function()
				require("neocodeium").cycle_or_complete(1)
			end,
			mode = "i",
			desc = "󰚩 Show/next suggestion",
		},
		{
			"<leader>A",
			function()
				vim.cmd.NeoCodeium("chat")
			end,
			desc = "󰚩 Windsurf chat",
		},
	},
}
