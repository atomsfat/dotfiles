local map = vim.keymap.set

-- navigate within insert mode
map("i", "<C-h>", "<Left>", { desc = "Move left | general" })
map("i", "<C-l>", "<Right>", { desc = "Move right | general" })
map("i", "<C-j>", "<Down>", { desc = "Move down | general" })
map("i", "<C-k>", "<Up>", { desc = "Move up | general" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights | general" })

-- windows
map("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>\\", "<C-W>v", { desc = "Split Window Right", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })

-- buffer
map("n", "q", ":bd<CR>", { desc = "Close buffer" })
map("n", "<leader><tab>", ":b#<CR>", { desc = "Switch last buffer" })
