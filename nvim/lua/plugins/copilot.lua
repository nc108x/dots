return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy = false,
    opts = function()
      return {
        context = "buffers",
        model = "claude-3.5-sonnet",
        mappings = {
          reset = {
            normal = "<C-x>",
            insert = "<C-x>",
          },
        },
      }
    end,
  },
}
