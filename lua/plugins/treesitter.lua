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

    vim.keymap.set({"n", "x", "o"}, "]f", function()
      move.goto_next_start("@function.outer", "textobjects")
    end, { desc = "Saltar a la siguiente funcion", silent = true })
  end
}
