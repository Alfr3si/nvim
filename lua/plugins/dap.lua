return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			{ "rcarriga/nvim-dap-ui", opts = {} },
			{ "theHamsta/nvim-dap-virtual-text", opts = {} },
			{ "nvim-neotest/nvim-nio" },
		},
		keys = { { "<leader>da", function() end, { silent = true } } },
		config = function()
			local dap, dapui = require("dap"), require("dapui")
			-- startup  Virtula text
			require("nvim-dap-virtual-text").setup({})

			-- load configurations
			require("plugins.conf.languages.python")
			require("plugins.conf.languages.c_sharp")

			-- message
			vim.notify("nvim-dap loaded 🐞")

			-- icons dap
			vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "", linehl = "", numhl = "" })
			vim.fn.sign_define("DapStopped", { text = "👉", texthl = "", linehl = "", numhl = "" })
			vim.fn.sign_define("DapBreakpointRejected", { text = "🚫", texthl = "", linehl = "", numhl = "" })
			vim.fn.sign_define("DapBreakpointCondition", { text = "❓", texthl = "", linehl = "", numhl = "" })
			vim.fn.sign_define("DapLogPoint", { text = "🗯️", texthl = "", linehl = "", numhl = "" })

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			-- keymaps
			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint", silent = true })
			vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue", silent = true })
			vim.keymap.set("n", "<leader>dl", dap.step_into, { desc = "Step into", silent = true })
			vim.keymap.set("n", "<leader>dj", dap.step_over, { desc = "Step over", silent = true })
			vim.keymap.set("n", "<leader>dk", dap.step_out, { desc = "Step out", silent = true })
			vim.keymap.set("n", "<leader>dr", dap.run_to_cursor, { desc = "Run to cursor", silent = true })
			vim.keymap.set("n", "<leader>dh", dapui.eval, { desc = "Evaluate expression", silent = true })
			vim.keymap.set("n", "<leader>dx", function()
				require("dap").clear_breakpoints()
				require("dap").terminate()
				require("dapui").close({})
			end, { desc = "Terminate debug session" })
		end,
	},
}
