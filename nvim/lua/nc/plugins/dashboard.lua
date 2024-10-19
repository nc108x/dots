return {
  "nvimdev/dashboard-nvim",
  opts = function(_, opts)
    opts.config = {
      header = {
        [[                                                 ]],
        [[                                                 ]],
        [[                                                 ]],
        [[                               __                ]],
        [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
        [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
        [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
        [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
        [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
        [[                                                 ]],
        [[                                                 ]],
      },
       -- stylua: ignore
        center = {
        { action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
        { action = 'lua require("persistence").load()',              desc = " Restore Session", icon = " ", key = "s" },
        { action = 'lua LazyVim.pick()()',                           desc = " Find File",       icon = " ", key = "f" },
        { action = 'lua LazyVim.pick("live_grep")()',                desc = " Grep",       icon = " ", key = "g" },
        { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
      },
      -- stylua: format
      footer = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        return {
          "Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms",
        }
      end,
    }
  end,
}
