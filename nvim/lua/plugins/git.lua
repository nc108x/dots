return {
  {
    "tpope/vim-fugitive",
  },
  {
    "sindrets/diffview.nvim",
    keys = {
      {
        "<leader>gd",
        -- see https://github.com/sindrets/diffview.nvim/issues/450
        function()
          local lib = require("diffview.lib")
          local view = lib.get_current_view()
          if view then
            vim.cmd.DiffviewClose()
          else
            vim.cmd.DiffviewOpen()
          end
        end,
        desc = "Open diffview",
      },
    },
    opts = {
      view = {
        merge_tool = {
          layout = "diff3_mixed",
          disable_diagnostics = true,
          winbar_info = true,
        },
      },
    },
  },
}
