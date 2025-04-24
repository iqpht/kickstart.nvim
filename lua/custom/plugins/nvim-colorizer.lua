-- 色表示
return {
  'norcalli/nvim-colorizer.lua',
  lazy = true,
  keys = {
    { '<Leader>mc', '<cmd>ColorizerToggle<cr>', mode = 'n', desc = '[c]olorizer' },
  },
  config = function()
    require('colorizer').setup()
  end,
}
