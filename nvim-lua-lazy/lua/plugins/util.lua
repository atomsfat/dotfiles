return {
  { "nvim-lua/plenary.nvim", lazy = true },
  { "tpope/vim-sleuth", lazy = false }, -- Automatic indentation
  -- { "junegunn/vim-peekaboo", lazy = false }, -- Display register
  {
    "ggandor/leap.nvim",
    config = function(_, opts)
      require("leap").create_default_mappings()
    end,
  },
}
