return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.close_if_last_window = true
    opts.event_handlers = {
      {
        event = "file_open_requested",
        handler = function()
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    }
  end,
}
