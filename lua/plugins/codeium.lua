return {
  "Exafunction/codeium.nvim",
  config = function()
    local codeium = require("codeium")

    codeium.setup({
      enable_cmp_source = false,
      virtual_text = {
        enabled = true,
        manual = false,
        filetypes = {},
        default_filetype_enabled = true,
        idle_delay = 75,
        virtual_text_priority = 65535,
        map_keys = true,
        accept_fallback = nil,
        key_bindings = {
          accept = "<A-y>",
          accept_word = "<A-w>",
          accept_line = "<A-l>",
          clear = "<A-c>",
          next = "<A-]>",
          prev = "<A-[>",
        }
      }
    })
  end,
}
