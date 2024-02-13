-- lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- other files
require("vim-options")
require("spelling")

-- require("lazy").setup("plugins")
require("lazy").setup({
  {import = "plugins"},
  {import = "plugins.treesitter"},
  {import = "plugins.ui"},
  {import = "plugins.utils"},
})


