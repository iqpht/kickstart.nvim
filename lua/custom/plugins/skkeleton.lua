-- skk
-- scoop install deno (denoが必要)
return {
  'vim-skk/skkeleton',
  lazy = true,
  keys = {
    { '<C-j>', '<Plug>(skkeleton-enable)', mode = { 'i', 'c' } },
  },
  dependencies = {
    'vim-denops/denops.vim',
  },
  config = function()
    vim.fn['skkeleton#config'] {
      globalDictionaries = { '~/AppData/Local/nvim/lua/custom/SKK-JISYO.L' },
      sources = { 'skk_dictionary', 'google_japanese_input' },
      eggLikeNewline = true,
    }
  end,
}
