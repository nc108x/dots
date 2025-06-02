return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      tex = { "latexindent" },
      c = { "clang-format" },
      cpp = { "clang-format" },
    },
    formatters = {
      ["clang-format"] = {
        prepend_args = { "--style", "{ BasedOnStyle: Google, IndentWidth: 4 }" },
      },
    },
  },
}
