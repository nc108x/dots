return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    keymaps = {
      ["q"] = "actions.close",
      ["y"] = "actions.copy_entry_path",
    },
    view_options = {
      show_hidden = true,
    },
  },
  keys = {
    { "<leader>oi", "<cmd>Oil --float .<cr>", desc = "Oil" },
  },
}
