return {
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp");
      cmp.setup({});
    end
  },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-buffer" },
}
