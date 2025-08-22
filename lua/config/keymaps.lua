-- Switch bentween window
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch to down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch to up window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch to right window" })

-- Open UI interface
vim.keymap.set("n", "<leader>L", "<CMD>Lazy<CR>", { desc = "Lazy UI" })
vim.keymap.set("n", "<leader>M", "<CMD>Mason<CR>", { desc = "Mason UI" })
vim.keymap.set("n", "<leader>C", "<CMD>Huefy<CR>", { desc = "color picker" })

-- quit
vim.keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit file" })

-- Resize pane
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

--- Git Blame
vim.keymap.set("n", "<leader>gB", "<cmd>Git blame<cr>", { desc = "Git blame buffer" })
