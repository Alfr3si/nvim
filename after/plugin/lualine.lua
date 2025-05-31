local function toggle_lualine_and_tabline()
	local ft = vim.bo.filetype
	if ft == "snacks_dashboard" then
		require("lualine").hide({ place = { "statusline", "tabline", "winbar" }, unhide = false })
		vim.o.showtabline = 0
	else
		require("lualine").hide({ place = { "statusline", "tabline", "winbar" }, unhide = true })
		vim.o.showtabline = 2
	end
end

-- Autocmd para cuando entres a un buffer
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*",
	callback = toggle_lualine_and_tabline,
})

-- Ejecutar una vez al inicio (al cargar la config) para el buffer actual
vim.schedule(toggle_lualine_and_tabline)
