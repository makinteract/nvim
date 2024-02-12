return {
  'numToStr/Comment.nvim',
  opts = {
    -- add any options here
  },
  lazy = false,
  config = function()
    require('Comment').setup({
      padding = true,
      -- ignores empty lines
      ignore = '^$',
      sticky = true,
      ---LHS of toggle mappings in NORMAL mode
      toggler = {
        ---Line-comment toggle keymap
        line = '<D-/>',
        ---Block-comment toggle keymap
        block = 'gbc',
      },
    }) 
  end
}
