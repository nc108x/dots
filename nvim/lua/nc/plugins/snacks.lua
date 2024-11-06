return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.dashboard = {
      preset = {
        header = [[
                               __                
  ___     ___    ___   __  __ /\_\    ___ ___    
 / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  
/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ 
\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\
 \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/


Code bad
]],
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
            action = ':lua Snacks.dashboard.pick("live_grep")',
            desc = " Grep",
            icon = " ",
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
  end,
}
