local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the init.lua file
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost init.lua source <afile> | PackerSync
augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here

  use { "wbthomason/packer.nvim"} -- Have packer manage itself
  use { "nvim-lua/plenary.nvim"} -- Useful lua functions used by lots of plugins

  -- Highlight, edit, and navigate code
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require "plugins.configs.treesitter"
    end,
  }

  -- Additional textobjects for treesitter
  use { 'nvim-treesitter/nvim-treesitter-textobjects',
    after = { 'nvim-treesitter' }
  }

  -- Startup screen
  -- use {
  --     "mhinz/vim-startify"
  -- }
  -- use {
  --   "goolord/alpha-nvim",
  --   config = function()
  --     require("plugins.configs.alpha").setup()
  --   end,
  --   wants = "nvim-web-devicons",
  -- }

  use {
    "kyazdani42/nvim-web-devicons",
    module = "nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup { default = true }
    end,
  }

  -- Colorschemas
  use 'folke/tokyonight.nvim'
  use "rebelot/kanagawa.nvim"
  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha
      require("catppuccin").setup(
        {
          integrations = {
            treesitter = true,
            telescope = true,
            nvimtree = true,
            cmp = true,
            gitsigns = true,
          },
        }
      )
      vim.api.nvim_command "colorscheme catppuccin"
    end
  }
  -- Undotree 
  use {
    "mbbill/undotree",
  }


  -- org mode
  use {
    "nvim-neorg/neorg",
    run = ":Neorg sync-parsers",
    config = function()
        require('neorg').setup {
          load = {
                  ["core.defaults"] = {},
                  ["core.integrations.telescope"] = {},
                  ["core.concealer"] = {},
                  ["core.completion"] = {
                    config = { engine = "nvim-cmp" }

                  },
                  ["core.dirman"] = {
                       config = {
                          workspaces = {
                              work = "~/neorg_notes/work",
                              home = "~/neorg_notes/home",
                          }
                      }
                  },
                  ["core.export"] = {},
                  ["core.export.markdown"] = {
                    config = {
                        extensions = "all",
                    },
                },
              }
        }
    end,
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-neorg/neorg-telescope"
    },
  }
  use {'nvim-orgmode/orgmode', config = function()
    require('orgmode').setup_ts_grammar()
    require('orgmode').setup{
      org_agenda_files = {'~/org_notes/*', },
      org_default_notes_file = '~/org_notes/refile.org',
      org_capture_templates = {
        r = {
        description = "Repo",
        template = "* [[%x][%(return string.match('%x', '([^/]+)$'))]]%?",
        target = "~/org_notes/repos.org",
        },
        e =  'Event',
          er = {
            description = 'recurring',
            template = '** %?\n %T',
            target = '~/org_notes/calendar.org',
            headline = 'recurring'
          },
          eo = {
            description = 'one-time',
            template = '** %?\n %T',
            target = '~/org_notes/calendar.org',
            headline = 'one-time'
          }
      }

    }
    end
  }

  -- File explorer
  use {
    "kyazdani42/nvim-tree.lua",
    ft = "alpha",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    requires = { "kyazdani42/nvim-web-devicons", "catppuccin" },
    config = function()
      require "plugins.configs.nvimtree"
    end,
    setup = function()
      require("core.utils").load_mappings "nvimtree"
    end,
  }

  -- Status line and winbar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { "catppuccin", "nvim-web-devicons", },
    config = function()
      require "plugins.configs.lualine"
    end,
  }

  -- use {
  --   "akinsho/nvim-bufferline.lua",
  --   event = "BufReadPre",
  --   wants = "nvim-web-devicons",
  --   config = function()
  --     require "plugins.configs.bufferline"
  --   end,
  -- }


  use {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    config = function()
      require "plugins.configs.indentblankline"
    end,
  }

  -- Clojure 
  --
  use {
    "Olical/conjure",
    tag = ""
  }

  use {
    "nvim-telescope/telescope.nvim",
    -- cmd = "Telescope",
    config = function()
      require "plugins.configs.telescope"
    end,
    setup = function()
      require("core.utils").load_mappings "telescope"
    end,
  }

  -- Manage external editor tooling i.e LSP servers
  use {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  }

  -- Automatically install language servers to st:dpath
  use {
    'williamboman/mason-lspconfig.nvim',
    requires = {
      'williamboman/mason.nvim',
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local servers = require("custom.lsp").servers
      require('mason-lspconfig').setup {
        ensure_installed = servers,
      }
    end,
  }

  -- Collection of configurations for built-in LSP client
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require "plugins.configs.lspconfig"
      local on_attach = require("plugins.configs.lspconfig").on_attach
      local capabilities = require("plugins.configs.lspconfig").capabilities
      local servers = require("custom.lsp").servers

      local lspconfig = require "lspconfig"
      -- print(vim.inspect(servers))

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
          on_attach = on_attach,
          capabilities = capabilities,
        }
      end
    end,
  }


  -- Autocompletion
  use { 'hrsh7th/nvim-cmp',
    requires = { 'hrsh7th/cmp-nvim-lsp' },
    config = function()
      require "plugins.configs.cmp"
    end,
  }

  use { "hrsh7th/cmp-path", after = "nvim-cmp" }

  -- Snippet Engine and Snippet Expansion
  use { 'L3MON4D3/LuaSnip',
    requires = { 'saadparwaiz1/cmp_luasnip' },
    after = "nvim-cmp",
    config = function()
      require("plugins.configs.others").luasnip()
    end,
  }

  -- Git integrations
  use {
    "tpope/vim-fugitive",
    setup = function()
      require("core.utils").load_mappings "fugitive"
    end,
  }

  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plugins.configs.others").gitsigns()
    end,
  }


  -- misc plugins
  use {
    "windwp/nvim-autopairs",
    -- after = "nvim-cmp",
    config = function()
      require("plugins.configs.others").autopairs()
    end,
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    'ggandor/leap.nvim',
    config = function()
      require('leap').add_default_mappings() 
    end
  }

  -- Display registers
  use { 'junegunn/vim-peekaboo'}

  -- Detect tabstop and shiftwidth automatically
  use 'tpope/vim-sleuth'

-- Automatically set up your configuration after cloning packer.nvim
-- Put this at the end after all plugins
if PACKER_BOOTSTRAP then
  require("packer").sync()
end
end)
