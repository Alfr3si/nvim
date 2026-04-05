return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = "main",
  commit = vim.fn.has("nvim-0.12") == 0 and "7caec274fd19c12b55902a5b795100d21531391f" or nil,
  version = false,
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()

    local ts = require("nvim-treesitter")
    local ts_to = require("nvim-treesitter-textobjects")
    local select = require("nvim-treesitter-textobjects.select")

    local languages = {
      "lua",
      "html",
      "css",
      "php",
      "javascript",
      "jsx",
      "typescript",
      "tsx",
      "markdown",
      "diff",
      "json",
      "latex",
    }

    for _, language in ipairs(languages) do
      ts.install(language)
    end

    vim.api.nvim_create_autocmd("FileType", {
      pattern = languages,
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
