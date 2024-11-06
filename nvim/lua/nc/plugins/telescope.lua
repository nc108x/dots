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
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-file-browser.nvim",
  },
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
      "<leader>E",
      "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>",
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

    opts.extensions = {
      file_browser = {
        grouped = true,
        hidden = true,
        respect_gitignore = false,
      },
    }
  end,
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    telescope.load_extension("file_browser")
  end,
}
