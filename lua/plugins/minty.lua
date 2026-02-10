return {
	{ "nvzone/volt", lazy = true },
	{
		"nvzone/minty",
		cmd = { "Shades", "Huefy" },
		keys = {
			{ "<leader>cp", "<cmd>Huefy<cr>", desc = "Color Picker" },
		},
		config = function()
			local group = vim.api.nvim_create_augroup("MintyMouseControl", { clear = true })

			vim.api.nvim_create_autocmd({ "WinEnter", "FileType" }, {
				pattern = { "VoltWindow", "volt" },
				group = group,
				callback = function()
          vim.schedule(function()
            vim.opt.mouse = "a"
          end)
				end,
			})

			vim.api.nvim_create_autocmd("BufLeave", {
				group = group,
				callback = function()
          vim.schedule(function()
            if vim.bo.filetype ~= "VoltWindow" and vim.bo.filetype ~= "volt" then
              vim.opt.mouse = ""
            end
          end)
        end,
			})
		end,
	},
}
