-- 整列
return {
  'junegunn/vim-easy-align',
  lazy = true,
  keys = {
    { 'ga', '<Plug>(EasyAlign)', mode = 'x', desc = 'easy align' },
    { 'ga', '<Plug>(EasyAlign)', mode = 'n', desc = 'easy align' },
  },
}
