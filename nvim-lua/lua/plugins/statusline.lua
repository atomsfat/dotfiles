return {
  {
    "nvim-lualine/lualine.nvim",
    requires = { "catppuccin", "nvim-web-devicons" },
    opts = function(_, parentOps)
      parentOps.options = {
        theme = "catppuccin",
      }

      return parentOps
    end,
    config = function(_, opts)
      require("lualine").setup(opts)
    end,
  },
}
