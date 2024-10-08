-- n, v, i, t = mode names

local M = {}

M.general = {
  i = {
    -- go to  beginning and end
    ["<C-b>"] = { "<ESC>^i", "beginning of line" },
    ["<C-e>"] = { "<End>", "end of line" },

    -- navigate within insert mode
    ["<C-h>"] = { "<Left>", "move left" },
    ["<C-l>"] = { "<Right>", "move right" },
    ["<C-j>"] = { "<Down>", "move down" },
    ["<C-k>"] = { "<Up>", "move up" },
  },

  n = {
    ["<ESC>"] = { "<cmd> noh <CR>", "no highlight" },

    -- switch between windows
    ["<C-h>"] = { "<C-w>h", "window left" },
    ["<C-l>"] = { "<C-w>l", "window right" },
    ["<C-j>"] = { "<C-w>j", "window down" },
    ["<C-k>"] = { "<C-w>k", "window up" },

    -- resize windows
    ["<A-h>"] = { "<C-w><", "res left" },
    ["<A-l>"] = { "<C-w>>", "res right" },
    ["<A-j>"] = { ":res -1<CR>", "res down" },
    ["<A-k>"] = { ":res +3<CR>", "res up" },

    -- save
    ["<C-s>"] = { "<cmd> w <CR>", "save file" },

    -- Copy all
    ["<C-c>"] = { "<cmd> %y+ <CR>", "copy whole file" },

    -- line numbers
    -- ["<leader>n"] = { "<cmd> set nu! <CR>", "toggle line number" },
    -- ["<leader>rn"] = { "<cmd> set rnu! <CR>", "toggle relative number" },

    -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
    -- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
    -- empty mode is same as using <cmd> :map
    -- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
    ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
    ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },

    -- new buffer
    -- ["<leader>b"] = { "<cmd> enew <CR>", "new buffer" },

    -- split
    ["<leader>-"] = { ":split<CR>", "horizontal split" },
    ["<leader>\\"] = { ":vsplit<CR>", "vertical split" },

    -- close buffer
    ["q"] = { ":bd<CR>", "close buffer" },
    -- redo
    ["U"] = { "<C-R>", "redo changes" },
    -- buffer switching
    ["<leader>."] = { ":bnext<CR>", "next buffer" },
    ["<leader>,"] = { ":bprevious<CR>", "previous buffer" },
    ["<leader><tab>"] = { ":b#<CR>", "switch last buffer" },
    --  repmap ; to ;
    -- [";"] = { ":", "remap ; :" },
  },

  v = {
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
    ["J"] = { ":m '>+1<CR>gv=gv'" },
    ["K"] = { ":m '<-2<CR>gv=gv'" },
  },

  x = {
    ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
    ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
    -- Don't copy the replaced text after pasting in visual mode
    -- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text#Alternative_mapping_for_paste
    ["p"] = { 'p:let @+=@0<CR>:let @"=@0<CR>', opts = { silent = true } },
  },
}

M.lspconfig = {
  plugin = true,

  -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions

  n = {
    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "Goto declaration",
    },

    ["gd"] = {
      function()
        require("telescope.builtin").lsp_definitions { reuse_win = true }
      end,
      "Goto definition",
    },

    ["H"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "lsp hover",
    },

    ["gi"] = {
      function()
        require("telescope.builtin").lsp_implementations { reuse_win = true }
        -- vim.lsp.buf.implementation()
      end,
      "Goto implementation",
    },

    ["gk"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "lsp signature_help",
    },

    ["gy"] = {
      function()
        require("telescope.builtin").lsp_type_definitions { reuse_win = true }
        -- vim.lsp.buf.type_definition()
      end,
      "Goto T[y]pe definition",
    },

    ["<leader>rn"] = {
      function()
        vim.lsp.buf.rename()
      end,
      "lsp rename",
    },

    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "lsp code_action",
    },

    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "lsp references",
    },

    ["<leader>sw"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "floating diagnostic",
    },

    ["g["] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "goto prev",
    },

    ["g]"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "goto_next",
    },

    ["<leader>q"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "diagnostic setloclist",
    },

    ["<leader>="] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "lsp formatting",
    },

    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "add workspace folder",
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "remove workspace folder",
    },

    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "list workspace folders",
    },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<leader>n"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },

    -- focus
    ["<leader>e"] = { "<cmd> NvimTreeFindFile <CR>", "locate file nvimtree" },
  },
}

M.telescope = {
  plugin = true,

  n = {
    -- find
    -- Telescope actions
    ["<leader>a"] = { "<cmd> Telescope commands <CR>", "list of available commands and runs them" },
    ["<leader>p"] = { "<cmd> Telescope registers <CR>", "list vim register" },
    ["<leader>m"] = { "<cmd> Telescope marks <CR>", "find marks" },

    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "find files" },
    ["<leader>fo"] = { "<cmd> Telescope oldfiles<CR>", "find old files" },
    ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "find all" },
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
    ["<leader>b"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
    ["<leader>h"] = { "<cmd> Telescope help_tags <CR>", "help page" },
    ["<leader>t"] = { "<cmd> Telescope keymaps <CR>", "show keys" },

    -- git
    ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
    -- ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "git status" },
  },
}

M.fugitive = {
  plugin = true,

  n = {
    -- Git
    ["<leader>gs"] = { "<cmd> Git <CR>", "Git status" },
    ["<leader>gw"] = { "<cmd> Gwritte <CR>", "Git add" },
    ["<leader>gd"] = { "<cmd> Gdiffsplit <CR>", "Git diff" },
    ["<leader>gc"] = { "<cmd> Git commit <CR>", "Git commit" },
  },
}

return M
