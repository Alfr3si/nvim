-- Switch bentween window
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch to down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch to up window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch to right window" })

-- Open UI interface
vim.keymap.set("n", "<leader>L", "<CMD>Lazy<CR>", { desc = "Lazy UI" })
vim.keymap.set("n", "<leader>M", "<CMD>Mason<CR>", { desc = "Mason UI" })
vim.keymap.set("n", "<leader>C", "<CMD>Huefy<CR>", { desc = "color picker" })

-- Split window
vim.keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit file" })
vim.keymap.set("n", "<leader>h", ":split<cr>", { desc = "Split window" })
vim.keymap.set("n", "<leader>v", ":vsplit<cr>", { desc = "Split window vertical" })

-- Resize pane
vim.keymap.set("n", "<leader>=", "<C-w>=", { desc = "Equal window" })
vim.keymap.set("n", "<A-h>", "<C-w>5<", { desc = "Resize window" })
vim.keymap.set("n", "<A-l>", "<C-w>6>", { desc = "Resize window" })

-- Buffers keymaps
vim.keymap.set("n", "<leader>bd", "<cmd>bd!<cr>", { desc = "Close buffer" })
vim.keymap.set("n", "<tab>", "<cmd>bn<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-tab>", "<cmd>bp<cr>", { desc = "Prev buffer" })

-- Clear highlight
vim.keymap.set("n", "<ESC>", "<cmd>nohl<CR>", { desc = "Clear highlight" })

-- Move lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<Return>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<Return>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", "<cmd>m '>+1<Return>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "<A-k>", "<cmd>m '<-2<Return>gv=gv", { desc = "Move line up" })

--There are commands utils with the servers LSP------------------

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf

		local opts = { noremap = true, silent = true, buffer = bufnr }
-- stylua: ignore start
		-- Hover documentation
		vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "Show hover documentation" }))
		-- Go to definition
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "Go to definition" }))
		-- Go to declaration
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, vim.tbl_extend("force", opts, { desc = "Go to declaration" }))
		-- List implementations
		vim.keymap.set("n", "gri", vim.lsp.buf.implementation, vim.tbl_extend("force", opts, { desc = "List implementations" }))
		-- List references
		vim.keymap.set("n", "grr", vim.lsp.buf.references, vim.tbl_extend("force", opts, { desc = "List references" }))
		-- Show signature help
		vim.keymap.set("n", "grh", vim.lsp.buf.signature_help, vim.tbl_extend("force", opts, { desc = "Show signature help" }))
		-- Rename symbol
		vim.keymap.set("n", "grn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Rename symbol" }))
		-- Code actions
		vim.keymap.set({ "n", "v" }, "gra", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "Code actions" }))
		-- stylua: ignore end
	end,
})
