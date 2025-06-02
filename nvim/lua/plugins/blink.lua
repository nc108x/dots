return {
  "saghen/blink.cmp",
  opts = {
    enabled = function()
      return not vim.tbl_contains({ "copilot-chat", "oil" }, vim.bo.filetype)
        and vim.bo.buftype ~= "prompt"
        and vim.b.completion ~= false
    end,
    completion = {
      list = {
        selection = {
          preselect = false,
          auto_insert = false,
        },
      },
      ghost_text = {
        enabled = false,
      },
    },
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
  },
}
