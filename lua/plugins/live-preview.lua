return {
	"brianhuster/live-preview.nvim",
	dependencies = { "folke/snacks.nvim" },
	ft = "markdown",
	cmd = { "LivePreview" },
	config = function()
		require("livepreview.config").set({
			port = 5500,
			browser = "firefox", -- add your favorite browser
			dynamic_root = false,
			sync_scroll = true,
			picker = "", -- because  If nil, the plugin look for the first available picker
			vim.keymap.set("n", "<leader>la", ":LivePreview<CR>", { desc = "activate" }),
			vim.keymap.set("n", "<leader>lc", ":LivePreviewClose<CR>", { desc = "close" }),
			vim.keymap.set("n", "<leader>lP", ":LivePreviewPick<CR>", { desc = "picker" }),
		})
	end,
}
-- commands:
--
--  :LivePreview start
--  :LivePreview close
--  :LivePreview pick
