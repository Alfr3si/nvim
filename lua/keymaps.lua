
-- keymaps.lua

-- Teclas desactivadas :(
vim.api.nvim_set_keymap('n', '<up>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<down>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<left>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<right>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', 'a', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'e', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-d>', '<nop>', { noremap = true, silent = true }) 
vim.api.nvim_set_keymap('n', '<C-u>', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'r', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'b', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'w', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'b', '<nop>', { noremap = true, silent = true })
-- Desactivar las teclas en mayúsculas
vim.api.nvim_set_keymap('n', 'A', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'B', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'C', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'D', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'E', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'F', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'G', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'H', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'I', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'M', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'O', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'P', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'Q', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'R', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'S', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'T', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'U', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'V', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'W', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'X', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'Y', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'Z', '<nop>', { noremap = true, silent = true })

-- Mapeo para abrir y cerrar NvimTree
vim.keymap.set('n', '<A-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Mapeo para :Files con Telescope
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

--###########################################################################################################
--#   Keymaps de Navegacion										    #
--###########################################################################################################

--Ir al inicio de la linea
vim.api.nvim_set_keymap('n', 'a', '0', { noremap = true, silent = true })
--Ir al final de la linea
vim.api.nvim_set_keymap('n', 's', '$', { noremap = true, silent = true })
--Ir al inicio del archivo
vim.api.nvim_set_keymap('n', 'q', 'gg', { noremap = true, silent = true })
--Ir al final del archivo
vim.api.nvim_set_keymap('n', 'w', 'G', { noremap = true, silent = true })
--Ir al inicio de la palabra anterior
vim.api.nvim_set_keymap('n', 'z', 'b', { noremap = true, silent = true })
--Ir al final de la palabra actual
vim.api.nvim_set_keymap('n', 'x', 'e', { noremap = true, silent = true })
--Ir al siguiente parrafo
vim.api.nvim_set_keymap('n', ']', '}', { noremap = true, silent = true })
--Ir al parrafo anterior
vim.api.nvim_set_keymap('n', '[', '{', { noremap = true, silent = true })
--Ir a media pantalla abajo
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>', { noremap = true, silent = true })
--Ir a media pantalla arriba
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>', { noremap = true, silent = true })

--###################################################################################3
--insertar y posicionar el cursor correctamente
-- inicio = izquierda  , final = derecha ,  cualquier otro = derecha  <<este es uno de los mas IMPORTANT>
vim.api.nvim_set_keymap(
  'n',
  'i',
  [[luaeval("vim.fn.col('.') == vim.fn.col('$') - 1 and 'A' or (vim.fn.col('.') == 1 and 'I' or 'li')")]],
  { noremap = true, expr = true, silent = true }
)
--#######################################################################################3



-- Mover el cursor al final de la línea en modo v
vim.api.nvim_set_keymap('v', 's', '$', { noremap = true, silent = true })
--Mover al inicio de la linea en modo v
vim.api.nvim_set_keymap('v', 'a', '0', { noremap = true, silent = true })
--Ir al inicio del archivo mdo v
vim.api.nvim_set_keymap('v', 'q', 'gg', { noremap = true, silent = true })
--Ir al final del archivo modo v
vim.api.nvim_set_keymap('v', 'w', 'G', { noremap = true, silent = true })
 --Ir al inicio de la palabra anterior
vim.api.nvim_set_keymap('v', 'z', 'b', { noremap = true, silent = true })
--Ir al final de la palabra actual
vim.api.nvim_set_keymap('v', 'x', 'e', { noremap = true, silent = true })
--Ir al siguiente parrafo
vim.api.nvim_set_keymap('v', '}', '}', { noremap = true, silent = true })
--Ir al parrafo anterior
vim.api.nvim_set_keymap('v', '{', '{', { noremap = true, silent = true })

-- Mover el cursor al final de la línea en modo i
vim.api.nvim_set_keymap('i', '<C-e>', '<Esc>$i', { noremap = true, silent = true })
--Mover al inicio de la linea en modo i
vim.api.nvim_set_keymap('i', '<C-a>', '<Esc>0i', { noremap = true, silent = true })

