local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

keymap("n", "<leader>nh", ":nohlsearch<cr>", opts)

keymap("n", "<C-h>", "<Cmd>call VSCodeNotify('workbench.action.navigateLeft')<cr>", opts)
keymap("n", "<C-j>", "<Cmd>call VSCodeNotify('workbench.action.navigateDown')<cr>", opts)
keymap("n", "<C-k>", "<Cmd>call VSCodeNotify('workbench.action.navigateUp')<cr>", opts)
keymap("n", "<C-l>", "<Cmd>call VSCodeNotify('workbench.action.navigateRight')<cr>", opts)

keymap("n", "L", "<Cmd>call VSCodeNotify('workbench.action.nextEditorInGroup')<cr>", opts)
keymap("n", "H", "<Cmd>call VSCodeNotify('workbench.action.previousEditorInGroup')<cr>", opts)
keymap("n", "<leader>bd", "<Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<cr>", opts)

keymap("n", "gD", "<Cmd>call VSCodeNotify('editor.action.revealDeclaration')<cr>", opts)
keymap("n", "gd", "<Cmd>call VSCodeNotify('editor.action.revealDefinition')<cr>", opts)
keymap("n", "K", "<Cmd>call VSCodeNotify('editor.action.showHover')<cr>", opts)
