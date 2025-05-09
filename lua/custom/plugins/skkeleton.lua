-- skk
-- scoop install deno (denoが必要)
return {
  'vim-skk/skkeleton',
  lazy = false,
  keys = {
    { '<C-j>', '<Plug>(skkeleton-enable)', mode = { 'i', 'c' } },
    { '<C-n>', '<cmd>call pum#map#insert_relative(+1)<CR>', mode = { 'i', 'c' } },
    { '<C-p>', '<cmd>call pum#map#insert_relative(-1)<CR>', mode = { 'i', 'c' } },
  },
  dependencies = {
    'vim-denops/denops.vim',
    'Shougo/ddc.vim',
    'Shougo/ddc.vim',
    'Shougo/pum.vim',
    'Shougo/ddc-ui-pum',
  },
  config = function()
    vim.fn['skkeleton#config'] {
      globalDictionaries = { '~/AppData/Local/nvim/lua/custom/SKK-JISYO.L' },
      sources = { 'skk_dictionary', 'google_japanese_input' },
      eggLikeNewline = true,
    }

    vim.cmd [[call ddc#custom#patch_global('ui', 'pum')]]
    vim.cmd [[call ddc#custom#patch_global('sources', ['skkeleton'])]]
    vim.cmd [[call ddc#custom#patch_global('sourceOptions', {
        \ '_': {
        \ 'matchers': ['matcher_head'],
        \ 'sorters': ['sorter_rank'],
        \ },
        \ 'skkeleton' : {
        \ 'mark': 'skkeleton',
        \ 'matchers': [],
        \ 'sorters': [],
        \ 'converters': [],
        \ 'isVolatile': v:true,
        \ 'minAutoCompleteLength': 1
        \ }})]]
    vim.cmd [[call ddc#enable()]]
  end,
}
