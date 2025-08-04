return {
	"saghen/blink.pairs",
	event = "InsertEnter",
	version = "*",
	dependencies = "saghen/blink.download",
	opts = {
		mappings = {
			enabled = true,
			disabled_filetypes = {},
			pairs = {},
		},
		highlights = {
			enabled = true,
			-- groups = { "BlinkPairsOrange", "BlinkPairsPurple", "BlinkPairsBlue" },
			-- unmatched_group = "BlinkPairsUnmatched",
			matchparen = { enabled = true, group = "MatchParen" },
		},
		debug = false,
	},
}
