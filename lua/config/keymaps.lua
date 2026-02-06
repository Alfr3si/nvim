-- Switch bentween window
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch to down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch to up window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch to right window" })

-- quit
vim.keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit file" })

-- Resize pane
vim.keymap.set("n", "<A-h>", "<C-w>5<", { desc = "Resize window" })
vim.keymap.set("n", "<A-l>", "<C-w>6>", { desc = "Resize window" })

-- Clear highlight
-- vim.keymap.set("n", "<ESC>", "<cmd>nohl<CR>", { desc = "Clear highlight" })

-- Move lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<Return>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<Return>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", "<cmd>m '>+1<Return>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "<A-k>", "<cmd>m '<-2<Return>gv=gv", { desc = "Move line up" })
