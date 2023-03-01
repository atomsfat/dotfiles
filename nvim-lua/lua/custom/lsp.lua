local M = {}

-- Enable the following language servers
-- will be installed by mason-lspconfig
-- and configured on lsp  neovim/nvim-lspconfig
M.servers = { 
  'clangd', 
  'rust_analyzer', 
  'pyright', 
  'tsserver', 
  'lua_ls',
  'clojure_lsp',
  'jdtls',
}


return M
