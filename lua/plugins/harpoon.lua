return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
  -- stylua: ignore start
  keys = {
    { "<leader>ha", function() require("harpoon"):list():add() end, desc = "Add to Harpoon" },
    { "<leader>hs", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "Toggle Harpoon Menu" },
    { "<leader>h1", function() require("harpoon"):list():select(1) end, desc = "Select Harpoon 1" },
    { "<leader>h2", function() require("harpoon"):list():select(2) end, desc = "Select Harpoon 2" },
    { "<leader>h3", function() require("harpoon"):list():select(3) end, desc = "Select Harpoon 3" },
    { "<leader>h4", function() require("harpoon"):list():select(4) end, desc = "Select Harpoon 4" },
  },
  -- stylua: ignore
  config = true,
}
