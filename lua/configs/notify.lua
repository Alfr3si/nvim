require("notify").setup({
  stages = "fade_in_slide_out",
  background_colour = "#000000",
  timeout = 2000,
  max_wicth = 50,
  max_height = 10,
  max_notificaions = 5,
  border = "rounded",
  layout = "vertical",
  render = "default",
  levels = {
    info = { bg = "#282828", fg = "#ffffff" },
    warn = { bg = "#ff8800", fg = "#ffffff" },
    error = { bg = "#ff0000", fg = "#ffffff" },
  },

})

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    require("notify")("¡Archivo abierto!", "info", { timeout = 2000 })
  end,
})


