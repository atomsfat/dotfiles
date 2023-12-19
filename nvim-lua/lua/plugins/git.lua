return {
  {
    "tpope/vim-fugitive",
    requires = {},
    cmd = "Git",
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = function(_, parentOps)
      parentOps.signs = {
        add = { hl = "DiffAdd", text = "│", numhl = "GitSignsAddNr" },
        change = { hl = "DiffChange", text = "│", numhl = "GitSignsChangeNr" },
        delete = { hl = "DiffDelete", text = "", numhl = "GitSignsDeleteNr" },
        topdelete = { hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr" },
      }
      return parentOps
    end,
    config = function(_, opts)
      require("gitsigns").setup(opts)
    end,
  },
}
