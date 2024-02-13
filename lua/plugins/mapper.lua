return { "gregorias/nvim-mapper",
  dependencies = 
    { 
        "nvim-telescope/telescope.nvim"
    },
  config = function() 
    mapper = require("nvim-mapper")
    mapper.setup{} 

    -- Keymaps

    -- Windows
    mapper.map('n', 'hs', ":split<CR>",
        {silent = true, noremap = true},
        "Window", "split", "Split Horizontal")

    mapper.map('n', "vs", ":vsplit<CR>",
        {silent = true, noremap = true},
        "Window", "vsplit", "Split Vertical")


    -- Telescope
    local builtin = require("telescope.builtin")

    mapper.map('n', "<C-p>", ":Telescope mapper<CR>",
        {silent = true, noremap = true},
        "Telescope", "find_files", "Find files")

    mapper.map('n', "<leader>.", builtin.find_files,
        {silent = true, noremap = true},
        "Telescope", "find_files", "Find files")
    
    mapper.map('n', "<leader>p", builtin.commands,
        {silent = true, noremap = true},
        "Telescope", "list_cmd", "List commands")

    mapper.map('n', "<C-k>", builtin.keymaps,
        {silent = true, noremap = true},
        "Telescope", "list_keymaps", "List keympas")

    mapper.map('n', "<leader>g", builtin.live_grep,
        {silent = true, noremap = true},
        "Telescope", "live_grep", "Live grep")

        mapper.map('n', "<C-h>", builtin.command_history,
        {silent = true, noremap = true},
        "Telescope", "cmd_history", "Command history")

    -- Neo-tree
    mapper.map('n', "<C-b>", ":Neotree buffers reveal float<CR>",
        {silent = true, noremap = true},
        "Neo-tree", "files_list", "Files panel")

    mapper.map('n', "<leader>b", "",
        {silent = true, noremap = true},
        "Neo-tree", "buffers_list", "Buffers list")
    
    -- LSP
    mapper.map('n', "K", vim.lsp.buf.hover,
        {silent = true, noremap = true},
        "LSP", "info_hover", "Info hover buffer")

        mapper.map('n', "<leader>gd", vim.lsp.buf.definition,
            {silent = true, noremap = true},
            "LSP", "goto_definition", "Goto definition")
        
        mapper.map('n', "<leader>gr", vim.lsp.buf.references,
            {silent = true, noremap = true},
            "LSP", "goto_definition", "Goto references"

        mapper.map('n', "<leader>ca", vim.lsp.buf.code_action,
            {silent = true, noremap = true},
            "LSP", "code_action", "Code action")

    -- Hop
    mapper.map('n', "s", ":HopChar2<cr>",
        {silent = true, noremap = true},
        "Hop", "HopChar2", "Buffers list")

    mapper.map('n', "S", ":HopWord<cr>",
        {silent = true, noremap = true},
        "Hop", "HopWord", "Buffers list")

    -- Others
    mapper.map('n', "<D-s>", ":w<CR>",
        {silent = true, noremap = true},
        "Other", "save", "Write/save file")


    -- Find files
    --   vim.keymap.set("n", "<leader>rg", builtin., {desc="Live grep"})

  end
}


   