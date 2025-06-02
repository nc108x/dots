return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.dashboard = {
      preset = {
      -- stylua: ignore start
        header = [[
                               __                
  ___     ___    ___   __  __ /\_\    ___ ___    
 / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  
/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ 
\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\
 \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/


Code bad
]],
        -- stylua: ignore end
        keys = {
          {
            action = ":ene | startinsert",
            desc = " New File",
            icon = " ",
            key = "n",
          },
          { section = "session", desc = " Restore Session", icon = " ", key = "s" },
          {
            action = ':lua Snacks.dashboard.pick("files")',
            desc = " Find File",
            icon = " ",
            key = "f",
          },
          {
            action = ":lua Snacks.lazygit.open()",
            desc = " Lazygit",
            icon = " ",
            key = "g",
          },
          {
            action = function()
              vim.api.nvim_input("<cmd>qa<cr>")
            end,
            desc = " Quit",
            icon = " ",
            key = "q",
          },
        },
      },
    }
    opts.zen = {
      on_open = function()
        require("incline").disable()
      end,
      on_close = function()
        require("incline").enable()
      end,
    }
    opts.picker = {
      win = {
        input = {
          keys = {
            ["<c-h>"] = { "toggle_hidden", mode = { "i", "n" } },
            ["<c-i>"] = { "toggle_ignored", mode = { "i", "n" } },
            ["<c-m>"] = { "toggle_maximize", mode = { "i", "n" } },
            ["<c-p>"] = { "toggle_preview", mode = { "i", "n" } },
          },
        },
        list = {
          keys = {
            ["<c-h>"] = { "toggle_hidden", mode = { "i", "n" } },
            ["<c-i>"] = { "toggle_ignored", mode = { "i", "n" } },
            ["<c-m>"] = { "toggle_maximize", mode = { "i", "n" } },
            ["<c-p>"] = { "toggle_preview", mode = { "i", "n" } },
          },
        },
      },
    }
  end,
}
