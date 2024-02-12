vim.g.spell = false
vim.api.nvim_create_user_command('ToggleSpell',
  function()
    if not vim.g.spell then
      vim.g.spell = true
      vim.cmd("set spell")
    else
      vim.g.spell = false
      vim.cmd("set nospell")
    end
  end,
  { nargs = 0,
    desc = "Toggle spelling"
  })