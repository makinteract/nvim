return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")

      -- Find files
      vim.keymap.set("n", "<leader>.", builtin.find_files, {})
      -- Ripgrep the current file
      vim.keymap.set("n", "<leader>rg", builtin.live_grep, {})
      -- Ripgrep the recent file
      vim.keymap.set("n", "<leader>p", builtin.oldfiles, {})
      vim.keymap.set("n", "<C-p>", builtin.commands, {})
      vim.keymap.set("n", "<C-h>", builtin.command_history, {})



      require("telescope").load_extension("ui-select")
    end,
  },
}
