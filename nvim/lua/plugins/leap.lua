return {
  "ggandor/leap.nvim",
  inti = function()
    require("leap").setup({
      -- Set the default color scheme
      colorscheme = "tokyonight",
    })
  end,
  dependencies = { "tpope/vim-repeat" },
}
