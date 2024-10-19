function vim.getVisualSelection()
  vim.cmd('noau normal! "vy"')
  local text = vim.fn.getreg("v")
  vim.fn.setreg("v", {})

  text = string.gsub(text, "\n", "")
  if #text > 0 then
    return text
  else
    return ""
  end
end

return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<C-f>", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
      {
        "<C-f>",
        mode = { "v" },
        function()
          local text = vim.getVisualSelection()
          require("telescope.builtin").live_grep({ default_text = text })
        end,
        desc = "Grep Selection",
      },
      {
        "<leader>e",
        "<cmd>Telescope file_browser<cr>",
        desc = "File Browser",
      },
    },
    opts = function(_, opts)
      local actions = require("telescope.actions")

      local layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
          results_width = 0.8,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.80,
        preview_cutoff = 120,
      }

      opts.defaults = {
        path_display = {
          "truncate",
        },
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = layout_config,
        mappings = {
          i = {
            ["<Down>"] = actions.move_selection_next,
            ["<Up>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-u>"] = false,
          },
        },
      }
    end,
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          file_browser = {
            grouped = true,
          },
        },
      })
      require("telescope").load_extension("file_browser")
    end,
  },
}
