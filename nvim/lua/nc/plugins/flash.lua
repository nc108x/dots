return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.label = {
      uppercase = false,
    }
    opts.modes = {
      search = {
        enabled = true,
      },
    }
  end,
}
