local omnisharp_bin = vim.fn.expand("~/.local/share/nvim/mason/packages/omnisharp/OmniSharp")

return {
	cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
	filetypes = { "cs", "vb" },
	settings = { FormattingOptions = { EnableEditorConfigSupport = true } },
}
