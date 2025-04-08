-- カラースキーム
return {
  'neanias/everforest-nvim',
  lazy = true,
  event = 'VimEnter',
  config = function()
    vim.opt.background = 'dark'
    vim.cmd [[colorscheme everforest]]
  end,
}
