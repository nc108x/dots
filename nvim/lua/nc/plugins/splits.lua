return {
  "mrjones2014/smart-splits.nvim",
  lazy = false,
  keys = {
    { "<c-h>", "<cmd>lua require('smart-splits').move_cursor_left()<cr>" },
    { "<c-j>", "<cmd>lua require('smart-splits').move_cursor_down()<cr>" },
    { "<c-k>", "<cmd>lua require('smart-splits').move_cursor_up()<cr>" },
    { "<c-l>", "<cmd>lua require('smart-splits').move_cursor_right()<cr>" },
  },
}
