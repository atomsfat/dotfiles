return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    local ret = {
      -- options for vim.diagnostic.config()
      ---@type vim.diagnostic.Opts
      -- options for vim.diagnostic.config()
      ---@type vim.diagnostic.Opts
      diagnostics = {
        underline = true,
        update_in_insert = false,
        virtual_text = {
          spacing = 4,
          source = "if_many",
          prefix = "●",
          -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
          -- prefix = "icons",
        },
        severity_sort = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = signs.Error,
            [vim.diagnostic.severity.WARN] = signs.Warn,
            [vim.diagnostic.severity.HINT] = signs.Hint,
            [vim.diagnostic.severity.INFO] = signs.Info,
          },
        },
      },
    }

    vim.lsp.config("*", {
      capabilities = {
        workspace = {
          fileOperations = {
            didRename = true,
            willRename = true,
          },
        },
      },
      -- stylua: ignore
      keys = {
        -- { "<leader>cl", function() Snacks.picker.lsp_config() end, desc = "Lsp Info" },
        { "gd", vim.lsp.buf.definition, desc = "Goto Definition", has = "definition" },
        { "gr", vim.lsp.buf.references, desc = "References", nowait = true },
        { "gI", vim.lsp.buf.implementation, desc = "Goto Implementation" },
        { "gy", vim.lsp.buf.type_definition, desc = "Goto T[y]pe Definition" },
        { "gD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
        { "K", function() return vim.lsp.buf.hover() end, desc = "Hover" },
        { "gK", function() return vim.lsp.buf.signature_help() end, desc = "Signature Help", has = "signatureHelp" },
        { "<c-k>", function() return vim.lsp.buf.signature_help() end, mode = "i", desc = "Signature Help", has = "signatureHelp" },
        { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "x" }, has = "codeAction" },
        { "<leader>cc", vim.lsp.codelens.run, desc = "Run Codelens", mode = { "n", "x" }, has = "codeLens" },
        { "<leader>cC", vim.lsp.codelens.refresh, desc = "Refresh & Display Codelens", mode = { "n" }, has = "codeLens" },
        -- { "<leader>cR", function() Snacks.rename.rename_file() end, desc = "Rename File", mode ={"n"}, has = { "workspace/didRenameFiles", "workspace/willRenameFiles" } },
        { "<leader>cr", vim.lsp.buf.rename, desc = "Rename", has = "rename" },
        -- { "<leader>cA", LazyVim.lsp.action.source, desc = "Source Action", has = "codeAction" },
        -- { "]]", function() Snacks.words.jump(vim.v.count1) end, has = "documentHighlight",
          -- desc = "Next Reference", enabled = function() return Snacks.words.is_enabled() end },
        -- { "[[", function() Snacks.words.jump(-vim.v.count1) end, has = "documentHighlight",
          -- desc = "Prev Reference", enabled = function() return Snacks.words.is_enabled() end },
        -- { "<a-n>", function() Snacks.words.jump(vim.v.count1, true) end, has = "documentHighlight",
          -- desc = "Next Reference", enabled = function() return Snacks.words.is_enabled() end },
        -- { "<a-p>", function() Snacks.words.jump(-vim.v.count1, true) end, has = "documentHighlight",
          -- desc = "Prev Reference", enabled = function() return Snacks.words.is_enabled() end },
      },
    })

    -- configure jdtls
    -- vim.lsp.config["jdtls"] = {
    --   capabilities = capabilities,
    -- }

    vim.diagnostic.config(vim.deepcopy(ret.diagnostics))

    return ret
  end,
}
