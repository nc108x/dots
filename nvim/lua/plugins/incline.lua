return {
  "b0o/incline.nvim",
  priority = 1200,
  opts = {
    window = {
      padding = 0,
      margin = { horizontal = 0 },
    },
    render = function(props)
      local helpers = require("incline.helpers")
      local devicons = require("nvim-web-devicons")
      local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
      if filename == "" then
        filename = "[No Name]"
      end
      local ft_icon, ft_color = devicons.get_icon_color(filename)
      local modified = vim.bo[props.buf].modified
      local focused = props.focused
      return {
        ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = helpers.contrast_color(ft_color) } or "",
        " ",
        { modified and "*" or "" },
        { filename, gui = modified and "bold,italic" or "bold" },
        " ",
        guibg = "#16161e",
        guifg = focused and "#c5c8c6" or "#565f89",
      }
    end,
  },
}
