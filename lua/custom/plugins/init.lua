-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-->>>
-- フォント
vim.opt.guifont = 'Bizin Gothic Discord NF:h11'
-- jjでインサートモードを抜ける
vim.keymap.set('i', 'jj', '<ESC>')
-- クリップボード貼り付け
vim.keymap.set('n', '<Leader>p', '"+p', { desc = '[p]aste' })
vim.keymap.set('v', '<Leader>p', '"+p', { desc = '[p]aste' })
--<<<

return {}
