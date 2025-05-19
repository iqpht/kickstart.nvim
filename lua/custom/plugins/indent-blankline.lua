-- インデントを分かりやすく
return {
  'lukas-reineke/indent-blankline.nvim',
  main = "ibl",
  lazy = true,
  event = 'VimEnter',
  config = function()
    require("ibl").setup()
  end
}
