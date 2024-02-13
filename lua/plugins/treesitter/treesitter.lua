return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = {
					"c",
					"lua",
					"vim",
					"vimdoc",
					"query",
					-- "javascript",
					-- "typescript",
					"markdown",
					"css",
					"html",
				},
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
				playground = {
					enable = true,
				},
			})
		end,
	},
	{
		"nvim-treesitter/playground",
	},
}
