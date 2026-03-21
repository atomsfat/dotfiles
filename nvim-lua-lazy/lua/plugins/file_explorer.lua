local ui = vim.api.nvim_list_uis()[1]
local width = 60
local height = 30

local view = {
  number = true,
  relativenumber = false,
  float = {
    enable = true,
    open_win_config = {
      relative = "editor",
      border = "rounded",
      width = width,
      height = height,
      col = (ui.width / 2) - (width / 2),
      row = (ui.height / 2) - (height / 2),
    },
  },
}

return {

  {
    "kyazdani42/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    dependencies = { "kyazdani42/nvim-web-devicons" },
    opts = function(_, parentOpts)
      parentOpts.view = view
      return parentOpts
    end,
    keys = {
      { "<leader>n", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree Toggle" },
      { "<leader>e", "<cmd>NvimTreeFocus<cr>", desc = "NvimTree locate file" },
    },
  },
}
