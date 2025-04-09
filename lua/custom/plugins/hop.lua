-- カーソル移動
return {
  'smoka7/hop.nvim',
  version = '*',
  lazy = true,
  keys = {
    { '<Leader>mh', '<cmd>HopChar1<cr>', desc = '[h]op' },
  },
  config = function()
    require('hop').setup()
  end,
}
