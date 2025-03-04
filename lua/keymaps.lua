
-- keymaps.lua

-- Teclas desactivadas :(
vim.api.nvim_set_keymap('n', '<up>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<down>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<left>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<right>', '<nop>', { noremap = true })
-- Mapeo para abrir y cerrar NvimTree
vim.keymap.set('n', '<A-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

--vim.api.nvim_set_keymap('n', '<A-f>', ':lua require("telescope.builtin").find_files({hidden = true})<CR>', { noremap = true, silent = true })
-- Atajo para abrir el file-browser
vim.api.nvim_set_keymap('n', '<A-f>', '<cmd>Telescope file_browser<CR>', { noremap = true, silent = true })

-- Mapeo para :Live Grep con Telescope
vim.api.nvim_set_keymap('n', '<A-g>', ':lua require("telescope.builtin").live_grep({hidden = true, additional_args = function() return {"--hidden"} end})<CR>', { noremap = true, silent = true })

--se supone que busca dentro de un archivo
vim.api.nvim_set_keymap('n', '<A-s>', ':Telescope current_buffer_fuzzy_find<CR>', { noremap = true, silent = true })

-- Mover al siguiente buffer
vim.keymap.set('n', '<A-Tab>', ':bnext<CR>', { desc = 'Mover al siguiente buffer' })

-- Cerrar el buffer actual
vim.api.nvim_set_keymap('n', '<A-c>', ':bdelete!<CR>', { noremap = true, silent = true })

-- Usar Tab para autocompletar
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"', {expr = true, noremap = true})
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "<C-p>" : "<C-h>"', {expr = true, noremap = true})

-- Mapea el atajo <C-w>w para alternar entre las ventanas
vim.api.nvim_set_keymap('n', '<A-w>', '<C-w>w', { noremap = true, silent = true })

--crear un split de forma horizontal
vim.api.nvim_set_keymap('n', '<C-s>', ':vsplit<CR>', { noremap = true, silent = true })

-- Abre el terminal con Ctrl + t en la parte inferior    (recuerda que para escribrir usa i de insertar)
vim.api.nvim_set_keymap('n', '<C-t>', ':botright split | term<CR>', { noremap = true, silent = true })

-- Mapea el atajo Ctrl + z para deshacer (undo)
vim.api.nvim_set_keymap('n', '<C-z>', 'u', { noremap = true, silent = true })

-- Mapea el atajo Ctrl + y para rehacer (redo)
vim.api.nvim_set_keymap('n', '<C-y>', '<C-r>', { noremap = true, silent = true })

-- Aumentar el tamaño vertical
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +2<CR>', { noremap = true, silent = true })

-- Reducir el tamaño vertical
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize -2<CR>', { noremap = true, silent = true })

--para salir de terminal
vim.api.nvim_set_keymap('t', '<A-q>', '<C-\\><C-n><C-w>w', { noremap = true, silent = true })


