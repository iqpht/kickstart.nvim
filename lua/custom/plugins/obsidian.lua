return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = true,
  ft = 'markdown',
  keys = {
    { '<Leader>md', '<cmd>ObsidianDailies<cr>', desc = 'obsidian[d]aily' },
    { '<Leader>me', '<cmd>ObsidianExtractNote<cr>', desc = 'obsidian[e]xtract' },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    ui = { enable = false },
    workspaces = {
      {
        name = 'default',
        path = '~/OneDrive/notes',
      },
    },
    daily_notes = {
      folder = 'daily',
      template = nil,
    },
    note_id_func = function(title)
      if title ~= nil then
        return title:gsub('[\\/:%*%?"<>|]', '') -- ファイル名に使えない文字を除去
      else
        return tostring(os.time()) -- タイトルがない場合はタイムスタンプを使う
      end
    end,
  },
}
