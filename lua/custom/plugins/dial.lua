-- インクリメント拡張
return {
  'monaqa/dial.nvim',
  lazy = true,
  keys = {
    { "<C-a>", mode = 'n' },
    { "<C-x>", mode = 'n' },
  },
  config = function()
    local augend = require("dial.augend")
    require("dial.config").augends:register_group({
      default = {
        augend.integer.alias.decimal,
        augend.date.alias["%Y/%m/%d"],
        augend.date.alias["%Y年%-m月%-d日"],
        augend.constant.alias.ja_weekday,
        augend.constant.alias.bool,
      },
    })
    vim.api.nvim_set_keymap("n", "<C-a>", require("dial.map").inc_normal(), { noremap = true })
    vim.api.nvim_set_keymap("n", "<C-x>", require("dial.map").dec_normal(), { noremap = true })
  end
}
