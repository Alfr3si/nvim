return {
    "brianhuster/live-preview.nvim",
    dependencies = {
		"folke/snacks.nvim",
    },
    config = function()
      local lp = require("livepreview.config")

      lp.set({
			vim.keymap.set("n", "<leader>ls", ":LivePreview start<CR>", { desc = "LivePreview start" }),
			vim.keymap.set("n", "<leader>lc", ":LivePreview close<CR>", { desc = "LivePreview close" }),
			vim.keymap.set("n", "<leader>lp", ":LivePreview pick<CR>", { desc = "LivePreview picker" }),
      })
    end
}
