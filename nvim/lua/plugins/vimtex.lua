return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    vim.g.vimtex_mappings_disable = { ["n"] = { "K" } }
    vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
    vim.g.vimtex_view_method = "sioyek"
    vim.g.vimtex_syntax_conceal_disable = 1
  end,
  keys = {
    { "<localLeader>l", "", desc = "+vimtex" },
  },
}
