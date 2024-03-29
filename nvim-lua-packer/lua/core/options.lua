local api = vim.api
local g = vim.g
local opt = vim.opt

-- Remap leader and local leader to <Space>
api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
api.nvim_command "setlocal sloc=statusline"
g.mapleader = " "
g.maplocalleader = " "

opt.termguicolors = true -- Enable colors in terminal
opt.hlsearch = true --Set highlight on search
opt.number = true --Make line numbers default
opt.relativenumber = false --Use relative number 
opt.mouse = "a" --Enable mouse mode
opt.breakindent = true --Enable break indent
opt.undofile = true --Save undo history
opt.ignorecase = true --Case insensitive searching unless /C or capital in search
opt.smartcase = true -- Smart case
opt.updatetime = 250 --Decrease update time
opt.signcolumn = "yes" -- Always show sign column
opt.clipboard = "unnamedplus" -- Access system clipboard
opt.writebackup = false
opt.fileencoding = "utf-8"
opt.swapfile = false

-- Treesitter based foldinc
opt.foldlevel = 20
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"


-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

-- Autosave
vim.cmd [[
  augroup AutoSave 
    autocmd!
    au FocusLost * silent! wa
  augroup end
]]

-- Set colorscheme
-- vim.cmd [[
--   try
--     colorscheme tokyonight
--   catch /^Vim\%((\a\+)\)\=:E185/
--     colorscheme default
--     set background=dark
--   endtry
-- ]]
