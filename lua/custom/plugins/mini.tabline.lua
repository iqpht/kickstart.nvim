-- 上部にbufferを表示するため
return {
  'echasnovski/mini.tabline',
  version = '*',
  lazy = false,
  event = 'VimEnter',
  config = function()
    require('mini.tabline').setup()
  end,
}
