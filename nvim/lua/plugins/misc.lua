return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    config = {
      style = "night",
      on_colors = function(colors)
        colors.border = colors.orange
      end,
    },
  },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 3000,
    },
  },
}
