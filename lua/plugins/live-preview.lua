return {
	"brianhuster/live-preview.nvim",
	dependencies = { "ibhagwan/fzf-lua" },
	cmd = { "LivePreview" },
	config = function()
		require("livepreview.config").set({
			port = 5500,
			browser = "default",
			dynamic_root = false,
			sync_scroll = true,
			picker = "fzf-lua",
		})
	end,
}
-- commands:
--
--  :LivePreview start
--  :LivePreview close
--  :LivePreview pick
