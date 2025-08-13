return {
	"brianhuster/live-preview.nvim",
	dependencies = { "folke/snacks.nvim" },
	cmd = { "LivePreview" },
	config = function()
		require("livepreview.config").set({
			port = 5500,
			browser = "firefox", -- add your favorite browser
			dynamic_root = false,
			sync_scroll = true,
			picker = "", -- because  If nil, the plugin look for the first available picker
		})
	end,
}
-- commands:
--
--  :LivePreview start
--  :LivePreview close
--  :LivePreview pick
