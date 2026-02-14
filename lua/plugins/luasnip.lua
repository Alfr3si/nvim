return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	name = "luasnip",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},

	config = function()
		local ls = require("luasnip")

		ls.config.set_config({
			history = true,
			updateevents = "TextChanged, TextChangedI",
			enable_autosnipets = true,
		})

		--keymaps
    -- expand current item or jump
		vim.keymap.set({ "i", "s" }, "<C-j>", function()
			if ls.expand_or_jumpable() then
				ls.expand_or_jump()
			end
		end, { silent = true })

    -- this always moves to the previous item within the snippet
		vim.keymap.set({ "i", "s" }, "<C-k>", function()
			if ls.jumpable(-1) then
				ls.jump(-1)
			end
		end, { silent = true })

    -- this is useful for choice nodes
		vim.keymap.set("i", "<C-l>", function()
			if ls.choice_active() then
				ls.change_choice(1)
			end
		end)

		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
