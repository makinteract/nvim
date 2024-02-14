return {
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  opts = {
    log_path = vim.fn.expand("$HOME") .. "/tmp/sig.log",
    debug = true,
    hint_enable = false,
    handler_opts = { border = "single" },
    max_width = 80,
  },
  config = function(_, opts)
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("lsp_signature").setup(opts)

    vim.keymap.set({ "n" }, "<C-k>", function()
      require("lsp_signature").toggle_float_win()
    end, { silent = true, noremap = true, desc = "toggle signature" })

    vim.keymap.set({ "n" }, "<Leader>k", function()
      vim.lsp.buf.signature_help()
    end, { silent = true, noremap = true, desc = "toggle signature" })
  end,
}
