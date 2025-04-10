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
vim.keymap.set('n', '<Leader>1', ':setlocal list!<CR>')

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

-- フォント
vim.opt.guifont = 'Bizin Gothic Discord NF:h11'

-- クリップボード貼り付け
vim.keymap.set('n', '<Leader>p', '"+p', { desc = '[p]aste' })
vim.keymap.set('v', '<Leader>p', '"+p', { desc = '[p]aste' })

-- notes
vim.keymap.set('n', '<Leader>mn', '<cmd>cd C:\\OneDrive\\notes|Telescope find_files<cr>', { desc = '[n]otes' })
--<<<

return {}
