
return {
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = {
    "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact",
    "php", "vue", "svelte", "templ", -- puedes mantener los que desees
  },
  settings = {
    tailwindCSS = {
      validate = true,
    },
  },
  root_dir = function(bufnr, on_dir)
    local root_files = {
      "tailwind.config.js", "tailwind.config.ts",
      "postcss.config.js", ".git",
    }

    local fname = vim.api.nvim_buf_get_name(bufnr)
    local match = vim.fs.find(root_files, { path = fname, upward = true })[1]

    if match then
      on_dir(vim.fs.dirname(match))
    end
  end,
}
