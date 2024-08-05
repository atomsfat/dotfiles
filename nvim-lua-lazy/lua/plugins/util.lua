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
  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
    },
  },
}
