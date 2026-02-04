return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  version = false,
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()

    local ts = require("nvim-treesitter")
    local ts_to = require("nvim-treesitter-textobjects")
    local move = require("nvim-treesitter-textobjects.move")
    local select = require("nvim-treesitter-textobjects.select")

    local lenguajes = {
      "lua",
      "html",
      "css",
      "php",
      "javascript",
      "markdown",
      "diff",
      "json",
    }

    ts.install(lenguajes)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = lenguajes,
      callback = function()
        vim.treesitter.start()
      end
    })

    ts_to.setup({
      move = {
        enable = true,
        set_jumps = true,
      },
    })

    -- Keymaps
    -- movimiento
    vim.keymap.set({"n", "x", "o"}, "]f", function()
      move.goto_next_start("@function.outer", "textobjects")
    end, { desc = "Siguiente funcion", silent = true })

    vim.keymap.set({"n", "x", "o"}, "[f", function()
      move.goto_previous_start("@function.outer", "textobjects")
    end, { desc = "Funcion anterior", silent = true })

    vim.keymap.set({"n", "x", "o"}, "[F", function()
      move.goto_next_end("@function.outer", "textobjects")
    end, { desc = "Final de la funcion", silent = true })

    vim.keymap.set({"n", "x", "o"}, "]c", function()
      move.goto_next_start("@class.outer", "textobjects")
    end, { desc = "Siguiente clase", silent = true })

    vim.keymap.set({"n", "x", "o"}, "[c", function()
      move.goto_previous_start("@class.outer", "textobjects")
    end, { desc = "Clase anterior", silent = true })

    vim.keymap.set({"n", "x", "o"}, "[C", function()
      move.goto_next_end("@class.outer", "textobjects")
    end, { desc = "Final de la clase", silent = true })

    vim.keymap.set({"n", "x", "o"}, "]a", function()
      move.goto_next_start("@parameter.inner", "textobjects")
    end, { desc = "Siguiente argumento", silent = true })

    vim.keymap.set({"n", "x", "o"}, "[a", function()
      move.goto_previous_start("@parameter.inner", "textobjects")
    end, { desc = "Argumento anterior", silent = true })

    -- seleccion
    vim.keymap.set({"x", "o"}, "if", function()
      select.select_textobject("@function.inner", "textobjects")
    end, { desc = "Interior de la funcion", silent = true })

    vim.keymap.set({"x", "o"}, "af", function()
      select.select_textobject("@function.outer", "textobjects")
    end, { desc = "Toda la funcion", silent = true }) 

    vim.keymap.set({"x", "o"}, "ic", function()
      select.select_textobject("@class.inner", "textobjects")
    end, { desc = "Interior de la clase", silent = true }) 

    vim.keymap.set({"x", "o"}, "ac", function()
      select.select_textobject("@class.outer", "textobjects")
    end, { desc = "Toda la clase", silent = true }) 
  end
}
