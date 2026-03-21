return {

  {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.0",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "Telescope",
    keys = {
      { "<leader>a", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree Toggle" },
      { "<leader>a", "<cmd> Telescope commands <CR>", desc = "list of available commands and runs them" },
      { "<leader>p", "<cmd> Telescope registers <CR>", desc = "list vim register" },
      { "<leader>m", "<cmd> Telescope marks <CR>", desc = "find marks" },
      { "<leader>ff", "<cmd> Telescope find_files <CR>", desc = "find files" },
      { "<leader>fo", "<cmd> Telescope oldfiles<CR>", desc = "find old files" },
      { "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", desc = "find all" },
      { "<leader>fg", "<cmd> Telescope live_grep <CR>", desc = "live grep" },
      { "<leader>b", "<cmd> Telescope buffers <CR>", desc = "find buffers" },
      { "<leader>h", "<cmd> Telescope help_tags <CR>", desc = "help page" },
      { "<leader>t", "<cmd> Telescope keymaps <CR>", desc = "show keys" },
    },
    opts = function()
      local options = {
        defaults = {
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
          },
          prompt_prefix = "   ",
          selection_caret = "  ",
          entry_prefix = "  ",
          initial_mode = "insert",
          selection_strategy = "reset",
          sorting_strategy = "ascending",
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
              results_width = 0.8,
            },
            vertical = {
              mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
          },
          file_sorter = require("telescope.sorters").get_fuzzy_file,
          file_ignore_patterns = { "node_modules" },
          generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
          path_display = { "truncate" },
          winblend = 0,
          border = {},
          borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
          color_devicons = true,
          set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
          file_previewer = require("telescope.previewers").vim_buffer_cat.new,
          grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
          qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
          -- Developer configurations: Not meant for general override
          buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
          mappings = {
            n = { ["q"] = require("telescope.actions").close },
          },
        },
        pickers = {
          buffers = {
            ignore_current_buffer = true,
            sort_lastused = true,
          },
          colorscheme = {
            enable_preview = true,
          },
        },
        extensions = {},
      }
      return options
    end,
  },
}
