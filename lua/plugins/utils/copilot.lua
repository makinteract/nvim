-- Self enabled when in insert mode
-- Ctrl+Right or Left will trigger a suggestion
-- Ctrl+Down opens the panel
-- Ctrl+Enter will select it

return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require('copilot').setup({
        panel = {
          enabled = true,
          auto_refresh = false,
          keymap = {
            jump_prev = "C-Left",
            jump_next = "C-Right",
            accept = "<C-CR>",
            refresh = "C-R",
            open = "<C-Down>"
          },
          layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.4
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = false,
          debounce = 75,
          keymap = {
            accept = "<C-CR>",
            accept_word = false,
            accept_line = false,
            next = "<C-Right>",
            prev = "<C-Left>",
            dismiss = "<C-x>",
          },
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false,
        },
        copilot_node_command = 'node', -- Node.js version must be > 18.x
        server_opts_overrides = {},
      })
    end,
  },
}
