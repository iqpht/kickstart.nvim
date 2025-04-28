-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-->>>
-- jjでインサートモードを抜ける
vim.keymap.set('i', 'jj', '<ESC>')

-- 不可視文字
vim.opt.listchars = { eol = '↲', tab = '>-', trail = '_' }
vim.opt.list = true
-- 不可視文字トグル
vim.keymap.set('n', '<Leader>mv', ':setlocal list!<CR>', { desc = '[v]isible' })

-- ビジュアルモードでのペースト時に、ヤンクしない
vim.keymap.set('v', 'p', '"_dP')
-- 1文字だけ削除したときに、ヤンクしない
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'X', '"_X')
vim.keymap.set('n', 's', '"_s')

-- バックアップファイル出力無効
vim.opt.backup = false
vim.opt.writebackup = false
-- swpファイル出力
vim.opt.swapfile = true
-- undoファイル出力
vim.opt.undofile = true
vim.opt.undodir = vim.fs.normalize '~/off/tmp'

-- カレントディレクトリの自動移動
vim.opt.autochdir = true

-- true color(for alacrity)
vim.api.nvim_set_option_value('termguicolors', true, {})

-- 読み込み時の文字コード(左から順に試す)
vim.opt.fileencodings = 'utf-8,iso-2022-jp,cp932,utf-16le'

-- バッファ移動
vim.keymap.set('n', '<Leader>,', ':bprevious<CR>')
vim.keymap.set('n', '<Leader>.', ':bnext<CR>')

-- フォント
vim.opt.guifont = 'Bizin Gothic Discord NF:h11'
-- vim.opt.guifont = 'HackGen Console NF:h11'

-- クリップボード貼り付け
vim.keymap.set('n', '<Leader>p', '"+p', { desc = '[p]aste' })
vim.keymap.set('v', '<Leader>p', '"+p', { desc = '[p]aste' })

-- notes
vim.keymap.set('n', '<Leader>mn', '<cmd>cd C:\\OneDrive\\notes|Telescope find_files<cr>', { desc = '[n]otes' })

-- daily note
vim.api.nvim_create_user_command('DailyNote', function()
  local basePath = '~/Onedrive/notes/daily/'
  local todayDailyNotePath = basePath .. os.date '%Y-%m-%d' .. '.md'
  vim.cmd('e ' .. todayDailyNotePath)
end, {})
vim.keymap.set('n', '<leader>md', '<cmd>DailyNote<cr>', { desc = '[d]aily note' })
--<<<

return {}
