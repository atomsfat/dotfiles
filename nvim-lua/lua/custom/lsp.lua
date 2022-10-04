local M = {}

-- Enable the following language servers
-- will be installed by mason-lspconfig
-- and configured on lsp  neovim/nvim-lspconfig
M.servers = { 
  'clangd', 
  'rust_analyzer', 
  'pyright', 
  'tsserver', 
  'sumneko_lua',
  'clojure_lsp',
  'jdtls',
}


return M
