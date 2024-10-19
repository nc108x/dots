return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    keymaps = {
      ["q"] = "actions.close",
      ["y"] = "actions.copy_entry_path",
    },
  },
  keys = {
    { "<leader>oi", "<cmd>Oil<cr>", desc = "Oil" },
  },
}
