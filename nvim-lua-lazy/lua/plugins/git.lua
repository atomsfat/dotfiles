return {
  {
    "tpope/vim-fugitive",
    requires = {},
    -- cmd = "Git",
    init = function()
      require "core.load_mappings" "fugitive"
    end,
  },
  {
    "tpope/vim-rhubarb", -- Allows to open links github
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = function(_, parentOps)
      return parentOps
    end,
    config = function(_, opts)
      require("gitsigns").setup(opts)
    end,
  },
}
