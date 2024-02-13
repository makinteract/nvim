-- Wrapping text

-- Main function for toggling the text wrapper
vim.g.wrap = false
vim.api.nvim_create_user_command("ToggleWrap", function()
	if not vim.g.wrap then
		vim.g.wrap = true
		vim.wo.wrap = true
		vim.wo.linebreak = true

		vim.api.nvim_set_keymap("n", "<Up>", "gk", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "k", "gk", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<Down>", "gj", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "j", "gj", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<Home>", "g<Home>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<End>", "g<End>", { noremap = true, silent = true })
	else
		vim.g.wrap = false
		vim.wo.wrap = false
		vim.wo.linebreak = false

		vim.api.nvim_del_keymap("n", "<Up>")
		vim.api.nvim_del_keymap("n", "<Down>")
		vim.api.nvim_del_keymap("n", "j")
		vim.api.nvim_del_keymap("n", "k")
		vim.api.nvim_del_keymap("n", "<Home>")
		vim.api.nvim_del_keymap("n", "<End>")
	end
end, { nargs = 0 })

-- Autoactivate it in some files
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*.txt", "*.md", "*.json", ".jsonc" },
	-- enable wrap mode for selected files only
	command = "ToggleWrap",
	-- command = "setlocal wrap"
})
