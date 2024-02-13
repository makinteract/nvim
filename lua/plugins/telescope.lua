return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-lua/popup.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("mapper")
			local builtin = require("telescope.builtin")

			-- Use mapper instead
			-- vim.keymap.set("n", "<leader>.", builtin.find_files, {desc="Find files"})
			-- vim.keymap.set("n", "<leader>rg", builtin.live_grep, {desc="Live grep"})
			-- vim.keymap.set("n", "<leader>p", builtin.oldfiles, {desc="File history"})
			-- vim.keymap.set("n", "<C-p>", builtin.commands, {desc="List all commands"})
			-- vim.keymap.set("n", "<C-h>", builtin.command_history, {desc="Command history"})
			-- vim.keymap.set("n", "<C-k>", builtin.keymaps, {desc="List keymaps"})

			require("telescope").load_extension("ui-select")
		end,
	},
}
