return {
  "neovim/nvim-lspconfig",
  event = "BufReadPre",
  dependencies = {
    "saghen/blink.cmp",
    "nvimtools/none-ls.nvim",
    "nvim-lua/plenary.nvim",
    "williamboman/mason.nvim",
  },
  config = function()

    vim.diagnostic.config({
      update_in_insert = true,
      severity_sort = true,
      virtual_lines = {
        current_line = true,
      },
      float = {
        style = "minimal",
        border = "single",
        source = "always",
      },
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "󰚌 ",
          [vim.diagnostic.severity.WARN] = " ",
          [vim.diagnostic.severity.INFO] = " ",
          [vim.diagnostic.severity.HINT] = " ",
        },
      },
    })

    local capabilities = require("blink.cmp").get_lsp_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }

    local on_attach = function(_, bufnr)

      local map = vim.keymap.set
      local opts = { buffer = bufnr, silent = true }

       map("n", "gd", vim.lsp.buf.definition, opts)
       map("n", "gD", vim.lsp.buf.declaration, opts)
       map("n", "gr", vim.lsp.buf.references, opts)
       map("n", "gi", vim.lsp.buf.implementation, opts)
       map("n", "K", vim.lsp.buf.hover, opts)
       map("n", "<leader>rn", vim.lsp.buf.rename, opts)
       map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    end

    local servers = {
      "lua_ls"
    }

    for _, server in ipairs(servers) do
      vim.lsp.config(server, {
        capabilities = capabilities,
        on_attach = on_attach,
      })
    end

    vim.lsp.enable(servers)

  end,
}
