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

    -- Keymaps de seleecion
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
