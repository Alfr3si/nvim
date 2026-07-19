return {
	"yetone/avante.nvim",
	-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
	-- ⚠️ must add this setting! ! !
	build = vim.fn.has("win32") ~= 0 and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
		or "make",
	event = "VeryLazy",
	version = false, -- Never set this value to "*"! Never!
	---@module 'avante'
	---@type avante.Config
	opts = {
		-- add any opts here
		-- this file can contain specific instructions for your project
		instructions_file = "avante.md",
		-- for example
		provider = "auto_free",
		  default_provider = "auto_free",
		  fallback_provider = "gpt_oss",
		extra_headers = {
			["HTTP-Referer"] = "https://github.com/yetone/avante.nvim",
			["X-Title"] = "Avante.nvim",
		},
		providers = {
			["auto_free"] = {
				__inherited_from = "openai",
				endpoint = "https://openrouter.ai/api/v1",
				model = "openrouter/free",
				api_key_name = "AVANTE_OPENROUTER_API_KEY",
			},

			["gemma"] = {
				__inherited_from = "openai",
				endpoint = "https://openrouter.ai/api/v1",
				model = "google/gemma-3-27b-it:free",
				api_key_name = "AVANTE_OPENROUTER_API_KEY",
			},

			["deepseek_r1"] = {
				__inherited_from = "openai",
				endpoint = "https://openrouter.ai/api/v1",
				model = "deepseek/deepseek-r1:free",
				api_key_name = "AVANTE_OPENROUTER_API_KEY",
			},

			["gpt_oss"] = {
				__inherited_from = "openai",
				endpoint = "https://openrouter.ai/api/v1",
				model = "openai/gpt-oss-120b:free",
				api_key_name = "AVANTE_OPENROUTER_API_KEY",
			},
		},
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"folke/snacks.nvim",
		"saghen/blink.compat",
		"echasnovski/mini.icons",
		{
			-- support for image pasting
			"HakonHarnes/img-clip.nvim",
			event = "VeryLazy",
			opts = {
				-- recommended settings
				default = {
					embed_image_as_base64 = false,
					prompt_for_file_name = false,
					drag_and_drop = {
						insert_mode = true,
					},
					-- required for Windows users
					use_absolute_path = true,
				},
			},
		},
		{
			-- Make sure to set this up properly if you have lazy=true
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
}
