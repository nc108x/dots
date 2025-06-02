return {
  -- {
  --   "CopilotC-Nvim/CopilotChat.nvim",
  --   lazy = false,
  --   opts = function()
  --     return {
  --       context = "buffers",
  --       model = "claude-3.7-sonnet",
  --       mappings = {
  --         reset = {
  --           normal = "<C-x>",
  --           insert = "<C-x>",
  --         },
  --       },
  --     }
  --   end,
  -- },
  {
    "olimorris/codecompanion.nvim",
    keys = {
      { "<leader>aa", "<cmd>CodeCompanionChat Toggle<cr>" },
    },
    opts = {
      strategies = {
        chat = {
          adapter = "copilot",
        },
        inline = {
          adapter = "copilot",
        },
        cmd = {
          adapter = "copilot",
        },
      },
      adapters = {
        copilot = function()
          return require("codecompanion.adapters").extend("copilot", {
            schema = {
              model = {
                default = "claude-3.7-sonnet-thought",
              },
            },
          })
        end,
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
