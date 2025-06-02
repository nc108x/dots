local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
local unmap = vim.keymap.del

keymap("i", "jj", "<ESC>", opts)
keymap("i", "jk", "<ESC>", opts)

unmap({ "n", "i", "v" }, "<A-j>")
unmap({ "n", "i", "v" }, "<A-k>")
