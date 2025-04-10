-- カーソル移動
return {
  'smoka7/hop.nvim',
  version = '*',
  lazy = true,
  keys = {
    { '<Leader>o', '<cmd>HopChar1<cr>', mode = '', desc = 'h[o]p' },
  },
  config = function()
    require('hop').setup()
  end,
}
