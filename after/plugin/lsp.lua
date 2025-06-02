---@diagnostic disable : undefined-global
vim.o.signcolumn = yes
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
})

local servers = { "lua", "php", "html", "python", "css", "tailwindcss" }

for _, server in ipairs(servers) do
	vim.lsp.enable(server)
end
