return {
  "gregorias/nvim-mapper",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local mapper = require("nvim-mapper")
    mapper.setup({
      action_on_enter = "execute",
    })

    -- Keymaps

    -- Mapper panel

    mapper.map({ "n", "i" }, "<D-p>", function()
      vim.cmd(":Telescope mapper")
    end, { silent = true, noremap = true }, "Telescope", "open_maper", "Open Mapper")

    -- Windows
    mapper.map("n", "hs", ":split<CR>", { silent = true, noremap = true }, "Window", "split", "Split Horizontal")
    mapper.map("n", "vs", ":vsplit<CR>", { silent = true, noremap = true }, "Window", "vsplit", "Split Vertical")

    -- Telescope
    local builtin = require("telescope.builtin")

    mapper.map(
      "n",
      "<leader>.",
      builtin.find_files,
      { silent = true, noremap = true },
      "Telescope",
      "find_files",
      "Find files"
    )

    mapper.map(
      "n",
      "<leader>p",
      builtin.commands,
      { silent = true, noremap = true },
      "Telescope",
      "list_cmd",
      "List commands"
    )

    mapper.map(
      "n",
      "<leader>r",
      builtin.oldfiles,
      { silent = true, noremap = true },
      "Telescope",
      "recent_files",
      "Recent files"
    )

    mapper.map(
      "n",
      "<leader>k",
      builtin.keymaps,
      { silent = true, noremap = true },
      "Telescope",
      "list_keymaps",
      "List keympas"
    )

    mapper.map(
      "n",
      "<leader>rg",
      builtin.live_grep,
      { silent = true, noremap = true },
      "Telescope",
      "live_grep",
      "Live grep"
    )

    mapper.map(
      "n",
      "<laeder>h",
      builtin.command_history,
      { silent = true, noremap = true },
      "Telescope",
      "cmd_history",
      "Command history"
    )

    mapper.map(
      "n",
      "<leader>b",
      ":Telescope buffers<CR>",
      { silent = true, noremap = true },
      "Telescope",
      "buffers_list",
      "Buffers list"
    )

    -- Neo-tree
    mapper.map(
      "n",
      "<C-b>",
      ":Neotree filesystem reveal float<CR>",
      { silent = true, noremap = true },
      "Neo-tree",
      "files_list",
      "Files panel"
    )

    mapper.map(
      "n",
      "<leader>bi",
      ":Neotree buffers reveal float<CR>",
      { silent = true, noremap = true },
      "Neo-tree",
      "buffers_list",
      "Buffers list"
    )

    -- LSP
    mapper.map(
      "n",
      "K",
      vim.lsp.buf.hover,
      { silent = true, noremap = true },
      "LSP",
      "info_hover",
      "Info hover buffer"
    )

    mapper.map(
      "n",
      "<leader>gd",
      vim.lsp.buf.definition,
      { silent = true, noremap = true },
      "LSP",
      "goto_definition",
      "Goto definition"
    )

    mapper.map(
      "n",
      "<leader>gr",
      vim.lsp.buf.references,
      { silent = true, noremap = true },
      "LSP",
      "goto_reference",
      "Goto references"
    )

    mapper.map(
      "n",
      "<leader>ca",
      vim.lsp.buf.code_action,
      { silent = true, noremap = true },
      "LSP",
      "code_action",
      "Code action"
    )

    mapper.map("n", "<leader>f", vim.lsp.buf.format, { silent = true, noremap = true }, "LSP", "format", "Format")

    -- Hop
    mapper.map("n", "s", ":HopChar2<cr>", { silent = true, noremap = true }, "Hop", "HopChar2", "Buffers list")
    mapper.map("n", "S", ":HopWord<cr>", { silent = true, noremap = true }, "Hop", "HopWord", "Buffers list")

    -- Comments
    mapper.map({ "n", "i" }, "<D-/>", function()
      require("Comment.api").toggle.linewise.current()
    end, { silent = true, noremap = true }, "Comments", "ToggleComments", "Toggle Comments")

    -- Duplicate
    mapper.map(
      { "n", "i" },
      "<S-A-Up>",
      "<CMD>LineDuplicate -1<CR>",
      { silent = true, noremap = true },
      "Duplicate",
      "LineDuplicateUp",
      "Line Duplicate Up"
    )

    mapper.map(
      { "n", "i" },
      "<S-A-Down>",
      "<CMD>LineDuplicate +1<CR>",
      { silent = true, noremap = true },
      "Duplicate",
      "LineDuplicateDown",
      "Line Duplicate Down"
    )

    mapper.map(
      "v",
      "<S-A-Up>",
      "<CMD>VisualDuplicate -1<CR>",
      { silent = true, noremap = true },
      "Duplicate",
      "VisualDuplicateUp",
      "Visual Duplicate Up"
    )

    mapper.map(
      "v",
      "<S-A-Down>",
      "<CMD>VisualDuplicate +1<CR>",
      { silent = true, noremap = true },
      "Duplicate",
      "VisualDuplicateDown",
      "Visual Duplicate Down"
    )

    -- Move line
    mapper.map(
      { "n", "i" },
      "<A-Up>",
      "<CMD>m -2<CR>",
      { silent = true, noremap = true },
      "Move",
      "MoveLineUp",
      "Move Line Up"
    )

    mapper.map(
      { "n", "i" },
      "<A-Down>",
      "<CMD>m +1<CR>",
      { silent = true, noremap = true },
      "Move",
      "MoveLineDown",
      "Move Line Down"
    )

    -- Copilot
    local copilot = require("copilot.suggestion")

    mapper.map(
      "n",
      "<leader>cs",
      ":Copilot<cr>",
      { silent = true, noremap = true },
      "Copilot",
      "StartCopilot",
      "Start Copilot"
    )

    mapper.map(
      "n",
      "<leader>cp",
      ":Copilot panel<cr>",
      { silent = true, noremap = true },
      "Copilot",
      "CopilotPanel",
      "Copilot panel"
    )

    mapper.map(
      "i",
      "<C-CR>",
      copilot.accept,
      { silent = true, noremap = true },
      "Copilot",
      "AcceptSuggestion",
      "Accept suggestion"
    )

    mapper.map(
      "i",
      "<C-Right>",
      copilot.next,
      { silent = true, noremap = true },
      "Copilot",
      "NextSuggestion",
      "Next suggestion"
    )

    mapper.map(
      "i",
      "<C-Left>",
      copilot.prev,
      { silent = true, noremap = true },
      "Copilot",
      "PrevSuggestion",
      "Previous suggestion"
    )

    mapper.map(
      "n",
      "<leader>ct",
      copilot.toggle_auto_trigger,
      { silent = true, noremap = true },
      "Copilot",
      "CopilotToggle",
      "Toggle auto-triger"
    )

    -- Buffers

    mapper.map(
      "n",
      "<leader>bb",
      "<CMD>:bprevious<CR>",
      { silent = true, noremap = true },
      "Buffer",
      "previous_buffer",
      "Previous buffer"
    )

    mapper.map(
      "n",
      "<leader>bn",
      "<CMD>enew<CR>",
      { silent = true, noremap = true },
      "Buffer",
      "new_buffer",
      "New Buffer"
    )

    mapper.map(
      "n",
      "<leader>bk",
      "<CMD>bd<CR>",
      { silent = true, noremap = true },
      "Buffer",
      "kill_buffer",
      "Kill Buffer"
    )

    mapper.map(
      "n",
      "<leader>bK",
      "<CMD>bd!<CR>",
      { silent = true, noremap = true },
      "Buffer",
      "kill_buffer_no_save",
      "Kill Buffer-no save"
    )

    mapper.map(
      "n",
      "<D-s>",
      ":w<CR>",
      { silent = true, noremap = true },
      "Buffer",
      "save_buffer",
      "Write/save file"
    )

    -- Others

    mapper.map(
      "n",
      "<F6>",
      ":ToggleSpell<CR>",
      { silent = true, noremap = true },
      "Other",
      "toggle_spell",
      "Toggle spell"
    )

    mapper.map("n", "<F2>", ":so %<CR>", { silent = true, noremap = true }, "Other", "source_file", "Resource file")

    mapper.map(
      "n",
      "<leader>/",
      ":noh<CR>",
      { silent = true, noremap = true },
      "Other",
      "clear_highlight",
      "Clear highlight"
    )

    mapper.map(
      "n",
      "<leader>wt",
      "<cmd>ToggleWrap<cr>",
      { silent = true, noremap = true },
      "Other",
      "toggle_wrap",
      "Toggle Wrap"
    )

    mapper.map(
      "n",
      "<leader>ut",
      "<cmd>UndotreeToggle<cr>",
      { silent = true, noremap = true },
      "Other",
      "undotree_toggle",
      "Undo tree toggle"
    )
  end,
}
