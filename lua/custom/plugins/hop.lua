-- ƒJ[ƒ\ƒ‹ˆÚ“®
return {
  'smoka7/hop.nvim',
  version = "*",
  lazy = true,
  keys = {
    { '<Leader>h', '<cmd>HopChar1<cr>' },
  },
  config = function()
    require'hop'.setup()
  end
}
