return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = {
      lua = { "stylua" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      python = { "isort", "black" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      tex = { "latexindent" },
    }

    opts.formatters["clang-format"] = {
      prepend_args = { "--style", "{ BasedOnStyle: Google, IndentWidth: 4 }" },
    }
  end,
}
