--these are keybindings very utils
vim.keymap.set("n", "<C-q>", ":bd<CR>", { desc = "Cerrar buffer actual", silent = true })
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Siguiente buffer", silent = true, noremap = true })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Buffer anterior", silent = true, noremap = true })
