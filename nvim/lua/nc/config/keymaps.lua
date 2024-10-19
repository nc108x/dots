local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap("i", "jj", "<ESC>", opts)
keymap("i", "jk", "<ESC>", opts)
