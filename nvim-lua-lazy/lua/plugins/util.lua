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
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
}
