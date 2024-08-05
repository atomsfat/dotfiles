return {
  {
    "nvim-lualine/lualine.nvim",
    requires = { "catppuccin", "nvim-web-devicons" },
    opts = function(_, parentOps)
      parentOps.options = {
        theme = "catppuccin",
      }
      parentOps.sections = {
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "%S" },
      }

      return parentOps
    end,
    config = function(_, opts)
      require("lualine").setup(opts)
    end,
  },
}
