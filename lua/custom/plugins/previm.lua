-- マークダウンをブラウザでプレビュー
return {
  'previm/previm',
  lazy = true,
  keys = {
    { '<Leader>mp', '<cmd>PrevimOpen<cr>', mode = 'n', desc = '[p]revim' },
  },
  ft = {
    'markdown',
  },
  dependencies = {
    'tyru/open-browser.vim',
  },
  config = function()
    vim.g['previm_show_header'] = 0
  end,
}
